import 'dart:io';
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
  String mainClassName;
  String mainGetterName;

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
    required this.mainClassName,
    required this.mainGetterName,
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
      assetsPath: _assetsPath(map['assets_path']),
      outputPath: _outputPath(map['output_path']),
      themes: _themes(map['themes']),
      defaultTheme: _defaultTheme(map['default_theme']),
      classType: _classType(map['class_type']),
      fromJsonMethod: _fromJsonMethod(map['from_json_method']),
      dartLineLength: _dartLineLength(map['dart_line_length']),
      mainClassName: _mainClassName(map['main_class_name']),
      mainGetterName: _mainGetterName(map['main_getter_name']),
      baseTheme: _baseTheme(map['base_theme']),
      tokens: _tokens(map['tokens']),
      modules: _modules(map['modules']),
    );
  }

  static String _assetsPath(dynamic value) {
    if (value == null) return Defaults.configAssetsPath;
    if (value is! String) throw Exception('assets_path must be a string');
    return value;
  }

  static String _outputPath(dynamic value) {
    if (value == null) return Defaults.configOutputPath;
    if (value is! String) throw Exception('output_path must be a string');
    return value;
  }

  static List<String> _themes(dynamic value) {
    if (value == null) return Defaults.configThemes;
    if (value is! YamlList) throw Exception('themes must be a list');
    return value.map((e) {
      if (e is! String) throw Exception('themes must be a list of strings');
      return e;
    }).toList();
  }

  static bool _defaultTheme(dynamic value) {
    if (value == null) return Defaults.configDefaultTheme;
    if (value is! bool) throw Exception('default_theme must be a bool');
    return value;
  }

  static GenuisClassType _classType(dynamic value) {
    if (value == null) return Defaults.configClassType;
    if (value is! String) throw Exception('class_type must be a String');
    final type = GenuisClassType.tryParse(value);
    if (type == null) throw Exception('Invalid type "$value"');
    return type;
  }

  static bool _fromJsonMethod(dynamic value) {
    if (value == null) return Defaults.configFromJsonMethod;
    if (value is! bool) throw Exception('from_json_method must be a bool');
    return value;
  }

  static int _dartLineLength(dynamic value) {
    if (value == null) return Defaults.configDartLineLength;
    if (value is! int) throw Exception('dart_line_length must be a int');
    return value;
  }

  static String _mainClassName(dynamic value) {
    if (value == null) return Defaults.configMainClassName;
    if (value is! String) throw Exception('main_class_name must be a string');
    return value;
  }

  static String _mainGetterName(dynamic value) {
    if (value == null) return Defaults.configMainGetterName;
    if (value is! String) throw Exception('main_getter_name must be a string');
    return value;
  }

  static String _baseTheme(dynamic value) {
    if (value == null) return Defaults.configBaseTheme;
    if (value is! String) throw Exception('base_theme must be a string');
    return value;
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
