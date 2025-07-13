import 'package:genuis/src/config/config_parser.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/utils/defaults.dart';
import 'package:yaml/yaml.dart';

class TokenConfig {
  String name;
  String path;
  ElementType type;
  TokenClassType classType;
  String className;
  String valueName;

  TokenConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.classType,
    required this.className,
    required this.valueName,
  });

  factory TokenConfig.fromYaml(YamlMap map) {
    if (map.keys.length != 1) throw Exception('Invalid module config');
    final name = map.keys.first;

    final config = map[name];
    if (config is! YamlMap) throw Exception('Invalid module config');

    return TokenConfig(
      name: name,
      path: ConfigParser.get(config, 'path'),
      type: ConfigParser.getType(config, 'type', ElementType.tryParse),
      classType: ConfigParser.getType(
          config, 'class_type', TokenClassType.tryParse, Defaults.configTokenClassType),
      className: ConfigParser.get(config, 'class_name'),
      valueName: ConfigParser.get(config, 'value_name', Defaults.configTokenValueName),
    );
  }
}
