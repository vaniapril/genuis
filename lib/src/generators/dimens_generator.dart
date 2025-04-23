import 'package:genuis/src/core/builders/static_builder.dart';
import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/core/fields/dimen_value.dart';
import 'package:genuis/src/core/x_generator.dart';

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
    final rootNode = NodesParser(
      path: fullPath,
      parser: FileParser.json(),
    )
        .parse()
        .map((e) => Item(
              name: e.sequence.last + toName(e.value),
              values: {'base': DimenValue(value: e.value)},
              path: [],
            ))
        .toList();

    StringBuffer buffer = StaticBuilder(
      baseTheme: 'base',
      className: 'UIDimens',
      //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
      root: Folder(
        name: '',
        items: rootNode,
        path: [],
      ),
    ).code();

    return buffer.toString();
  }
}
