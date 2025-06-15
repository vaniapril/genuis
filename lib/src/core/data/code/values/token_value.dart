import 'package:genuis/src/core/data/code/value.dart';

class TokenValue extends Value {
  final String tokenType;
  final String tokenName;
  final Value innerValue;

  const TokenValue({
    super.flags = const [],
    required this.tokenType,
    required this.tokenName,
    required this.innerValue,
  });

  @override
  String lerpCode(String arg1, String arg2) => innerValue.lerpCode(arg1, arg2);

  @override
  String get type => innerValue.type;

  @override
  List<String> get imports => innerValue.imports;

  @override
  String toString() => '$tokenType.$tokenName';
}
