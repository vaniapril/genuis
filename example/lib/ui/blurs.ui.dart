// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Blurs generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'dart:ui';

class UiBlurs extends ThemeExtension<UiBlurs> {
  final ImageFilter blur2;
  final ImageFilter blur4;
  final ImageFilter blur8;
  final ImageFilter blur16;
  final ImageFilter blur32;
  final ImageFilter blur64;

  const UiBlurs({
    required this.blur2,
    required this.blur4,
    required this.blur8,
    required this.blur16,
    required this.blur32,
    required this.blur64,
  });

  @override
  UiBlurs copyWith({
    ImageFilter? blur2,
    ImageFilter? blur4,
    ImageFilter? blur8,
    ImageFilter? blur16,
    ImageFilter? blur32,
    ImageFilter? blur64,
  }) {
    return UiBlurs(
      blur2: blur2 ?? this.blur2,
      blur4: blur4 ?? this.blur4,
      blur8: blur8 ?? this.blur8,
      blur16: blur16 ?? this.blur16,
      blur32: blur32 ?? this.blur32,
      blur64: blur64 ?? this.blur64,
    );
  }

  @override
  UiBlurs lerp(ThemeExtension<UiBlurs>? other, double t) {
    if (other is! UiBlurs) return this;
    return UiBlurs(
      blur2: blur2.lerp(other.blur2, t),
      blur4: blur4.lerp(other.blur4, t),
      blur8: blur8.lerp(other.blur8, t),
      blur16: blur16.lerp(other.blur16, t),
      blur32: blur32.lerp(other.blur32, t),
      blur64: blur64.lerp(other.blur64, t),
    );
  }

  static final UiBlurs base = UiBlurs(
    blur2: ImageFilter.blur(sigmaX: 0.125 / 2, sigmaY: 0.125 / 2),
    blur4: ImageFilter.blur(sigmaX: 0.25 / 2, sigmaY: 0.25 / 2),
    blur8: ImageFilter.blur(sigmaX: 0.5 / 2, sigmaY: 0.5 / 2),
    blur16: ImageFilter.blur(sigmaX: 1 / 2, sigmaY: 1 / 2),
    blur32: ImageFilter.blur(sigmaX: 2 / 2, sigmaY: 2 / 2),
    blur64: ImageFilter.blur(sigmaX: 4 / 2, sigmaY: 4 / 2),
  );
}
