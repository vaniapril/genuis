import 'package:genuis/src/core/data/code/value.dart';

class DoubleValue extends Value {
  final double value;

  const DoubleValue({
    required this.value,
  });

  @override
  String lerpCode(String arg1, String arg2) => '$arg1*(1 - t) + $arg2*t';

  @override
  String get type => 'double';

  @override
  String toString() => value.toStringAsFixed(1);
}
