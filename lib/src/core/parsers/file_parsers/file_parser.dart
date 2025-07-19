import 'dart:io';

import 'package:genuis/src/core/models/nodes/node.dart';

abstract class FileParser<T> {
  bool canParse(File file);
  List<Node> parse(File file, String name);
}
