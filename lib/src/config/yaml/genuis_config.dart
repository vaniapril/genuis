import 'dart:io';

import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/config/yaml/token_config.dart';
import 'package:yaml/yaml.dart';

class GenuisConfig {
  String assetsPath;
  String outputPath;
  List<String> themes;
  String baseTheme;
  bool defaultTheme;
  bool themeExtensions;
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
    required this.themeExtensions,
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
      assetsPath: map['assets_path'],
      outputPath: map['output_path'],
      themes: map['themes'],
      defaultTheme: map['default_theme'],
      themeExtensions: map['theme_extensions'],
      fromJsonMethod: map['from_json_method'],
      dartLineLength: map['dart_line_length'],
      mainClassName: map['main_class_name'],
      mainGetterName: map['main_getter_name'],
      baseTheme: map['base_theme'],
      tokens: map['tokens'].map((e) => TokenConfig.fromYaml(e)).toList(),
      modules: map['tokens'].map((e) => ModuleConfig.fromYaml(e)).toList(),
    );
  }
}
