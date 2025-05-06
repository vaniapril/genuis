enum ValueType {
  imageFilter,
  color,
  int,
  double,
  textStyle,
  boxShadow,
  linearGradient,
  file;

  String get typeCode => switch (this) {
        imageFilter => 'ImageFilter',
        color => 'Color',
        int => 'int',
        double => 'double',
        textStyle => 'TextStyle',
        boxShadow => 'BoxShadow',
        linearGradient => 'LinearGradient',
        file => 'String',
      };

  String lerpCode(String arg1, String arg2) => switch (this) {
        imageFilter => 'ImageFilter.lerp($arg1, $arg2, t)',
        int || double => '$arg1*(1 - t) + $arg2*t',
        color || textStyle || boxShadow || linearGradient => '$arg1.lerp($arg2, t)',
        _ => 't < 0.5 ? $arg1 : $arg2',
      };
}
