enum TokenClassType {
  enum_,
  static_;

  static TokenClassType? tryParse(String value) {
    return switch (value) {
      'enum' => TokenClassType.enum_,
      'static' => TokenClassType.static_,
      _ => null,
    };
  }
}
