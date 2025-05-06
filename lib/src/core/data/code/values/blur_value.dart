import 'package:genuis/src/core/data/code/value_type.dart';
import 'package:genuis/src/core/data/code/value.dart';

class BlurValue extends Value {
  final String sigma;

  const BlurValue({
    required this.sigma,
  });

  @override
  String get code => 'ImageFilter.blur(sigmaX: $sigma / 2, sigmaY: $sigma / 2,)';

  @override
  ValueType get type => ValueType.imageFilter;
}
