import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/utils/imports.dart';

class TextStyleValue extends Value {
  final Value family;
  final Value weight;
  final Value size;
  final Value height;
  final Value? spacing;
  final bool italic;

  const TextStyleValue({
    required this.family,
    required this.weight,
    required this.size,
    required this.height,
    required this.spacing,
    required this.italic,
  });

  @override
  String lerpCode(String arg1, String arg2) => 'TextStyle.lerp($arg1, $arg2, t) ?? $arg2';

  @override
  String get type => 'TextStyle';

  @override
  Set<String> get imports => {
        Imports.material,
        ...family.imports,
        ...weight.imports,
        ...size.imports,
        ...height.imports,
        ...spacing?.imports ?? {},
      };

  @override
  String toString() =>
      'const TextStyle(fontFamily: $family, fontWeight: FontWeight.w$weight, fontSize: $size, height: $height / $size, ${spacing != null ? 'letterSpacing: $spacing,' : ''} ${italic ? 'fontStyle: FontStyle.italic,' : ''})';
}
