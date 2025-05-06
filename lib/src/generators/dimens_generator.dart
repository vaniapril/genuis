import 'package:genuis/src/core/builders/static_builder.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/parsers/file/asset_file_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/core/fields/dimen_value.dart';
import 'package:genuis/src/genuis_generator.dart';

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
    ).parse().items.map((e) {
      final value = DimenValue(value: e.value);

      return Field(
        name: e.name,
        type: value.type,
        values: {'base': value},
        path: [],
      );
    }).toList();

    StringBuffer buffer = StaticBuilder(
      baseTheme: 'base',
      className: 'UIDimens',
      //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
      root: Class(
        name: '',
        type: 'UIDimens',
        classes: [],
        fields: rootNode,
        path: [],
        themes: ['base'],
      ),
    ).code();

    return buffer.toString();
  }
}
