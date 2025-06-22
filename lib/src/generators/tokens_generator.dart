import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/enum_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';

class TokensGenerator extends GenuisGenerator {
  final Token token;

  const TokensGenerator({
    required super.config,
    required this.token,
  });

  @override
  // TODO(IvanPrylepski): rename to fineName
  String get name => 'token_${token.config.name}';

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    buffer.writeln("import 'package:flutter/material.dart';");

    EnumWriter(config: config, valueName: 'value', valueType: token.fields.first.type).write(
      buffer,
      Class(
        name: name,
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
