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

  factory Class.from({
    required String name,
    required List<String> path,
    required List<Class> classes,
    required List<Field> fields,
  }) {
    final Set<String> themes = {
      for (final e in classes) ...e.themes,
      for (final e in fields) ...e.values.keys,
    }..remove(Config.it.baseTheme);

    return Class(
      name: name,
      path: path,
      classType: [
        Config.it.className,
        ...path,
        Config.it.postfix,
      ].joinCamelCase,
      themes: themes.isEmpty ? [Config.it.baseTheme] : themes.toList(),
      classes: classes,
      fields: fields,
    );
  }

  List<CodeEntity> get nodes => [...classes, ...fields];

  @override
  String toString() =>
      '{name: $name, path: $path${classes.isNotEmpty ? ', classes: $classes' : ''}${fields.isNotEmpty ? ', fields: $fields}' : ''}';

  Class map(Field Function(Field value) mapper) {
    final classes = this.classes.map((e) => e.map(mapper)).toList();
    final fields = this.fields.map((e) => mapper(e)).toList();

    return Class.from(
      name: name,
      path: path,
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

  List<Field> get flattenFields => [
    ...classes.expand((e) => e.flattenFields),
    ...fields,
  ];
}
