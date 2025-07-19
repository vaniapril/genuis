import 'package:genuis/src/config/data/token_config.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';

class Token {
  final TokenConfig config;
  final List<Field> fields;

  Token({
    required this.config,
    required this.fields,
  });

  String get fileName => 'token_${config.name}';
  
  String get importCode => "import '$fileName.ui.dart';";
  String get exportCode => "export '$fileName.ui.dart';";
}
