enum ElementType {
  blur,
  color,
  font,
  asset,
  shadow,
  number,
  string,
  gradient;

  static ElementType? tryParse(String value) {
    return switch (value) {
      'blur' => ElementType.blur,
      'color' => ElementType.color,
      'font' => ElementType.font,
      'asset' => ElementType.asset,
      'shadow' => ElementType.shadow,
      'number' => ElementType.number,
      'string' => ElementType.string,
      'gradient' => ElementType.gradient,
      _ => null,
    };
  }
}
