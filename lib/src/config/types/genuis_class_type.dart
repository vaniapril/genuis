enum GenuisClassType {
  themeExtension,
  interface_;

  static GenuisClassType? tryParse(String value) {
    return switch (value) {
      'theme_extension' => GenuisClassType.themeExtension,
      'interface' => GenuisClassType.interface_,
      _ => null,
    };
  }
}
