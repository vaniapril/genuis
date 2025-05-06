import 'package:genuis/src/core/data/code/code_entity.dart';
import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/core/data/value/value.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ModelsParser {
  static const _baseTheme = 'base';
  static const _themes = ['light', 'dark'];

  final Folder root;
  final String prefix;

  final Value Function(String value, {String? theme}) mapper;

  ModelsParser({
    required this.root,
    required this.mapper,
    required this.prefix,
  });

  Class parse() {
    final entity = parseFolder([], root);

    final rootClass =
        entity is Class ? entity : throw 'Unexpected entity type: ${entity.runtimeType}';

    return mergeClasses([rootClass]);
  }

  CodeEntity parseFolder(List<String> path, Folder folder, {String? theme}) {
    List<CodeEntity> entities = [];
    final Map<String, Value> values = {};

    for (final element in folder.nodes) {
      if (_themes.contains(element.name)) {
        if (theme != null) {
          throw 'Multiple themes in folder: ${path.join(', ')}';
        }

        if (element is Folder) {
          entities.addAll(
            element.folders.map(
              (e) => parseFolder(
                [...path, folder.name],
                e,
                theme: element.name,
              ),
            ),
          );
          entities.addAll(
            element.items.map(
              (e) {
                final value = mapper(e.value, theme: element.name);
                // TODO(IvanPrylepski): refactor
                return Field(
                  name: e.name,
                  path: [...path, folder.name],
                  type: value.type,
                  values: {element.name: value},
                );
              },
            ),
          );
        }
        if (element is Item) {
          values[element.name] = mapper(element.value, theme: element.name);
        }
      } else {
        if (element is Folder) {
          entities.add(
            parseFolder(
              [...path, folder.name],
              element,
              theme: theme,
            ),
          );
        }
        if (element is Item) {
          final value = mapper(element.value, theme: theme ?? _baseTheme);
          entities.add(
            Field(
              name: element.name,
              path: [...path, folder.name],
              type: value.type,
              values: {theme ?? _baseTheme: value},
            ),
          );
        }
      }
    }

    if (values.isNotEmpty) {
      return Field(
        name: folder.name,
        path: [...path, folder.name],
        type: values.values.first.type,
        values: values,
      );
    }

    final Set<String> themes = {};

    for (final e in entities) {
      if (e is Class) {
        themes.addAll(e.themes);
      }
      if (e is Field) {
        themes.addAll(e.values.keys);
      }
    }

    themes.remove(_baseTheme);

    return Class(
      name: folder.name,
      path: path,
      classes: entities.whereType<Class>().toList(),
      fields: entities.whereType<Field>().toList(),
      themes: themes.isEmpty ? [_baseTheme] : themes.toList(),
      type: [prefix, ...path, folder.name].join('_').camelCase.upperFirst,
    );
  }

  Class mergeClasses(List<Class> entities) {
    final Map<String, List<Class>> classesMap = {};
    final Map<String, List<Field>> fieldsMap = {};

    for (final entity in entities) {
      for (final e in entity.classes) {
        classesMap[e.name] ??= [];
        classesMap[e.name]?.add(e);
      }

      for (final e in entity.fields) {
        fieldsMap[e.name] ??= [];
        fieldsMap[e.name]?.add(e);
      }
    }

    final classes = classesMap.values.map((e) => mergeClasses(e)).toList();
    final fields = fieldsMap.values.map((e) => mergeFields(e)).toList();

    final Set<String> themes = {
      for (final e in classes) ...e.themes,
      for (final e in fields) ...e.values.keys,
    };

    themes.remove(_baseTheme);

    return Class(
      name: entities.first.name,
      path: entities.first.path,
      classes: classes,
      fields: fields,
      themes: themes.isEmpty ? [_baseTheme] : themes.toList(),
      type: entities.first.type,
    );
  }

  Field mergeFields(List<Field> entities) {
    final Map<String, Value> map = {
      for (final entity in entities) ...entity.values,
    };

    return Field(
      name: entities.first.name,
      path: entities.first.path,
      type: entities.first.type,
      values: map,
    );
  }
}
