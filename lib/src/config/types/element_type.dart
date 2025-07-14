enum ElementType {
  blur,
  color,
  font,
  asset,
  shadow,
  number,
  string;

  static ElementType? tryParse(String value) {
    return switch (value) {
      'blur' => ElementType.blur,
      'color' => ElementType.color,
      'font' => ElementType.font,
      'asset' => ElementType.asset,
      'shadow' => ElementType.shadow,
      'number' => ElementType.number,
      'string' => ElementType.string,
      _ => null,
    };
  }
}
