import 'package:genuis/src/core/data/value.dart';

class BlurValue extends Value {
  final String sigma;

  BlurValue({
    required this.sigma,
  });

  @override
  String get code => "ImageFilter.blur(sigmaX: $sigma / 2, sigmaY: $sigma / 2,)";

  @override
  String get type => 'ImageFilter';

  static Value? tryParse(String value) {
    final list = value.split(' ');

    return BlurValue(
      sigma: list[0].replaceAll('px', ''),
    );
  }
}
