import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/utils/imports.dart';

class BlurValue extends Value {
  final Value sigma;

  const BlurValue({
    required this.sigma,
  });

  @override
  String get type => 'ImageFilter';

  @override
  List<String> get imports => [
        Imports.material,
        Imports.dartUi,
      ];

  @override
  String toString() => 'ImageFilter.blur(sigmaX: $sigma / 2, sigmaY: $sigma / 2,)';
}
