enum TypeConfig {
  blur,
  color,
  font,
  asset,
  shadow;

  static TypeConfig from(String value) {
    return switch (value) {
      'blur' => TypeConfig.blur,
      'color' => TypeConfig.color,
      'font' => TypeConfig.font,
      'asset' => TypeConfig.asset,
      'shadow' => TypeConfig.shadow,
      _ => throw 'Unexpected type',
    };
  }
}
