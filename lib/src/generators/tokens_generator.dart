import 'package:genuis/src/config/yaml/token_config.dart';
import 'package:genuis/src/core/builders/enum_builder.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';

class TokensGenerator extends GenuisGenerator {
  final TokenConfig token;
  final Class tree;

  const TokensGenerator({
    required super.config,
    required this.token,
    required this.tree,
  });

  @override
  String get name => token.name;

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    const EnumBuilder(valueName: '', valueType: '').write(tree, buffer);

    return buffer.toString();
  }
}
