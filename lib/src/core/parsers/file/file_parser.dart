import 'dart:io';

import 'package:genuis/src/core/data/node/node.dart';

abstract class FileParser<T> {
  bool canParse(File file);
  List<Node> parse(File file);
}
