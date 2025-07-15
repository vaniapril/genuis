import 'dart:io';

import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/config/parser/config_validator.dart';
import 'package:genuis/src/config/token_config.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/config/defaults.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:yaml/yaml.dart';

abstract class ConfigParser {
  static Config getConfig(File file) {
    final content = file.readAsStringSync();
    final map = loadYaml(content) as YamlMap;
    return _configFromYaml(map);
  }

  static Config _configFromYaml(YamlMap map) {
    final assetsPath = _get<String>(map, 'assets_path')?.asFolderPath ?? Defaults.assetsPath;
    final outputPath = _get<String>(map, 'output_path')?.asFolderPath ?? Defaults.outputPath;
    final themes = _getList<String>(map, 'themes') ?? Defaults.themes;
    final classType = _getType(map, 'class_type', GenuisClassType.tryParse) ?? Defaults.classType;
    final fromJsonMethod = _get<bool>(map, 'from_json_method') ?? Defaults.fromJsonMethod;
    final dartLineLength = _get<int>(map, 'dart_line_length') ?? Defaults.dartLineLength;
    final className = _get<String>(map, 'class_name') ?? Defaults.className;
    final fieldName = _get<String>(map, 'field_name') ?? Defaults.fieldName;
    final baseTheme = _get<String>(map, 'base_theme') ?? Defaults.baseTheme;

    final tokens = _getList<YamlMap>(map, 'tokens')?.map((e) {
          final (name, map) = _getEntry(e);

          final path = _get<String>(map, 'path') ?? Defaults.tokenPathFrom(name);
          final type = _getType(map, 'type', ElementType.tryParse) ?? Defaults.tokenType;
          final classType =
              _getType(map, 'class_type', TokenClassType.tryParse) ?? Defaults.tokenClassType;
          final className = _get<String>(map, 'class_name') ?? Defaults.tokenClassName(name);
          final fieldName = _get<String>(map, 'field_name') ?? Defaults.tokenFieldName;

          return TokenConfig(
            name: name.snakeCase,
            path: path,
            type: type,
            classType: classType,
            className: className,
            fieldName: fieldName,
          );
        }).toList() ??
        [];

    final modules = _getList<YamlMap>(map, 'modules')?.map((e) {
          final (name, map) = _getEntry(e);

          final path = _get<String>(map, 'path') ?? Defaults.modulePathFrom(name);
          final type = _getType(map, 'type', ElementType.tryParse) ?? Defaults.moduleType;
          final tokenClassType = _getType(map, 'token_class_type', TokenClassType.tryParse);
          final tokenClassName =
              _get<String>(map, 'token_class_name') ?? Defaults.moduleTokenClassName(name);
          final tokenFieldName = _get<String>(map, 'token_field_name') ?? Defaults.tokenFieldName;
          final color = _get<bool>(map, 'color') ?? Defaults.moduleColor;
          final colorClassName = _get<String>(map, 'color_class_name');

          return ModuleConfig(
            name: name.snakeCase,
            path: path,
            type: type,
            tokenClassType: tokenClassType,
            tokenClassName: tokenClassName,
            tokenFieldName: tokenFieldName,
            color: color,
            colorClassName: colorClassName,
          );
        }).toList() ??
        [];

    final config = Config(
      assetsPath: assetsPath,
      outputPath: outputPath,
      themes: themes,
      classType: classType,
      fromJsonMethod: fromJsonMethod,
      dartLineLength: dartLineLength,
      className: className,
      fieldName: fieldName,
      baseTheme: baseTheme,
      tokens: tokens,
      modules: modules,
    );

    ConfigValidator(config).validate();

    return config;
  }

  static T? _get<T>(YamlMap map, String name) {
    final value = map[name];
    if (value == null) return null;
    if (value is! T) throw ConfigValueTypeException(value, name, '$T');
    return value;
  }

  static T? _getType<T>(YamlMap map, String name, T? Function(String value) tryParse) {
    final value = map[name];
    if (value == null) return null;
    if (value is! String) throw ConfigValueTypeException(value, name, 'String');
    final type = tryParse(value);
    if (type == null) throw ConfigParseValueException(value, name);
    return type;
  }

  static List<T>? _getList<T>(YamlMap map, String name) {
    final value = map[name];
    if (value == null) return null;
    if (value is! YamlList) throw ConfigValueTypeException(value, name, 'List of $T');
    return value.map((e) {
      if (e is! T) throw ConfigValueTypeException(value, name, 'List of $T');
      return e;
    }).toList();
  }

  static (String, YamlMap) _getEntry(YamlMap map) {
    if (map.keys.length != 1) throw const ConfigInvalidStructureException();
    final key = map.keys.first;

    final subMap = map[key];

    if (subMap == null) return (key, YamlMap());
    if (subMap is! YamlMap) throw const ConfigInvalidStructureException();

    return (key, subMap);
  }
}
