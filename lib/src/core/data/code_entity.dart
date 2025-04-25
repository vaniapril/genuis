import 'package:genuis/src/core/data/value.dart';
import 'package:genuis/src/utils/string_extension.dart';

sealed class CodeEntity {
  final String name;
  final List<String> path;
  final String type;

  String value(String theme) {
    final node = this;
    return switch (node) {
      Field() => node.values[theme]?.code ?? node.values['base']?.code ?? 'null',
      Class() => '${node.type}.${node.themes.contains(theme) ? theme : 'base'}',
    };
  }

  const CodeEntity({
    required this.name,
    required this.type,
    required this.path,
  });
}

class Field extends CodeEntity {
  final Map<String, Value> values;

  String enumName(String theme) {
    return '${path.skip(1).map((e) => e.upperFirst).join()}${name.upperFirst}${theme != 'base' ? theme.upperFirst : ''}'
        .lowerFirst;
  }

  Field({
    required super.name,
    required super.path,
    required super.type,
    required this.values,
  });

  @override
  String toString() => '{name: $name, path: $path, value: $values}';
}

class Class extends CodeEntity {
  final List<Class> classes;
  final List<Field> fields;
  final List<String> themes;

  Class({
    required super.name,
    required super.path,
    required super.type,
    required this.themes,
    required this.classes,
    required this.fields,
  });

  List<CodeEntity> get nodes => [...classes, ...fields];

  @override
  String toString() => '{name: $name, path: $path, folders: $classes, items: $fields}';
}
