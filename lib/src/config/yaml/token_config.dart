import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/config/yaml/token_extension_type_config.dart';
import 'package:yaml/yaml.dart';

class TokenConfig {
  String name;
  ModuleTypeConfig type;
  String path;
  String className;
  TokenExtensionTypeConfig classType;

  TokenConfig({
    required this.name,
    required this.className,
    required this.path,
    required this.type,
    required this.classType,
  });

  factory TokenConfig.fromYaml(YamlMap map) {
    return TokenConfig(
      name: map['name'],
      className: map['class_name'],
      path: map['path'],
      type: map['type'],
      classType: map['class_type'],
    );
  }
}
