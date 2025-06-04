import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:yaml/yaml.dart';

class TokenConfig {
  String name;
  String path;
  ModuleTypeConfig type;
  bool useEnum;

  TokenConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.useEnum,
  });

  factory TokenConfig.fromYaml(YamlMap map) {
    return TokenConfig(
      name: map['name'],
      path: map['path'],
      type: map['type'],
      useEnum: map['use_enum'],
    );
  }
}
