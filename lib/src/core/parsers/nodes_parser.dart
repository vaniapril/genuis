import 'dart:io';

import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/models/nodes/node.dart';
import 'package:genuis/src/core/parsers/file_parsers/file_parser.dart';
import 'package:genuis/src/core/parsers/file_parsers/json_file_parser.dart';
import 'package:genuis/src/core/parsers/file_parsers/xml_file_parser.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';
import 'package:genuis/src/utils/list_extension.dart';
import 'package:genuis/src/utils/map_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:path/path.dart';

class NodesParser {
  final bool parseFiles;
  final bool parseThemes;
  final String path;

  final List<FileParser> parsers = [
    JsonFileParser(),
    XmlFileParser(),
  ];

  NodesParser({
    required this.path,
    required this.parseFiles,
    required this.parseThemes,
  });

  Folder parse() {
    final directory = Directory(path);
    final file = File(path);

    Node node = directory.existsSync()
        ? _parseDirectory(directory)
        : file.existsSync()
            ? _parseFile(file)
            : throw ParserFolderOrFileIsNotExistsException(path);

    node = splitWithSeparators(node);
    if (parseThemes) {
      node = collectThemes(node);
    }
    node = removeSpaces(node);
    node = merge(node);
    node = reduceDuplicates(node);

    return node as Folder;
  }

  Node splitWithSeparators(Node node) {
    if (node is Folder) {
      List<Node> nodes = node.nodes.map((e) => splitWithSeparators(e)).toList();

      final names = node.name.split('-').toList();

      for (final name in names.sublist(1).reversed) {
        nodes = [Folder(name: name, nodes: nodes)];
      }

      return Folder(
        name: names.first,
        nodes: nodes,
      );
    }
    return node;
  }

  Node collectThemes(Node node, {String? theme}) {
    if (node is Folder) {
      if (Config.it.themes.contains(node.name)) {
        if (theme != null) {
          //TODO: description
          throw const ParserMultipleThemesException('');
        }

        return Folder(
          name: '',
          nodes: node.nodes.map((e) => collectThemes(e, theme: node.name)).toList(),
        );
      }

      return Folder(
        name: node.name,
        nodes: node.nodes.map((e) => collectThemes(e, theme: theme)).toList(),
      );
    } else if (node is Item) {
      return Item(
        value: node.value,
        theme: theme,
      );
    }

    return node;
  }

  Node removeSpaces(Node node) {
    if (node is Folder) {
      final nodes = node.nodes.map((e) => removeSpaces(e)).toList();

      return Folder(
        name: node.name,
        nodes: nodes
            .map((e) {
              if (e is Folder && e.name.isEmpty) {
                return e.nodes;
              }
              return [e];
            })
            .expand((e) => e)
            .toList(),
      );
    }
    return node;
  }

  Node merge(Node node) {
    if (node is Folder) {
      final Map<String, List<Folder>> folders = {};

      for (final item in node.nodes) {
        if (item is Folder) {
          folders.putIfAbsent(item.name, () => []).add(item);
        }
      }

      return Folder(
        name: node.name,
        nodes: [
          ...folders.iterable
              .map((e) => merge(Folder(name: e.$1, nodes: e.$2.expand((e) => e.nodes).toList()))),
          ...node.items,
        ],
      );
    }
    return node;
  }

  Node reduceDuplicates(Node node) {
    if (node is Folder) {
      if (node.items.isEmpty && node.folders.length == 1 && node.folders.first.name == node.name) {
        return reduceDuplicates(node.folders.first);
      }

      return Folder(
        name: node.name,
        nodes: node.nodes.map((e) => reduceDuplicates(e)).toList(),
      );
    }
    return node;
  }

  Node _parseDirectory(Directory directory) {
    List<Node> nodes = [];

    for (final entity in directory.listSync()) {
      if (entity is File) {
        nodes.add(_parseFile(entity));
      }
      if (entity is Directory) {
        nodes.add(_parseDirectory(entity));
      }
    }

    return Folder(name: directory.name, nodes: nodes);
  }

  Node _parseFile(File file) {
    if (parseFiles) {
      final parser = parsers.firstWhereOrNull((e) => e.canParse(file));
      if (parser != null) {
        return Folder(
          name: file.name,
          nodes: [
            parser.parse(file),
          ],
        );
      }

      return Folder.empty;
    } else {
      return Folder(
        name: file.name,
        nodes: [
          Item(value: relative(file.path, from: path).forwardSlash),
        ],
      );
    }
  }
}
