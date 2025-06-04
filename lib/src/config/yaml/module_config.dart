import 'package:genuis/src/config/yaml/extension_config.dart';
import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:yaml/yaml.dart';

class ModuleConfig {
  String name;
  String path;
  ModuleTypeConfig type;
  List<ExtensionConfig> extensions;

  ModuleConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.extensions,
  });

  factory ModuleConfig.fromYaml(YamlMap map) {
    return ModuleConfig(
      name: map['name'],
      path: map['path'],
      type: map['type'],
      extensions: map['extensions'],
    );
  }
}
