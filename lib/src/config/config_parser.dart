import 'package:yaml/yaml.dart';

abstract class ConfigParser {
  static T get<T>(YamlMap map, String name, [T? defaultValue]) {
    final value = map[name];
    if (value == null) {
      if (defaultValue == null) {
        throw Exception('$name must be specified');
      } else {
        return defaultValue;
      }
    }
    if (value is! T) throw Exception('$name must be a $T');
    return value;
  }

  static T? getOptional<T>(YamlMap map, String name) {
    final value = map[name];
    if (value == null) return null;
    if (value is! T) throw Exception('$name must be a $T');
    return value;
  }

  static T getType<T>(YamlMap map, String name, T? Function(String value) tryParse, [T? defaultValue]) {
    final value = map[name];
    if (value == null) {
      if (defaultValue == null) {
        throw Exception('$name must be specified');
      } else {
        return defaultValue;
      }
    }
    if (value is! String) throw Exception('$name must be a String');
    final type = tryParse(value);
    if (type == null) throw Exception('Invalid type "$value"');
    return type;
  }

  static T? getTypeOptional<T>(YamlMap map, String name, T? Function(String value) tryParse) {
    final value = map[name];
    if (value == null) return null;
    if (value is! String) throw Exception('$name must be a String');
    final type = tryParse(value);
    if (type == null) throw Exception('Invalid type "$value"');
    return type;
  }

  static List<T> getList<T>(YamlMap map, String name, [List<T>? defaultValue]) {
    final value = map[name];
    if (value == null) {
      if (defaultValue == null) {
        throw Exception('$name must be specified');
      } else {
        return defaultValue;
      }
    }
    if (value is! YamlList) throw Exception('$name must be a list of $T');

    return value.map((e) {
      if (e is! T) throw Exception('$name must be a list of $T');
      return e;
    }).toList();
  }
}
