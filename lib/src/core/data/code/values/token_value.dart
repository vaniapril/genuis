import 'package:genuis/src/core/data/code/value.dart';

class TokenValue extends Value {
  final String tokenType;
  final String tokenName;
  final Value innerValue;
  final String? additionalImports;

  const TokenValue({
    super.flags = const [],
    required this.tokenType,
    required this.tokenName,
    required this.innerValue,
    this.additionalImports,
  });

  @override
  String lerpCode(String arg1, String arg2) => innerValue.lerpCode(arg1, arg2);

  @override
  String get type => innerValue.type;

  @override
  Set<String> get imports => {
        ...innerValue.imports,
        additionalImports ?? '',
      };

  @override
  String toString() => '$tokenType.$tokenName';
}
