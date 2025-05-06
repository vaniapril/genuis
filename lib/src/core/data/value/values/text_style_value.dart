import 'package:genuis/src/core/data/value/value_type.dart';
import 'package:genuis/src/core/data/value/value.dart';

class TextStyleValue extends Value {
  final String family;
  final String weight;
  final String size;
  final String height;
  final String? spacing;

  const TextStyleValue({
    required this.family,
    required this.weight,
    required this.size,
    required this.height,
    required this.spacing,
  });

  @override
  String get code =>
      'const TextStyle(fontFamily: $family, fontWeight: FontWeight.w$weight, fontSize: $size, height: $height / $size,${spacing != null ? 'letterSpacing: $spacing,' : ''})';

  @override
  ValueType get type => ValueType.textStyle;
}
