// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - blurs generator
// **************************************************************************

// ignore_for_file: unused_import
// ignore_for_file: type=lint

import 'package:flutter/material.dart';
import 'dart:ui';

class UIBlurs extends ThemeExtension<UIBlurs> {
  final ImageFilter blur2;
  final ImageFilter blur4;
  final ImageFilter blur8;
  final ImageFilter blur16;
  final ImageFilter blur32;
  final ImageFilter blur64;

  const UIBlurs({
    required this.blur2,
    required this.blur4,
    required this.blur8,
    required this.blur16,
    required this.blur32,
    required this.blur64,
  });

  @override
  UIBlurs copyWith({
    ImageFilter? blur2,
    ImageFilter? blur4,
    ImageFilter? blur8,
    ImageFilter? blur16,
    ImageFilter? blur32,
    ImageFilter? blur64,
  }) {
    return UIBlurs(
      blur2: blur2 ?? this.blur2,
      blur4: blur4 ?? this.blur4,
      blur8: blur8 ?? this.blur8,
      blur16: blur16 ?? this.blur16,
      blur32: blur32 ?? this.blur32,
      blur64: blur64 ?? this.blur64,
    );
  }

  @override
  UIBlurs lerp(ThemeExtension<UIBlurs>? other, double t) {
    if (other is! UIBlurs) return this;
    if (identical(this, other)) return this;
    return UIBlurs(
      blur2: t < 0.5 ? blur2 : other.blur2,
      blur4: t < 0.5 ? blur4 : other.blur4,
      blur8: t < 0.5 ? blur8 : other.blur8,
      blur16: t < 0.5 ? blur16 : other.blur16,
      blur32: t < 0.5 ? blur32 : other.blur32,
      blur64: t < 0.5 ? blur64 : other.blur64,
    );
  }

  static final UIBlurs base = UIBlurs(
    blur2: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
    blur4: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
    blur8: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
    blur16: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
    blur32: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
    blur64: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
  );
}
