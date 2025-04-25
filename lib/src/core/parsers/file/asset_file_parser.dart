import 'dart:io';
import 'package:genuis/src/core/data/node.dart';
import 'package:path/path.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/file_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class AssetFileParser extends FileParser<String> {
  final String fullPath;

  AssetFileParser({
    required this.fullPath,
  });

  @override
  List<Node> parse(File file) {
    final names = file.name.split('-').map((e) => e.pathCamelCase.named).toList();

    Node node = Item(
      name: names.last,
      value: relative(file.path, from: fullPath).forwardSlash,
    );

    for (final name in names.sublist(0, names.length - 1)) {
      node = Folder(name: name, nodes: [node]);
    }

    return [node];
  }
}
