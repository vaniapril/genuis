part of 'code_entity.dart';

class Class extends CodeEntity {
  final String classType;
  final List<Class> classes;
  final List<Field> fields;
  final List<String> themes;

  Class({
    required super.name,
    required super.path,
    required this.classType,
    required this.themes,
    required this.classes,
    required this.fields,
  });

  List<CodeEntity> get nodes => [...classes, ...fields];

  @override
  String toString() => '{name: $name, path: $path, folders: $classes, items: $fields}';

  Class map(Field Function(Field value) mapper) {
    return Class(
      name: name,
      path: path,
      classType: classType,
      themes: themes,
      classes: classes.map((e) => e.map(mapper)).toList(),
      fields: fields.map((e) => mapper(e)).toList(),
    );
  }
}
