import 'dart:io';

import 'package:x_gens/src/core/data/model.dart';
import 'package:x_gens/src/core/data/node.dart';
import 'package:x_gens/src/utils/list_extension.dart';

class ModelsParser<N, M> {
  static const _baseTheme = 'base';

  final NodeFolder<N> folder;
  final List<String> themes;

  final M Function(N value) mapper;

  ModelsParser({
    required this.folder,
    required this.themes,
    required this.mapper,
  });

  ModelFolder<M> parse() {
    final root = parseFolder(folder);
    return ModelFolder<M>(
      name: '',
      themes: root.themes,
      models: switch (root) {
        ModelFolder<M> folder => folder.models,
        ModelItem<M> item => [item],
      },
    );
  }

  Model<M> parseFolder(NodeFolder<N> folder) {
    if (folder.folders.length == 1 &&
        folder.items.isEmpty &&
        folder.name == folder.folders.first.name) {
      return parseFolder(folder.folders.first);
    }

    if (folder.isTheme(themes)) {
      // TODO(IvanPrylepski): refactor
      final themed = parseThemedFolders(
        {
          for (final theme in themes)
            theme: NodeFolder(
              name: folder.name,
              nodes: folder.folders.firstWhere((e) => e.name == theme).nodes,
            ),
        },
      );
      return ModelFolder<M>(
        name: themed.name,
        themes: themed.themes,
        models: [
          ...themed.models,
          ...folder.folders.where((e) => !themes.contains(e.name)).map(
                (e) => parseFolder(e),
              ),
          ...folder.items.map(
            (e) => ModelItem(
              name: e.name,
              themes: [_baseTheme],
              values: {
                _baseTheme: mapper(e.value),
              },
            ),
          )
        ],
      );
    }

    if (folder.isNodeTheme(themes)) {
      // TODO(IvanPrylepski): refactor

      return ModelItem(
        name: folder.name,
        themes: [...themes],
        values: {
          for (final theme in themes)
            theme: mapper(folder.items.firstWhere((e) => e.name == theme).value),
        },
      );
    }

    final models = <Model<M>>[];

    for (final node in folder.nodes) {
      switch (node) {
        case NodeFolder<N>():
          models.add(
            parseFolder(node),
          );
        case NodeItem<N>():
          models.add(
            ModelItem(
              name: node.name,
              themes: [_baseTheme],
              values: {
                _baseTheme: mapper(node.value),
              },
            ),
          );
      }
    }

    return ModelFolder<M>(
      name: folder.name,
      themes: models.where((e) => e.themes.isEqualIgnoreOrder(themes)).firstOrNull?.themes ??
          [_baseTheme],
      models: models,
    );
  }

  ModelFolder<M> parseThemedFolders(Map<String, NodeFolder<N>> folders) {
    if (folders.isEmpty) {
      throw 'Theme Folder is empty!';
    }

    final folder = folders.values.first;

    for (final other in folders.values) {
      if (!folder.isEqual(other)) {
        throw '${folder.name} are not equal: ${folder.notEqual(other)}';
      }
    }

    if (folder.isTheme(themes)) {
      throw 'Theme Folder inside another Theme folder!';
    }

    final models = <Model<M>>[];

    for (final node in folder.nodes) {
      switch (node) {
        case NodeFolder<N>():
          models.add(parseThemedFolders(
            folders.map(
              (key, value) => MapEntry(
                key,
                value.folders.firstWhere((e) => e.name == node.name),
              ),
            ),
          ));
        case NodeItem<N>():
          models.add(ModelItem(
            name: node.name,
            themes: themes,
            values: folders.map(
              (key, value) =>
                  MapEntry(key, mapper(value.items.firstWhere((e) => e.name == node.name).value)),
            ),
          ));
      }
    }

    return ModelFolder<M>(
      name: folder.name,
      themes: themes,
      models: models,
    );
  }
}
