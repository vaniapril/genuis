import 'dart:io';

import 'package:path/path.dart';
import 'package:x_gens/src/utils/string_extension.dart';

extension FileExtension on File {
  String get name => path.split('\\').last.split('/').last.withoutExtension;

  bool get isXml => extension(path) == '.xml';

  bool get isJson => extension(path) == '.json';
}
