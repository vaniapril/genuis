import 'package:genuis/src/core/builders/theme_extension_builder.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/core/parsers/file/asset_file_parser.dart';
import 'package:genuis/src/core/parsers/models_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/genuis_generator.dart';

class ConfigGenerator extends XGenerator {
  final String folder;
  final Value? Function(String) tryParse;
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
      root: rootNode,
      prefix: 'UI',
      mapper: (value, {theme}) {
        final element = tryParse(value);

        if (element != null) {
          return element;
        }

        throw 'Unexpected value: $value';
      },
    ).parse();

    StringBuffer buffer = ThemeExtensionBuilder(
      baseHasLerp: baseHasLerp,
      //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
      root: rootModel,
    ).code();

    return buffer.toString();
  }
}


import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow; import 'tokens.ui.dart';