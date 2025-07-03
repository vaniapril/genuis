enum TokenExtensionTypeConfig {
  enum_,
  static_;

  static TokenExtensionTypeConfig from(String value) {
    return switch (value) {
      'enum' => TokenExtensionTypeConfig.enum_,
      'static' => TokenExtensionTypeConfig.static_,
      // TODO(IvanPrylepski): Exception
      _ => throw 'Unexpected type',
    };
  }
}
