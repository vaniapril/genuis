import 'package:genuis/src/core/data/value/value_type.dart';
import 'package:genuis/src/core/data/value/value.dart';

class NumValue extends Value {
  final String value;

  const NumValue({
    required this.value,
  });

  @override
  String get code => value;

  @override
  ValueType get type => value.contains('.') ? ValueType.double : ValueType.int;
}
