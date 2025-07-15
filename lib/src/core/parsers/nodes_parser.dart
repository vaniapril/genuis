import 'dart:io';

import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/core/parsers/file/json_file_parser.dart';
import 'package:genuis/src/core/parsers/file/xml_file_parser.dart';
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
      return Folder(
        name: directory.name,
        nodes: _parseDirectory(directory).map(reduce).toList(),
      );
    }

    final file = File(path);

    if (file.existsSync()) {
      final node = reduce(_parseFile(file));

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
      if (entity is File &&
          (!parseFiles || jsonParser.canParse(entity) || xmlParser.canParse(entity))) {
        nodes.add(_parseFile(entity));
      }
    }

    return nodes;
  }

  Node _parseFile(File file) {
    final names = file.name.split('-').map((e) => e.camelCase.named).toList();

    Node node = parseFiles
        ? Folder(
            name: names.last,
            nodes: jsonParser.canParse(file)
                ? jsonParser.parse(file)
                : xmlParser.canParse(file)
                    ? xmlParser.parse(file)
                    : [])
        : Item(
            name: names.last,
            value: relative(file.path, from: path).forwardSlash,
          );

    for (final name in names.sublist(0, names.length - 1)) {
      node = Folder(name: name, nodes: [node]);
    }

    return node;
  }
}
