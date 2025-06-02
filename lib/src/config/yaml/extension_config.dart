enum ExtensionConfig {
  colors,
  enums;

  static ExtensionConfig from(String value) {
    return switch (value) {
      'colors' => ExtensionConfig.colors,
      'enums' => ExtensionConfig.enums,
      _ => throw 'Unexpected extension',
    };
  }
}
