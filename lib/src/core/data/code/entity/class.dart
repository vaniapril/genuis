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
    final classes = this.classes.map((e) => e.map(mapper)).toList();
    final fields = this.fields.map((e) => mapper(e)).toList();

    final Set<String> themes = {
      for (final e in classes) ...e.themes,
      for (final e in fields) ...e.values.keys,
    };

    //todo refactor base
    themes.remove('base');

    return Class(
      name: name,
      path: path,
      classType: classType,
      themes: themes.isEmpty ? ['base'] : themes.toList(),
      classes: classes,
      fields: fields,
    );
  }

  void forEach(void Function(Field value) action) {
    for (var e in classes) {
      e.forEach(action);
    }
    fields.forEach(action);
  }
}
