import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/token/enum_token_writer.dart';
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
        EnumTokenWriter(
          config: config,
          className: token.config.className,
          valueType: token.fields.first.type,
          valueName: token.config.fieldName,
        ).write(
          buffer,
          token.fields,
        );
        break;
      case TokenClassType.static_:
        StaticTokenWriter(
          config: config,
          className: token.config.className,
        ).write(
          buffer,
          token.fields,
        );
        break;
      // default:
      //   throw 'Unknown module type: ${token.config.type}';
    }

    return buffer.toString();
  }
}
