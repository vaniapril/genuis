import 'package:genuis/src/core/data/value.dart';

class FontValue extends Value {
  final String family;
  final String weight;
  final String size;
  final String height;
  final String? spacing;

  FontValue({
    required this.family,
    required this.weight,
    required this.size,
    required this.height,
    required this.spacing,
  });

  @override
  String get code =>
      "const TextStyle(fontFamily: $family, fontWeight: FontWeight.w$weight, fontSize: $size, height: $height / $size,${spacing != null ? 'letterSpacing: $spacing,' : ''})";

  @override
  String get type => 'TextStyle';

  static Value? tryParse(String value) {
    final family = value.substring(0, value.indexOf("'", 1) + 1);

    final list = value.substring(value.indexOf("'", 1) + 2).split(' ');

    return FontValue(
      family: family,
      weight: list[0],
      size: list[1].replaceAll('px', ''),
      height: list[2].replaceAll('px', ''),
      spacing: list.length > 3 ? list[3].replaceAll('px', '') : null,
    );
  }
}
