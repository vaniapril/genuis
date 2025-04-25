import 'package:genuis/src/core/data/value.dart';

class TokenValue extends Value {
  final String tokenName;
  final String tokenType;
  final String valueType;
  final String tokenValue;

  TokenValue({
    required this.tokenType,
    required this.tokenName,
    required this.valueType,
    required this.tokenValue,
  });

  @override
  String get code => '$tokenType.$tokenName.value';

  @override
  String get type => valueType;

  @override
  String get value => tokenValue;
}
