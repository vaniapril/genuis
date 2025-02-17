import 'package:x_gens/src/core/data/field.dart';

class BlurField extends Field {
  final String sigma;

  BlurField({
    required this.sigma,
  });

  @override
  String get code => "ImageFilter.blur(sigmaX: $sigma / 2, sigmaY: $sigma / 2,)";

  @override
  String get type => 'ImageFilter';

  static Field? tryParse(String value) {
    final list = value.split(' ');

    return BlurField(
      sigma: list[0].replaceAll('px', ''),
    );
  }
}
