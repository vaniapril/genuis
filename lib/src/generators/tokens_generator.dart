import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/enum_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/generators/file_generator.dart';

class TokensGenerator extends FileGenerator {
  final Token token;

  const TokensGenerator({
    required super.config,
    required this.token,
  });

  @override
  String get fileName => token.fileName;

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    buffer.writeln("import 'package:flutter/material.dart';");

    EnumWriter(config: config, valueName: 'value', valueType: token.fields.first.type).write(
      buffer,
      Class(
        name: fileName,
        path: [],
        classType: token.config.classType,
        themes: [],
        classes: [],
        fields: token.fields,
      ),
    );

    return buffer.toString();
  }
}
