import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/config/yaml/token_extension_type_config.dart';
import 'package:yaml/yaml.dart';

class ModuleConfig {
  final String name;
  final ModuleTypeConfig type;
  final String path;
  final TokenExtensionTypeConfig? tokenExtension;
  final String tokenClassName;
  final bool colorExtension;
  final String? colorExtensionClassName;
  final bool optional;

  ModuleConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.tokenExtension,
    required this.tokenClassName,
    required this.colorExtension,
    required this.colorExtensionClassName,
    required this.optional,
  });

  factory ModuleConfig.fromYaml(YamlMap map) {
    return ModuleConfig(
      name: map['name'],
      path: map['path'],
      type: map['type'],
      tokenExtension: map['token_extension'],
      tokenClassName: map['token_class_name'],
      colorExtension: map['color_extension'],
      colorExtensionClassName: map['color_extension_class_name'],
      optional: map['optional'],
    );
  }
}
