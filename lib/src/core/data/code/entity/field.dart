part of 'code_entity.dart';

class Field extends CodeEntity {
  final String valueType;
  final Map<String, Value> values;

  String enumName(String theme) {
    return '${path.skip(1).map((e) => e.upperFirst).join()}${name.upperFirst}${theme != 'base' ? theme.upperFirst : ''}'
        .lowerFirst;
  }

  Field({
    required super.name,
    required super.path,
    required this.valueType,
    required this.values,
  });

  @override
  String toString() => '{name: $name, path: $path, value: $values}';
}
