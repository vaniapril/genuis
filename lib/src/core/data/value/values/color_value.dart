import 'package:genuis/src/core/data/value/value_type.dart';
import 'package:genuis/src/core/data/value/value.dart';

class BlurValue extends Value {
  final String hex;

  const BlurValue({
    required this.hex,
  });

  @override
  String get code => 'Color($hex)';

  @override
  ValueType get type => ValueType.color;
}
