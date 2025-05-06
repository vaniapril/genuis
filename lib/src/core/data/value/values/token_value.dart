import 'package:genuis/src/core/data/value/value_type.dart';
import 'package:genuis/src/core/data/value/value.dart';

class TokenValue extends Value {
  final String tokenType;
  final String tokenName;
  final Value innerValue;

  const TokenValue({
    required this.tokenType,
    required this.tokenName,
    required this.innerValue,
  });

  @override
  String get code => '$tokenType.$tokenName';

  @override
  ValueType get type => innerValue.type;
}
