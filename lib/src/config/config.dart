import 'dart:io';

import 'package:yaml/yaml.dart';

class Config {
  String assets;
  String output;
  List<String> themes;

  bool defaultTheme;
  bool themeExtensions;
  bool fromToJson;
  int lineLength;
  String className;
  String separator;

  List<Token> tokens;
  List<Module> modules;

  Config({
    required this.assets,
    required this.output,
    required this.themes,
    required this.defaultTheme,
    required this.themeExtensions,
    required this.fromToJson,
    required this.lineLength,
    required this.separator,
    required this.className,
    required this.tokens,
    required this.modules,
  });

  factory Config.fromYamlFile(File file) {
    final content = file.readAsStringSync();
    final map = loadYaml(content) as YamlMap;

    return Config.fromYaml(map);
  }

  factory Config.fromYaml(YamlMap map) {
    return Config(
      assets: map['assets'],
      output: map['output'],
      themes: map['themes'],
      defaultTheme: map['default_theme'],
      themeExtensions: map['theme_extensions'],
      fromToJson: map['from_to_json'],
      lineLength: map['line_length'],
      className: map['class_name'],
      separator: map['separator'],
      tokens: map['tokens'].map((e) => Token.fromYaml(e)).toList(),
      modules: map['tokens'].map((e) => Module.fromYaml(e)).toList(),
    );
  }
}

class Token {
  String name;
  String path;
  UIType type;
  bool useEnum;

  Token({
    required this.name,
    required this.path,
    required this.type,
    required this.useEnum,
  });

  factory Token.fromYaml(YamlMap map) {
    return Token(
      name: map['name'],
      path: map['path'],
      type: map['type'],
      useEnum: map['use_enum'],
    );
  }
}

class Module {
  String name;
  String path;
  UIType type;
  List<Extension> extensions;

  Module({
    required this.name,
    required this.path,
    required this.type,
    required this.extensions,
  });

  factory Module.fromYaml(YamlMap map) {
    return Module(
      name: map['name'],
      path: map['path'],
      type: map['type'],
      extensions: map['extensions'],
    );
  }
}

enum UIType {
  blur,
  color,
  font,
  asset,
  shadow;

  static UIType from(String value) {
    return switch (value) {
      'blur' => UIType.blur,
      'color' => UIType.color,
      'font' => UIType.font,
      'asset' => UIType.asset,
      'shadow' => UIType.shadow,
      _ => throw 'Unexpected type',
    };
  }
}

enum Extension {
  colors,
  enums;

  static Extension from(String value) {
    return switch (value) {
      'colors' => Extension.colors,
      'enums' => Extension.enums,
      _ => throw 'Unexpected extension',
    };
  }
}
