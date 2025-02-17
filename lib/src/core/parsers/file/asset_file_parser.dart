import 'dart:io';
import 'package:path/path.dart';
import 'package:x_gens/src/core/data/node.dart';
import 'package:x_gens/src/core/parsers/file/file_parser.dart';
import 'package:x_gens/src/utils/file_extension.dart';
import 'package:x_gens/src/utils/string_extension.dart';

class AssetFileParser extends FileParser<String> {
  final String fullPath;

  AssetFileParser({
    required this.fullPath,
  });

  @override
  List<Node<String>> parse(File file) {
    return [
      _nodeForSequence(
        file.name.split('-'),
        relative(file.path, from: fullPath).forwardSlash,
      )
    ];
  }

  Node<String> _nodeForSequence(List<String> sequence, String value) {
    if (sequence.length == 1) {
      return NodeItem<String>(
        name: sequence.first.pathCamelCase,
        value: value,
      );
    } else {
      return NodeFolder<String>(
        name: sequence.first.pathCamelCase,
        nodes: [
          _nodeForSequence(
            sequence.sublist(1),
            value,
          ),
        ],
      );
    }
  }
}
