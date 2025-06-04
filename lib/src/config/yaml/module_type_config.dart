enum ModuleTypeConfig {
  blur,
  color,
  font,
  asset,
  shadow;

  static ModuleTypeConfig from(String value) {
    return switch (value) {
      'blur' => ModuleTypeConfig.blur,
      'color' => ModuleTypeConfig.color,
      'font' => ModuleTypeConfig.font,
      'asset' => ModuleTypeConfig.asset,
      'shadow' => ModuleTypeConfig.shadow,
      _ => throw 'Unexpected type',
    };
  }
}
