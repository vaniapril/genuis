import 'dart:io';

import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:path/path.dart';

/// WARNING: Danger zone! \
/// This class is responsible for cleaning the output directory of old `.ui.dart` files. \
/// Do not modify or use it if you don't know what you're doing.
abstract class OutputDirectoryCleaner {
  static void clean() {
    final Directory directory = Directory(_getNormalizedPath());

    if (directory.existsSync()) {
      for (final entity in directory.listSync()) {
        if (entity is File && entity.path.endsWith('.ui.dart')) {
          entity.deleteSync();
        }
      }
    }
  }

  static String _getNormalizedPath() {
    var path = Config.it.outputPath;

    if (isAbsolute(path)) {
      throw ConfigValidationException('output_path must be relative: $path');
    }

    path = path.forwardSlash;

    final normalized = posix.normalize(path);

    if (normalized.startsWith('..')) {
      throw ConfigValidationException('output_path may not reach outside the package: $path');
    }

    return normalized;
  }
}
