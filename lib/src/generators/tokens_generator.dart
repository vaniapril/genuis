import 'package:genuis/src/core/builders/enum_builder.dart';
import 'package:genuis/src/core/data/code_entity.dart';
import 'package:genuis/src/core/data/value.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/core/x_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

class TokensGenerator extends XGenerator {
  final String folder;
  final Value? Function(String) tryParse;
  final String additionImport;
  final FileParser<String> parser;

  const TokensGenerator(
    super.pubspec,
    super.config,
    this.folder,
    this.tryParse,
    this.parser, {
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
    ).parse().items.map((e) {
      final value = tryParse(e.value)!;
      return Field(
        name: e.name,
        type: value.type,
        values: {'base': value},
        path: [],
      );
    }).toList();

    StringBuffer buffer = EnumBuilder(
      valueName: 'value',
      valueType: 'Color',
      basePath: '',
      enumName: folder.upperFirst,
      root: Class(
        name: '',
        type: folder.upperFirst,
        fields: rootNode,
        classes: [],
        path: [],
        themes: ['base'],
      ),
    ).code();

    return buffer.toString();
  }
}
