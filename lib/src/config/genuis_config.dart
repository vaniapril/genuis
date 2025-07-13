import 'dart:io';
import 'package:genuis/src/config/config_parser.dart';
import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/config/token_config.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/utils/defaults.dart';
import 'package:yaml/yaml.dart';

class GenuisConfig {
  String assetsPath;
  String outputPath;
  List<String> themes;
  String baseTheme;
  bool defaultTheme;
  GenuisClassType classType;
  bool fromJsonMethod;
  int dartLineLength;
  String className;
  String valueName;

  List<TokenConfig> tokens;
  List<ModuleConfig> modules;

  GenuisConfig({
    required this.assetsPath,
    required this.outputPath,
    required this.themes,
    required this.defaultTheme,
    required this.classType,
    required this.fromJsonMethod,
    required this.dartLineLength,
    required this.baseTheme,
    required this.className,
    required this.valueName,
    required this.tokens,
    required this.modules,
  });

  factory GenuisConfig.fromYamlFile(File file) {
    final content = file.readAsStringSync();
    final map = loadYaml(content) as YamlMap;
    return GenuisConfig.fromYaml(map);
  }

  factory GenuisConfig.fromYaml(YamlMap map) {
    return GenuisConfig(
      assetsPath: ConfigParser.get(map, 'assets_path', Defaults.configAssetsPath),
      outputPath: ConfigParser.get(map, 'output_path', Defaults.configOutputPath),
      themes: ConfigParser.getList(map, 'themes', Defaults.configThemes),
      defaultTheme: ConfigParser.get(map, 'default_theme', Defaults.configDefaultTheme),
      classType: ConfigParser.getType(
          map, 'class_type', GenuisClassType.tryParse, Defaults.configClassType),
      fromJsonMethod: ConfigParser.get(map, 'from_json_method', Defaults.configFromJsonMethod),
      dartLineLength: ConfigParser.get(map, 'dart_line_length', Defaults.configDartLineLength),
      className: ConfigParser.get(map, 'class_name', Defaults.configMainClassName),
      valueName: ConfigParser.get(map, 'value_name', Defaults.configMainGetterName),
      baseTheme: ConfigParser.get(map, 'base_theme', Defaults.configBaseTheme),
      tokens: _tokens(map['tokens']),
      modules: _modules(map['modules']),
    );
  }

  static List<TokenConfig> _tokens(dynamic value) {
    if (value == null) return [];
    if (value is! YamlList) throw Exception('tokens must be a list');
    return value.map((e) {
      if (e is! YamlMap) throw Exception('tokens must be a list of maps');
      return TokenConfig.fromYaml(e);
    }).toList();
  }

  static List<ModuleConfig> _modules(dynamic value) {
    if (value == null) return [];
    if (value is! YamlList) throw Exception('modules must be a list');
    return value.map((e) {
      if (e is! YamlMap) throw Exception('modules must be a list of maps');
      return ModuleConfig.fromYaml(e);
    }).toList();
  }
}
