import 'dart:io';

import 'package:x_gens/src/core/builders/static_builder.dart';
import 'package:x_gens/src/core/data/node.dart';
import 'package:x_gens/src/core/parsers/file/file_parser.dart';
import 'package:x_gens/src/core/parsers/nodes_parser.dart';
import 'package:x_gens/src/core/fields/dimen_field.dart';
import 'package:x_gens/src/core/x_generator.dart';

class DimensGenerator extends XGenerator {
  const DimensGenerator(super.pubspec, super.config);

  @override
  String get name => 'dimens';

  @override
  String get ignores => '';

  @override
  String get imports => '';

  String toName(String inner) =>
      (inner.endsWith('.0') ? inner.substring(0, inner.length - 2) : inner)
          .replaceAll('.', '_')
          .replaceAll('/', '_')
          .replaceAll('\\', '_');

  @override
  String generate() {
    final rootNode = NodesParser<String>(
      path: fullPath,
      parser: FileParser.json(),
    )
        .parse()
        .map((e) => NodeItem(name: e.name + toName(e.value), value: DimenField(value: e.value)));

    StringBuffer buffer = StaticBuilder(
      baseTheme: 'base',
      className: 'UIDimens',
      //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
      root: rootNode,
    ).code();

    return buffer.toString();
  }
}
