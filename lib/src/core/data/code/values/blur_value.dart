import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/utils/imports.dart';

class BlurValue extends Value {
  final Value sigmaX;
  final Value sigmaY;

  const BlurValue({
    required this.sigmaX,
    required this.sigmaY,
  });

  @override
  String get type => 'ImageFilter';

  @override
  Set<String> get imports => {
        Imports.material,
        Imports.dartUi,
        ...sigmaX.imports,
        ...sigmaY.imports,
      };

  @override
  String toString() => 'ImageFilter.blur(sigmaX: $sigmaX, sigmaY: $sigmaY,)';
}
