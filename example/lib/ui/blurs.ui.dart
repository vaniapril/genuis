// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Blurs generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'UI.ui.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;
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
      blur2: t < 0.5 ? blur2 : other.blur2,
      blur4: t < 0.5 ? blur4 : other.blur4,
      blur8: t < 0.5 ? blur8 : other.blur8,
      blur16: t < 0.5 ? blur16 : other.blur16,
      blur32: t < 0.5 ? blur32 : other.blur32,
      blur64: t < 0.5 ? blur64 : other.blur64,
    );
  }

  static final UiBlurs base = UiBlurs(
    blur2: ImageFilter.blur(sigmaX: 0.1 / 2, sigmaY: 0.1 / 2),
    blur4: ImageFilter.blur(sigmaX: 0.3 / 2, sigmaY: 0.3 / 2),
    blur8: ImageFilter.blur(sigmaX: 0.5 / 2, sigmaY: 0.5 / 2),
    blur16: ImageFilter.blur(sigmaX: 1.0 / 2, sigmaY: 1.0 / 2),
    blur32: ImageFilter.blur(sigmaX: 2.0 / 2, sigmaY: 2.0 / 2),
    blur64: ImageFilter.blur(sigmaX: 4.0 / 2, sigmaY: 4.0 / 2),
  );
}
