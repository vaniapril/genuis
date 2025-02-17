import 'package:x_gens/src/core/builders/theme_extension_builder.dart';
import 'package:x_gens/src/core/data/field.dart';
import 'package:x_gens/src/core/parsers/file/file_parser.dart';
import 'package:x_gens/src/core/parsers/models_parser.dart';
import 'package:x_gens/src/core/parsers/nodes_parser.dart';
import 'package:x_gens/src/core/x_generator.dart';
import 'package:x_gens/src/utils/string_extension.dart';

class ConfigGenerator extends XGenerator {
  final String folder;
  final Field? Function(String) tryParse;
  final String additionImport;
  final FileParser<String> parser;
  final bool baseHasLerp;

  const ConfigGenerator(
    super.pubspec,
    super.config,
    this.folder,
    this.tryParse,
    this.parser, {
    this.baseHasLerp = true,
    this.additionImport = '',
  });

  @override
  String get name => folder;

  @override
  String get ignores => '';

  @override
  String get imports => "import 'package:flutter/material.dart';$additionImport";

  @override
  String generate() {
    final rootNode = NodesParser(
      path: fullPath,
      parser: parser,
    ).parse();

    final rootModel = ModelsParser(
      folder: rootNode,
      themes: config.xGens.themes,
      mapper: (value) {
        final element = tryParse(value);

        if (element != null) {
          return element;
        }

        throw 'Unexpected value: $value';
      },
    ).parse();

    StringBuffer buffer = ThemeExtensionBuilder<Field>(
      baseHasLerp: baseHasLerp,
      typePrefix: 'UI',
      typePostfix: folder.upperFirst,
      baseTheme: 'base',
      //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
      root: rootModel,
    ).code();

    return buffer.toString();
  }
}
