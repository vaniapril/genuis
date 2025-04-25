import 'dart:io';

import 'package:genuis/src/core/builders/theme_extension_builder.dart';
import 'package:genuis/src/core/builders/enum_builder.dart';
import 'package:genuis/src/core/fields/token_value.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/core/parsers/models_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/core/x_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

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

    final root = ModelsParser(
      root: rootNode,
      prefix: 'UI',
      mapper: (value, {theme}) {
        final name =
            '${value.withoutExtension.pathCamelCase.replaceAll(theme?.upperFirst ?? '-', '')}${theme != null && theme != 'base' ? theme.upperFirst : ''}';

        stdout.writeln('M: {$name} $theme');

        return TokenValue(
          tokenType: folder.upperFirst,
          valueType: 'String',
          tokenValue: value,
          tokenName: name,
        );
      },
    ).parse();

    StringBuffer buffer = EnumBuilder(
      valueName: 'value',
      valueType: 'String',
      basePath: '$path/',
      enumName: folder.upperFirst,
      root: root,
    ).code();

    buffer.writeln(
      ThemeExtensionBuilder(
        baseHasLerp: false,
        //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
        root: root,
      ).code(),
    );

    return buffer.toString();
  }
}
