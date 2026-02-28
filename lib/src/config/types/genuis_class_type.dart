enum GenuisClassType {
  themeExtension,
  interface_,
  getter;

  static GenuisClassType? tryParse(String value) {
    return switch (value) {
      'theme_extension' => GenuisClassType.themeExtension,
      'interface' => GenuisClassType.interface_,
      'getter' => GenuisClassType.getter,
      _ => null,
    };
  }
}
