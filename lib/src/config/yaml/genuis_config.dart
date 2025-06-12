import 'dart:io';

import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/config/yaml/token_config.dart';
import 'package:yaml/yaml.dart';

class GenuisConfig {
  String assets;
  String output;
  List<String> themes;

  bool defaultTheme;
  bool themeExtensions;
  bool fromToJson;
  int lineLength;
  String className;
  String ui;
  String separator;
  String prefix;
  String baseTheme;

  List<TokenConfig> tokens;
  List<ModuleConfig> modules;

  GenuisConfig({
    required this.assets,
    required this.output,
    required this.themes,
    required this.defaultTheme,
    required this.themeExtensions,
    required this.fromToJson,
    required this.lineLength,
    required this.separator,
    required this.prefix,
    required this.baseTheme,
    required this.className,
    required this.ui,
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
      assets: map['assets'],
      output: map['output'],
      themes: map['themes'],
      defaultTheme: map['default_theme'],
      themeExtensions: map['theme_extensions'],
      fromToJson: map['from_to_json'],
      lineLength: map['line_length'],
      className: map['class_name'],
      ui: map['ui'],
      separator: map['separator'],
      prefix: map['prefix'],
      baseTheme: map['base_theme'],
      tokens: map['tokens'].map((e) => TokenConfig.fromYaml(e)).toList(),
      modules: map['tokens'].map((e) => ModuleConfig.fromYaml(e)).toList(),
    );
  }
}
