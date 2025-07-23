import 'package:genuis/src/core/models/code/value.dart';
import 'package:genuis/src/utils/num_extension.dart';

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
  Set<String> get imports => {};

  @override
  String toString() => value.isInt ? value.toStringAsFixed(1) : '$value';
}
