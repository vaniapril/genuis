import 'package:genuis/src/config/yaml/token_config.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/enum_builder.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';

class TokensGenerator extends GenuisGenerator {
  final Token token;

  const TokensGenerator({
    required super.config,
    required this.token,
  });

  @override
  String get name => token.config.name;

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    const EnumBuilder(valueName: '', valueType: '').write(token.fields, buffer);

    return buffer.toString();
  }
}
