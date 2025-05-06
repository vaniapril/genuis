import 'dart:io';

import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/directory_extension.dart';

class NodesParser {
  final String path;
  final FileParser parser;

  NodesParser({
    required this.parser,
    required this.path,
  });

  Folder parse() {
    final directory = Directory(path);

    return Folder(
      name: directory.name,
      nodes: _parseDirectory(directory).map(reduce).toList(),
    );
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
        nodes.addAll(parser.parse(entity));
      }
    }

    return nodes;
  }
}
