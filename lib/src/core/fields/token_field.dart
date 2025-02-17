import 'package:x_gens/src/core/data/field.dart';

class TokenField extends Field {
  final String tokenName;
  final String tokenType;
  final String valueType;

  TokenField({
    required this.tokenType,
    required this.tokenName,
    required this.valueType,
  });

  @override
  String get code => '$tokenType.$tokenName.value';

  @override
  String get type => valueType;
}
