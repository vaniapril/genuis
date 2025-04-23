import 'dart:io';
import 'package:genuis/src/core/data/sequence.dart';
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
  List<Sequence> parse(List<String> path, File file) {
    return [
      Sequence(
        sequence: [...path, ...file.name.split('-').map((e) => e.pathCamelCase.named)],
        value: relative(file.path, from: fullPath).forwardSlash,
      ),
    ];
  }
}
