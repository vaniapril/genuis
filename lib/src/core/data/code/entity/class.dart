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
}
