import 'dart:io';

import 'package:path/path.dart';
import 'package:genuis/src/utils/string_extension.dart';

extension FileSystemEntityExtension on FileSystemEntity {
  String get name {
    final name = basename(path);
    if (this is File) return name.withoutExtension;
    return name;
  }
}

extension FileExtension on File {
  bool get isXml => extension(path) == '.xml';
  bool get isJson => extension(path) == '.json';
}
