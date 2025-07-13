import 'package:genuis/src/config/config_parser.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/utils/defaults.dart';
import 'package:yaml/yaml.dart';

class ModuleConfig {
  final String name;
  final String path;
  final ElementType type;
  final TokenClassType? tokenClassType;
  final String tokenClassName;
  final String tokenValueName;
  final bool color;
  final String? colorClassName;
  final bool optional;

  ModuleConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.tokenClassType,
    required this.tokenClassName,
    required this.tokenValueName,
    required this.color,
    required this.colorClassName,
    required this.optional,
  });

  factory ModuleConfig.fromYaml(YamlMap map) {
    if (map.keys.length != 1) throw Exception('Invalid module config');
    final name = map.keys.first;

    final config = map[name];
    if (config is! YamlMap) throw Exception('Invalid module config');

    return ModuleConfig(
      name: name,
      path: ConfigParser.get(config, 'path'),
      type: ConfigParser.getType(config, 'type', ElementType.tryParse),
      tokenClassType:
          ConfigParser.getTypeOptional(config, 'token_class_type', TokenClassType.tryParse),
      tokenClassName: ConfigParser.get(config, 'token_class_name', ''),
      tokenValueName: ConfigParser.get(config, 'token_value_name', Defaults.configTokenValueName),
      color: ConfigParser.get(config, 'color', Defaults.configModuleColor),
      colorClassName: ConfigParser.getOptional(config, 'color_class_name'),
      optional: ConfigParser.get(config, 'optional', Defaults.configModuleOptional),
    );
  }
}
