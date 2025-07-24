part of 'code_entity.dart';

class Field extends CodeEntity {
  final String valueType;
  final Map<String, Value> values;

  String enumName(String theme) {
    return [
      ...path.skip(1),
      theme != Config.it.baseTheme.asName ? theme : '',
    ].joinCamelCase.lowerFirst;
  }

  Field({
    required super.name,
    required super.path,
    required this.valueType,
    required this.values,
  });

  @override
  String toString() => '{name: $name, path: $path, value: $values}';

  List<Flag> get flags => values.values.expand((e) => e.flags).toList();
}
