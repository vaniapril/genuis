import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:yaml/yaml.dart';

class TokenConfig {
  String name;
  String classType;
  String path;
  ModuleTypeConfig type;
  bool useEnum;

  TokenConfig({
    required this.name,
    required this.classType,
    required this.path,
    required this.type,
    required this.useEnum,
  });

  factory TokenConfig.fromYaml(YamlMap map) {
    return TokenConfig(
      name: map['name'],
      classType: map['class_type'],
      path: map['path'],
      type: map['type'],
      useEnum: map['use_enum'],
    );
  }
}
