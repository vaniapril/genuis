import 'dart:io';

import 'package:genuis/src/core/data/sequence.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/directory_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class NodesParser {
  final String path;
  final FileParser parser;

  NodesParser({
    required this.parser,
    required this.path,
  });

  List<Sequence> parse() {
    final directory = Directory(path);
    return _parseDirectory([directory.name.pathCamelCase.named], directory);
  }

  List<Sequence> _parseDirectory(List<String> path, Directory directory) {
    List<Sequence> sequences = [];

    for (final entity in directory.listSync()) {
      if (entity is Directory) {
        sequences.addAll(_parseDirectory([...path, entity.name], entity));
      }
      if (entity is File) {
        sequences.addAll(parser.parse(path, entity));
      }
    }

    return sequences;
  }
}
