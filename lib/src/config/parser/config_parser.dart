import 'dart:io';

import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/config/parser/config_validator.dart';
import 'package:genuis/src/config/token_config.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/config/defaults.dart';
import 'package:yaml/yaml.dart';

abstract class ConfigParser {
  static Config getConfig(File file) {
    final content = file.readAsStringSync();
    final map = loadYaml(content) as YamlMap;
    return _configFromYaml(map);
  }

  static Config _configFromYaml(YamlMap map) {
    final assetsPath = _get<String>(map, 'assets_path') ?? Defaults.assetsPath;
    final outputPath = _get<String>(map, 'output_path') ?? Defaults.outputPath;
    final themes = _getList<String>(map, 'themes') ?? Defaults.themes;
    final defaultTheme = _get<bool>(map, 'default_theme') ?? Defaults.defaultTheme;
    final classType = _getType(map, 'class_type', GenuisClassType.tryParse) ?? Defaults.classType;
    final fromJsonMethod = _get<bool>(map, 'from_json_method') ?? Defaults.fromJsonMethod;
    final dartLineLength = _get<int>(map, 'dart_line_length') ?? Defaults.dartLineLength;
    final className = _get<String>(map, 'class_name') ?? Defaults.mainClassName;
    final valueName = _get<String>(map, 'value_name') ?? Defaults.mainGetterName;
    final baseTheme = _get<String>(map, 'base_theme') ?? Defaults.baseTheme;

    final tokens = _getList<YamlMap>(map, 'tokens')?.map((e) {
          final (name, map) = _getEntry(e);

          final path = _get<String>(map, 'path') ?? Defaults.tokenPathFrom(name);
          final type = _getType(map, 'type', ElementType.tryParse) ?? Defaults.tokenType;
          final classType =
              _getType(map, 'class_type', TokenClassType.tryParse) ?? Defaults.tokenClassType;
          final className = _get<String>(map, 'class_name') ?? Defaults.tokenClassName(name);
          final valueName = _get<String>(map, 'value_name') ?? Defaults.tokenValueName;

          return TokenConfig(
            name: name,
            path: path,
            type: type,
            classType: classType,
            className: className,
            valueName: valueName,
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
          final tokenValueName = _get<String>(map, 'token_value_name') ?? Defaults.tokenValueName;
          final color = _get<bool>(map, 'color') ?? Defaults.moduleColor;
          final colorClassName = _get<String>(map, 'color_class_name');
          final optional = _get<bool>(map, 'optional') ?? Defaults.moduleOptional;

          return ModuleConfig(
            name: name,
            path: path,
            type: type,
            tokenClassType: tokenClassType,
            tokenClassName: tokenClassName,
            tokenValueName: tokenValueName,
            color: color,
            colorClassName: colorClassName,
            optional: optional,
          );
        }).toList() ??
        [];

    final config = Config(
      assetsPath: assetsPath,
      outputPath: outputPath,
      themes: themes,
      defaultTheme: defaultTheme,
      classType: classType,
      fromJsonMethod: fromJsonMethod,
      dartLineLength: dartLineLength,
      className: className,
      valueName: valueName,
      baseTheme: baseTheme,
      tokens: tokens,
      modules: modules,
    );

    ConfigValidator.validate(config);

    return config;
  }

  static T? _get<T>(YamlMap map, String name) {
    final value = map[name];
    if (value == null) return null;
    if (value is! T) throw Exception('$name must be a $T');
    return value;
  }

  static T? _getType<T>(YamlMap map, String name, T? Function(String value) tryParse) {
    final value = map[name];
    if (value == null) return null;
    if (value is! String) throw Exception('$name must be a String');
    final type = tryParse(value);
    if (type == null) throw Exception('Invalid type "$value"');
    return type;
  }

  static List<T>? _getList<T>(YamlMap map, String name) {
    final value = map[name];
    if (value == null) return null;
    if (value is! YamlList) throw Exception('$name must be a list of $T');
    return value.map((e) {
      if (e is! T) throw Exception('$name must be a list of $T');
      return e;
    }).toList();
  }

  static (String, YamlMap) _getEntry(YamlMap map) {
    if (map.keys.length != 1) throw Exception('Invalid config');
    final key = map.keys.first;

    final subMap = map[key];
    if (subMap is! YamlMap) throw Exception('Invalid config');

    return (key, subMap);
  }
}
