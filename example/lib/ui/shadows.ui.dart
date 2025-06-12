// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Shadows generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'UI.ui.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;
import 'dart:ui';

class UiShadows extends ThemeExtension<UiShadows> {
  final BoxShadow neomorphism;
  final BoxShadow popUp;
  final inset_shadow.BoxShadow inputActive;

  const UiShadows({required this.neomorphism, required this.popUp, required this.inputActive});

  @override
  UiShadows copyWith({
    BoxShadow? neomorphism,
    BoxShadow? popUp,
    inset_shadow.BoxShadow? inputActive,
  }) {
    return UiShadows(
      neomorphism: neomorphism ?? this.neomorphism,
      popUp: popUp ?? this.popUp,
      inputActive: inputActive ?? this.inputActive,
    );
  }

  @override
  UiShadows lerp(ThemeExtension<UiShadows>? other, double t) {
    if (other is! UiShadows) return this;
    return UiShadows(
      neomorphism: BoxShadow.lerp(neomorphism, other.neomorphism, t) ?? other.neomorphism,
      popUp: BoxShadow.lerp(popUp, other.popUp, t) ?? other.popUp,
      inputActive:
          inset_shadow.BoxShadow.lerp(inputActive, other.inputActive, t) ?? other.inputActive,
    );
  }

  static final UiShadows light = UiShadows(
    neomorphism: BoxShadow(
      color: colors.primaryNeutral200.value,
      spreadRadius: 0.0,
      blurRadius: 0.0,
      offset: Offset(0.0, 1.0),
    ),
    popUp: BoxShadow(
      color: colors.transparencyBlack10.value,
      spreadRadius: 0.0,
      blurRadius: 32.0,
      offset: Offset(0.0, 0.0),
    ),
    inputActive: inset_shadow.BoxShadow(
      color: Color(0x0d16162e),
      spreadRadius: 0.0,
      blurRadius: 2.0,
      offset: Offset(0.0, 2.0),
      inset: true,
    ),
  );
  static final UiShadows dark = UiShadows(
    neomorphism: BoxShadow(
      color: colors.primaryNeutral800.value,
      spreadRadius: 0.0,
      blurRadius: 0.0,
      offset: Offset(0.0, 1.0),
    ),
    popUp: BoxShadow(
      color: colors.transparencyBlack90.value,
      spreadRadius: 0.0,
      blurRadius: 32.0,
      offset: Offset(0.0, 0.0),
    ),
    inputActive: inset_shadow.BoxShadow(
      color: Color(0x5c0a0a0a),
      spreadRadius: 0.0,
      blurRadius: 2.0,
      offset: Offset(0.0, 2.0),
      inset: true,
    ),
  );
}
