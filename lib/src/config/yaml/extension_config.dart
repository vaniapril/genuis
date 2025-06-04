import 'package:yaml/yaml.dart';

sealed class ExtensionConfig {
  static ExtensionConfig from(YamlMap map) {
    return switch (map['name']) {
      'colors' => ColorsExtensionConfig(),
      'enums' => EnumsExtensionConfig(name: map['type']),
      _ => throw 'Unexpected extension',
    };
  }
}

class ColorsExtensionConfig extends ExtensionConfig {}

class EnumsExtensionConfig extends ExtensionConfig {
  final String name;

  EnumsExtensionConfig({
    required this.name,
  });
}
