enum GenuisClassType {
  themeExtension,
  getter;

  static GenuisClassType? tryParse(String value) {
    return switch (value) {
      'theme_extension' => GenuisClassType.themeExtension,
      'getter' => GenuisClassType.getter,
      _ => null,
    };
  }
}
