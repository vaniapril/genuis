import 'dart:io';

import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:path/path.dart';

class NodesParser {
  final FileParser? fileParser;
  final String path;

  NodesParser({
    required this.path,
    this.fileParser,
  });

  Folder parse() {
    final directory = Directory(path);

    if (directory.existsSync()) {
      return Folder(
        name: directory.name,
        nodes: _parseDirectory(directory).map(reduce).toList(),
      );
    }

    final file = File(path);

    if (file.existsSync()) {
      return Folder(
        name: file.name,
        nodes: _parseFile(file).map(reduce).toList(),
      );
    }

    throw 'File or directory not found at $path';
  }

  Node reduce(Node node) {
    if (node is Folder) {
      if (node.items.isEmpty && node.folders.length == 1 && node.folders.first.name == node.name) {
        return reduce(node.folders.first);
      }

      if (node.folders.isEmpty && node.items.length == 1 && node.items.first.name == node.name) {
        return node.items.first;
      }
    }
    return node;
  }

  List<Node> _parseDirectory(Directory directory) {
    List<Node> nodes = [];

    for (final entity in directory.listSync()) {
      if (entity is Directory) {
        nodes.add(
          Folder(
            name: entity.name,
            nodes: _parseDirectory(entity),
          ),
        );
      }
      if (entity is File) {
        nodes.addAll(_parseFile(entity));
      }
    }

    return nodes;
  }

  List<Node> _parseFile(File file) {
    List<Node> nodes = [];

    final names = file.name.split('-').map((e) => e.camelCase.named).toList();

    if (fileParser != null) {
      nodes.addAll(fileParser?.parse(file) ?? []);
    } else {
      Node node = Item(
        name: names.last,
        value: relative(file.path, from: path).forwardSlash,
      );

      for (final name in names.sublist(0, names.length - 1)) {
        node = Folder(name: name, nodes: [node]);
      }

      nodes.add(node);
    }

    return nodes;
  }
}
