import 'dart:io';

import 'package:genuis/src/core/models/nodes/node.dart';

abstract class FileParser<T> {
  bool canParse(File file);
  Node parse(File file);
}
