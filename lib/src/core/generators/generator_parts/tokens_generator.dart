import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/models/token.dart';
import 'package:genuis/src/core/writers/token/enum_token_writer.dart';
import 'package:genuis/src/core/writers/token/static_token_writer.dart';

class TokensGenerator {
  final Token token;

  const TokensGenerator({
    required this.token,
  });

  void generate(StringBuffer buffer) {
    buffer.writeln();
    if (token.config.classType == TokenClassType.enum_) {
      EnumTokenWriter(
        className: token.config.className,
        valueType: token.fields.first.type,
        valueName: token.config.fieldName,
      ).write(
        buffer,
        token.fields,
      );
    } else if (token.config.classType == TokenClassType.static_) {
      StaticTokenWriter(
        className: token.config.className,
      ).write(
        buffer,
        token.fields,
      );
    }
    buffer.writeln();
  }
}
