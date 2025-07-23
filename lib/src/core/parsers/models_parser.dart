import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/models/code/values/double_value.dart';
import 'package:genuis/src/core/models/nodes/node.dart';
import 'package:genuis/src/core/models/code/value.dart';
import 'package:genuis/src/utils/list_extension.dart';
import 'package:genuis/src/utils/num_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ModelsParser {
  final Folder root;

  final Value Function(String value) mapper;

  ModelsParser({
    required this.root,
    required this.mapper,
  });

  Class parse() {
    final entities = parseFolder([], root);

    if (entities.length == 1 && entities.first is Class) {
      return entities.first as Class;
    }

    return Class.from(
      name: root.name.asName,
      path: [root.name.asName],
      classes: entities.whereType<Class>().toList(),
      fields: entities.whereType<Field>().toList(),
    );
  }

  List<CodeEntity> parseFolder(List<String> path, Folder folder) {
    final folders = folder.nodes.whereType<Folder>().toList();
    final items = folder.nodes.whereType<Item>().toList();

    final foldersEntities = folders.expand((e) => parseFolder([...path, folder.name.asName], e)).toList();

    final List<Map<String, Value>> values = [];

    for (final item in items) {
      final value = mapper(item.value);
      final theme = item.theme ?? Config.it.baseTheme;

      final map = values.firstWhereOrNull((e) => !e.containsKey(theme));

      if (map == null) {
        values.add({theme: value});
      } else {
        map[theme] = value;
      }
    }

    final wrapWithClass = values.length > 1 || foldersEntities.isNotEmpty;

    final fieldsEntities = values.map(
      (e) {
        if (wrapWithClass) {
          final name = _toName(e.values.first, identical(folder, root)? folder.name.asName: '');

          return Field(
            name: name,
            path: [...path, folder.name.asName, name],
            valueType: e.values.first.type,
            values: e,
          );
        } else {
          return Field(
            name: folder.name.asName,
            path: [...path, folder.name.asName],
            valueType: e.values.first.type,
            values: e,
          );
        }
      },
    ).toList();

    if (!wrapWithClass) {
      return fieldsEntities;
    }

    final entities = [...foldersEntities, ...fieldsEntities];

    return [
      Class.from(
        name: folder.name.asName,
        path: [...path, folder.name.asName],
        classes: entities.whereType<Class>().toList(),
        fields: entities.whereType<Field>().toList(),
      ),
    ];
  }

  String _toName(Value value, [String optionalPrefix = '']) {
    if (value is DoubleValue) {
      if (value.value.isInt) {
        return optionalPrefix + value.value.toStringAsFixed(0);
      } else {
        return optionalPrefix + value.value.toString().snakeCase;
      }
    } else {
      return value.toString().asName;
    }
  }
}
