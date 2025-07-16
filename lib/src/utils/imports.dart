import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/utils/string_extension.dart';

abstract class Imports {
  static const material = "import 'package:flutter/material.dart';";
  static const dartUi = "import 'dart:ui';";
  static const flutterInsetShadow =
      "import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;";

  static String mainClass(Config config) => "import '${config.className.snakeCase}.ui.dart';";
  static String buildContextExtensionExport(Config config) => "export 'build_context_extension.ui.dart';";
}
