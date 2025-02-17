import 'package:x_gens/src/core/builders/theme_extension_builder.dart';
import 'package:x_gens/src/core/builders/enum_builder.dart';
import 'package:x_gens/src/core/data/node.dart';
import 'package:x_gens/src/core/parsers/file/file_parser.dart';
import 'package:x_gens/src/core/parsers/models_parser.dart';
import 'package:x_gens/src/core/parsers/nodes_parser.dart';
import 'package:x_gens/src/core/x_generator.dart';
import 'package:x_gens/src/utils/string_extension.dart';

import '../core/fields/token_field.dart';

class AssetGenerator extends XGenerator {
  final String folder;

  const AssetGenerator(super.pubspec, super.config, this.folder);

  @override
  String get name => folder;

  @override
  String get ignores => '';

  @override
  String get imports => "import 'package:flutter/material.dart';";

  @override
  String generate() {
    final rootNode = NodesParser(
      path: fullPath,
      parser: FileParser.asset(fullPath),
    ).parse();

    final rootModel = ModelsParser(
      folder: rootNode,
      themes: config.xGens.themes,
      mapper: (value) => TokenField(
        tokenType: folder.upperFirst,
        valueType: 'String',
        tokenName: value.withoutExtension.pathCamelCase,
      ),
    ).parse();

    StringBuffer buffer = EnumBuilder(
      valueName: 'value',
      valueType: 'String',
      basePath: 'packages/$path/',
      enumName: folder.upperFirst,
      root: NodeFolder(name: '', nodes: rootNode.nodes),
    ).code();

    buffer.writeln(
      ThemeExtensionBuilder(
        baseHasLerp: false,
        typePrefix: 'UI',
        typePostfix: folder.upperFirst,
        baseTheme: 'base',
        //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
        root: rootModel,
      ).code(),
    );

    return buffer.toString();
  }
}
