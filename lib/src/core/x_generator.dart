import 'dart:io';

import 'package:genuis/src/config/pubspec.dart';
import 'package:genuis/src/utils/string_extension.dart';

abstract class XGenerator {
  final File pubspec;
  final Pubspec config;

  const XGenerator(this.pubspec, this.config);

  String get fullPath => '${pubspec.parent.path}${'/$path/'.forwardSlash}';
  String get path => '${config.xGens.assets}/$name';

  //
  String get name;
  //
  String get ignores; // '// ignore_for_file: type=lint, unused_element, unnecessary_cast';
  String get imports;
  String generate();
}
