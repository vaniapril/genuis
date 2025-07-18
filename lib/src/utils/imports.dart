import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/utils/string_extension.dart';

abstract class Imports {
  static const material = "import 'package:flutter/material.dart';";
  static const dartUi = "import 'dart:ui';";
  static const flutterInsetShadow =
      "import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;";

  static String get mainClass => "import '${Config.it.className.snakeCase}.ui.dart';";
  static String get buildContextExtensionExport => "export 'build_context_extension.ui.dart';";
}
