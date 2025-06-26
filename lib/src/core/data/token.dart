import 'package:genuis/src/config/yaml/token_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';

class Token {
  final TokenConfig config;
  final List<Field> fields;

  Token({
    required this.config,
    required this.fields,
  });

  String get fileName => 'token_${config.name}';
}
