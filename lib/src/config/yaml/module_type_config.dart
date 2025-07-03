enum ModuleTypeConfig {
  blur,
  color,
  font,
  asset,
  shadow,
  number;

  static ModuleTypeConfig from(String value) {
    return switch (value) {
      'blur' => ModuleTypeConfig.blur,
      'color' => ModuleTypeConfig.color,
      'font' => ModuleTypeConfig.font,
      'asset' => ModuleTypeConfig.asset,
      'shadow' => ModuleTypeConfig.shadow,
      'number' => ModuleTypeConfig.number,
      // TODO(IvanPrylepski): Exception
      _ => throw 'Unexpected type',
    };
  }
}
