import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ModelsParser {
  final Folder root;

  final Value Function(String value) mapper;

  ModelsParser({
    required this.root,
    required this.mapper,
  });

  Class parse() {
    final entity = parseFolder([], root);

    final rootClass = entity is Class ? entity : throw const ParserMapperException();

    return mergeClasses([rootClass]);
  }

  CodeEntity parseFolder(List<String> path, Folder folder, {String? theme}) {
    List<CodeEntity> entities = [];
    final Map<String, Value> values = {};

    for (final element in folder.nodes) {
      if (Config.it.themes.contains(element.name)) {
        if (theme != null) {
          throw ParserMultipleThemesException(path.join('-'));
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
                final value = mapper(e.value);
                return Field(
                  name: e.name,
                  path: [...path, folder.name, e.name],
                  valueType: value.type,
                  values: {element.name: value},
                );
              },
            ),
          );
        }
        if (element is Item) {
          values[element.name] = mapper(element.value);
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
          final value = mapper(element.value);
          entities.add(
            Field(
              name: element.name,
              path: [...path, folder.name, element.name],
              valueType: value.type,
              values: {theme ?? Config.it.baseTheme: value},
            ),
          );
        }
      }
    }

    if (values.isNotEmpty) {
      return Field(
        name: folder.name,
        path: [...path, folder.name],
        valueType: values.values.first.type,
        values: values,
      );
    }

    final Set<String> themes = {
      for (final e in entities)
        ...switch (e) {
          Field() => e.values.keys,
          Class() => e.themes,
        }
    }..remove(Config.it.baseTheme);

    return Class(
      name: folder.name,
      path: path,
      classes: entities.whereType<Class>().toList(),
      fields: entities.whereType<Field>().toList(),
      themes: themes.isEmpty ? [Config.it.baseTheme] : themes.toList(),
      classType: [Config.it.className, ...path, folder.name].join('_').camelCase.upperFirst,
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
    }..remove(Config.it.baseTheme);

    return Class(
      name: entities.first.name,
      path: entities.first.path,
      classes: classes,
      fields: fields,
      themes: themes.isEmpty ? [Config.it.baseTheme] : themes.toList(),
      classType: entities.first.type,
    );
  }

  Field mergeFields(List<Field> entities) {
    final Map<String, Value> map = {
      for (final entity in entities) ...entity.values,
    };

    return Field(
      name: entities.first.name,
      path: entities.first.path,
      valueType: entities.first.valueType,
      values: map,
    );
  }
}
