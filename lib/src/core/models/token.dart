import 'package:genuis/src/config/data/token_config.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';

class Token {
  final TokenConfig config;
  final List<Field> fields;
  final Set<String> assetsList;

  Token({
    required this.config,
    required this.fields,
    this.assetsList = const {},
  });

  String get fileName => 'token_${config.name}';

  String get importCode => "import '$fileName.ui.dart';";
  String get exportCode => "export '$fileName.ui.dart';";

  Token copyWith({
    TokenConfig? config,
    List<Field>? fields,
    Set<String>? assetsList,
  }) {
    return Token(
      config: config ?? this.config,
      fields: fields ?? this.fields,
      assetsList: assetsList ?? this.assetsList,
    );
  }
}
