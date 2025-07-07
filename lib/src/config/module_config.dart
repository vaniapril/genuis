import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/utils/defaults.dart';
import 'package:yaml/yaml.dart';

class ModuleConfig {
  final String name;
  final String path;
  final ElementType type;
  final TokenClassType? tokenExtensionClassType;
  final String tokenExtensionClassName;
  final bool colorExtension;
  final String? colorExtensionClassName;
  final bool optional;

  ModuleConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.tokenExtensionClassType,
    required this.tokenExtensionClassName,
    required this.colorExtension,
    required this.colorExtensionClassName,
    required this.optional,
  });

  factory ModuleConfig.fromYaml(YamlMap map) {
    if (map.keys.length != 1) throw Exception('Invalid module config');
    final name = map.keys.first;

    final config = map[name];
    if (config is! YamlMap) throw Exception('Invalid module config');

    return ModuleConfig(
      name: name,
      path: _path(config['path']),
      type: _type(config['type']),
      tokenExtensionClassType: _tokenExtensionClassType(config['token_extension_class_type']),
      tokenExtensionClassName: _tokenExtensionClassName(config['token_extension_class_name']),
      colorExtension: _colorExtension(config['color_extension']),
      colorExtensionClassName: _colorExtensionClassName(config['color_extension_class_name']),
      optional: _optional(config['optional']),
    );
  }

  static String _path(dynamic value) {
    if (value == null) throw Exception('You must specify "path"');
    if (value is! String) throw Exception('path must be a list');
    return value;
  }

  static ElementType _type(dynamic value) {
    if (value == null) throw Exception('You must specify "type"');
    if (value is! String) throw Exception('type must be a String');
    final type = ElementType.tryParse(value);
    if (type == null) throw Exception('Invalid type "$value"');
    return type;
  }

  static TokenClassType? _tokenExtensionClassType(dynamic value) {
    if (value == null) return null;
    if (value is! String) throw Exception('token_extension_class_type must be a String');
    final type = TokenClassType.tryParse(value);
    if (type == null) throw Exception('Invalid token_extension_class_type "$type"');
    return type;
  }

  static String _tokenExtensionClassName(dynamic value) {
    if (value == null) return '';
    if (value is! String) throw Exception('token_extension_class_name must be a String');
    return value;
  }

  static bool _colorExtension(dynamic value) {
    if (value == null) return Defaults.configModuleColorExtension;
    if (value is! bool) throw Exception('color_extension must be a bool');
    return value;
  }

  static String? _colorExtensionClassName(dynamic value) {
    if (value == null) return null;
    if (value is! String) throw Exception('color_extension_class_name must be a String');
    return value;
  }

  static bool _optional(dynamic value) {
    if (value == null) return Defaults.configModuleOptional;
    if (value is! bool) throw Exception('optional must be a bool');
    return value;
  }
}
