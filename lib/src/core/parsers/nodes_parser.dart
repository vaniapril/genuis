import 'dart:io';

import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/directory_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class NodesParser<T> {
  final String path;
  final FileParser<T> parser;

  NodesParser({
    required this.parser,
    required this.path,
  });

  NodeFolder<T> parse() {
    return _parseDirectory(Directory(path));
  }

  NodeFolder<T> _parseDirectory(Directory directory) {
    final folder = NodeFolder<T>(
      name: directory.name.pathCamelCase,
      nodes: [],
    );

    for (final entity in directory.listSync()) {
      if (entity is Directory) {
        folder.addWithMerge([_parseDirectory(entity)]);
      }
      if (entity is File) {
        folder.addWithMerge(parser.parse(entity));
      }
    }

    return folder;
  }
}
