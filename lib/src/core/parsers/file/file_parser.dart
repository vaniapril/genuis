import 'dart:io';

import 'package:genuis/src/core/data/sequence.dart';
import 'package:genuis/src/core/parsers/file/asset_file_parser.dart';
import 'package:genuis/src/core/parsers/file/json_file_parser.dart';
import 'package:genuis/src/core/parsers/file/xml_file_parser.dart';

abstract class FileParser<T> {
  List<Sequence> parse(List<String> path, File file);

  FileParser();

  static FileParser<String> xml(String folderName, String attributeName) =>
      XmlFileParser(folderName: folderName, attributeName: attributeName);
  static FileParser<String> asset(String fullPath) => AssetFileParser(fullPath: fullPath);
  static FileParser<String> json() => JsonFileParser();
}
