import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/token/enum_token_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/core/writers/token/static_token_writer.dart';

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

    switch (token.config.classType) {
      case TokenClassType.enum_:
        EnumTokenWriter(config: config, valueName: 'value', valueType: token.fields.first.type)
            .write(
          buffer,
          Class(
            name: fileName,
            path: [],
            classType: token.config.className,
            themes: [],
            classes: [],
            fields: token.fields,
          ),
        );
        break;
      case TokenClassType.static_:
        StaticTokenWriter(config: config).write(
          buffer,
          Class(
            name: fileName,
            path: [],
            classType: token.config.className,
            themes: [],
            classes: [],
            fields: token.fields,
          ),
        );
        break;
      // default:
      //   throw 'Unknown module type: ${token.config.type}';
    }

    return buffer.toString();
  }
}
