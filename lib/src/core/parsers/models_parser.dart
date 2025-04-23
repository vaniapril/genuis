import 'dart:io';

import 'package:genuis/src/core/data/sequence.dart';
import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/core/data/value.dart';
import 'package:genuis/src/utils/list_extension.dart';

class ModelsParser {
  static const _baseTheme = 'base';

  final List<Sequence> sequences;
  final List<String> themes;

  final Value Function(String value) mapper;

  ModelsParser({
    required this.sequences,
    required this.themes,
    required this.mapper,
  });

  Folder parse() {
    final root = Folder(
      name: 'UI',
      path: [],
    );

    for (final sequence in sequences) {
      _addSequences(root, sequence);
    }

    updateThemes(root);

    return root;
  }

  bool updateThemes(Folder folder) {
    bool hasTheme = false;

    for (final e in folder.folders) {
      if (updateThemes(e)) {
        hasTheme = true;
      }
    }

    for (final e in folder.items) {
      if (e.values.keys.toList().isEqualIgnoreOrder(themes)) {
        hasTheme = true;
      }
    }

    folder.themes = hasTheme ? themes : [_baseTheme];

    return hasTheme;
  }

  void _addSequences(Folder root, Sequence sequence) {
    List<String> path = [];
    String? theme;
    String? name;

    for (final element in sequence.sequence) {
      if (themes.contains(element)) {
        if (theme != null) {
          throw 'Multiple themes in sequence: ${sequence.sequence.join(', ')}';
        }
        theme = element;
      } else {
        if (name != null) {
          path.add(name);
        }
        name = element;
      }
    }

    Folder folder = root;

    for (final name in path) {
      Folder? subFolder = folder.folders.firstWhereOrNull((e) => e.name == name);
      if (subFolder == null) {
        subFolder = Folder(
          name: name,
          path: [...folder.path, folder.name],
        );
        folder.folders.add(subFolder);
      }
      folder = subFolder;
    }

    Item? item = folder.items.firstWhereOrNull((e) => e.name == name);
    if (item == null) {
      item = Item(
        name: name!,
        path: [...folder.path, folder.name],
      );
      folder.items.add(item);
    }

    item.values[theme ?? _baseTheme] = mapper(sequence.value);
  }
}
