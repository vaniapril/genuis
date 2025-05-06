import 'dart:io';

import 'package:path/path.dart';
import 'package:genuis/src/utils/string_extension.dart';

extension DirectoryExtension on Directory {
  String get name => path.replaceAll('\\', '/').split('/').lastWhere((e) => e.isNotEmpty);
}

extension FileExtension on File {
  String get name =>
      path.replaceAll('\\', '/').split('/').lastWhere((e) => e.isNotEmpty).withoutExtension;

  bool get isXml => extension(path) == '.xml';

  bool get isJson => extension(path) == '.json';
}
