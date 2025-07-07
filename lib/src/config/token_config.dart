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
      path: _path(config['path']),
      type: _type(config['type']),
      classType: _classType(config['class_type']),
      className: _className(config['class_name']),
      valueName: _valueName(config['value_name']),
    );
  }

  static String _path(dynamic value) {
    if (value == null) throw Exception('You must specify "path"');
    if (value is! String) throw Exception('path must be a list');
    return value;
  }

  static ElementType _type(dynamic value) {
    if (value == null) throw Exception('You must specify "type');
    if (value is! String) throw Exception('type must be a String');
    final type = ElementType.tryParse(value);
    if (type == null) throw Exception('Invalid type "$type"');
    return type;
  }

  static TokenClassType _classType(dynamic value) {
    if (value == null) return Defaults.configTokenClassType;
    if (value is! String) throw Exception('type must be a String');
    final type = TokenClassType.tryParse(value);
    if (type == null) throw Exception('Invalid type "$value"');
    return type;
  }

  static String _className(dynamic value) {
    if (value == null) throw Exception('You must specify "class_name"');
    if (value is! String) throw Exception('class_name must be a String');
    return value;
  }

  static String _valueName(dynamic value) {
    if (value == null) return Defaults.configTokenValueName;
    if (value is! String) throw Exception('value_name must be a String');
    return value;
  }
}
