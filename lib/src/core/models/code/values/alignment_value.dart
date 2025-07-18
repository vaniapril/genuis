import 'package:genuis/src/core/models/code/value.dart';
import 'package:genuis/src/core/models/code/values/double_value.dart';
import 'package:genuis/src/utils/imports.dart';

class AlignmentValue extends Value {
  final Value x;
  final Value y;

  const AlignmentValue({
    required this.x,
    required this.y,
  });

  @override
  String get type => 'ImageFilter';

  @override
  Set<String> get imports => {
        Imports.material,
        ...x.imports,
        ...y.imports,
      };

  @override
  String toString() => switch ((x, y)) {
        (-1.0, -1.0) => 'Alignment.topLeft',
        (0.0, -1.0) => 'Alignment.topCenter',
        (1.0, -1.0) => 'Alignment.topRight',
        (-1.0, 0.0) => 'Alignment.centerLeft',
        (0.0, 0.0) => 'Alignment.center',
        (1.0, 0.0) => 'Alignment.centerRight',
        (-1.0, 1.0) => 'Alignment.bottomLeft',
        (0.0, 1.0) => 'Alignment.bottomCenter',
        (1.0, 1.0) => 'Alignment.bottomRight',
        _ => 'Alignment($x, $y)',
      };

  static const topLeft = AlignmentValue(x: DoubleValue(value: -1.0), y: DoubleValue(value: -1.0));
  static const topCenter = AlignmentValue(x: DoubleValue(value: 0.0), y: DoubleValue(value: -1.0));
  static const topRight = AlignmentValue(x: DoubleValue(value: 1.0), y: DoubleValue(value: -1.0));
  static const centerLeft = AlignmentValue(x: DoubleValue(value: -1.0), y: DoubleValue(value: 0.0));
  static const center = AlignmentValue(x: DoubleValue(value: 0.0), y: DoubleValue(value: 0.0));
  static const centerRight = AlignmentValue(x: DoubleValue(value: 1.0), y: DoubleValue(value: 0.0));
  static const bottomLeft = AlignmentValue(x: DoubleValue(value: -1.0), y: DoubleValue(value: 1.0));
  static const bottomCenter =
      AlignmentValue(x: DoubleValue(value: 0.0), y: DoubleValue(value: 1.0));
  static const bottomRight = AlignmentValue(x: DoubleValue(value: 1.0), y: DoubleValue(value: 1.0));
}
