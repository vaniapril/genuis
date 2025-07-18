import 'dart:io';

import 'package:genuis/src/core/models/nodes/node.dart';
import 'package:genuis/src/core/parsers/file_parsers/file_parser.dart';
import 'package:genuis/src/core/parsers/file_parsers/json_file_parser.dart';
import 'package:genuis/src/core/parsers/file_parsers/xml_file_parser.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:path/path.dart';

class NodesParser {
  final bool parseFiles;
  final String path;

  final FileParser jsonParser = JsonFileParser();
  final FileParser xmlParser = XmlFileParser();

  NodesParser({
    required this.path,
    required this.parseFiles,
  });

  Folder parse() {
    final directory = Directory(path);

    if (directory.existsSync()) {
      final nodes = _parseDirectory(directory);

      final node = reduce(
        nodes.length == 1
            ? nodes.first
            : Folder(
                name: directory.name,
                nodes: nodes,
              ),
      );

      return node is Folder
          ? node
          : Folder(
              name: directory.name,
              nodes: [node],
            );
    }

    final file = File(path);

    if (file.existsSync()) {
      final nodes = _parseFile(file);
      final node = reduce(
        nodes.length == 1
            ? nodes.first
            : Folder(
                name: file.name,
                nodes: nodes,
              ),
      );

      return node is Folder
          ? node
          : Folder(
              name: file.name,
              nodes: [node],
            );
    }

    throw ParserFolderOrFileIsNotExistsException(path);
  }

  Node reduce(Node node) {
    if (node is Folder) {
      if (node.items.isEmpty && node.folders.length == 1 && node.folders.first.name == node.name) {
        return reduce(node.folders.first);
      }

      if (node.folders.isEmpty && node.items.length == 1 && node.items.first.name == node.name) {
        return node.items.first;
      }

      return Folder(
        name: node.name,
        nodes: node.nodes.map((e) => reduce(e)).toList(),
      );
    }
    return node;
  }

  List<Node> _parseDirectory(Directory directory) {
    final names = directory.name.split('-').map((e) => e.camelCase.named).toList();

    List<Node> nodes = [];

    for (final entity in directory.listSync()) {
      if (entity is Directory) {
        nodes.addAll(
          _parseDirectory(entity),
        );
      }
      if (entity is File &&
          (!parseFiles || jsonParser.canParse(entity) || xmlParser.canParse(entity))) {
        nodes.addAll(_parseFile(entity));
      }
    }

    for (final name in names) {
      nodes = [Folder(name: name, nodes: nodes)];
    }

    return nodes;
  }

  List<Node> _parseFile(File file) {
    final names = file.name.split('-').map((e) => e.camelCase.named).toList();

    List<Node> nodes = parseFiles
        ? jsonParser.canParse(file)
            ? jsonParser.parse(file, names.last)
            : xmlParser.canParse(file)
                ? xmlParser.parse(file, names.last)
                : []
        : [
            Item(
              name: names.last,
              value: relative(file.path, from: path).forwardSlash,
            )
          ];

    for (final name in names.sublist(0, names.length - 1)) {
      nodes = [Folder(name: name, nodes: nodes)];
    }

    return nodes;
  }
}
