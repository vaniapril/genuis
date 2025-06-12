import 'package:genuis/src/core/data/code/value.dart';

class BlurValue extends Value {
  final Value sigma;

  const BlurValue({
    required this.sigma,
  });

  @override
  String get type => 'ImageFilter';

  @override
  String toString() => 'ImageFilter.blur(sigmaX: $sigma / 2, sigmaY: $sigma / 2,)';
}
