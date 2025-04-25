// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Shadows generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;
import 'tokens.ui.dart';

class UIShadows extends ThemeExtension<UIShadows> {
  final BoxShadow neomorphism;
  final BoxShadow popUp;
  final BoxShadow inputActive;

  const UIShadows({required this.neomorphism, required this.popUp, required this.inputActive});

  @override
  UIShadows copyWith({BoxShadow? neomorphism, BoxShadow? popUp, BoxShadow? inputActive}) {
    return UIShadows(
      neomorphism: neomorphism ?? this.neomorphism,
      popUp: popUp ?? this.popUp,
      inputActive: inputActive ?? this.inputActive,
    );
  }

  @override
  UIShadows lerp(ThemeExtension<UIShadows>? other, double t) {
    if (other is! UIShadows) return this;
    return UIShadows(
      neomorphism: BoxShadow.lerp(neomorphism, other.neomorphism, t) ?? other.neomorphism,
      popUp: BoxShadow.lerp(popUp, other.popUp, t) ?? other.popUp,
      inputActive: BoxShadow.lerp(inputActive, other.inputActive, t) ?? other.inputActive,
    );
  }

  static final UIShadows light = UIShadows(
    neomorphism: BoxShadow(
      color: Tokens.primaryNeutral200.value,
      spreadRadius: 0,
      blurRadius: 0,
      offset: Offset(0, 1),
    ),
    popUp: BoxShadow(
      color: Tokens.transparencyBlack10.value,
      spreadRadius: 0,
      blurRadius: 32,
      offset: Offset(0, 0),
    ),
    inputActive: inset_shadow.BoxShadow(
      color: Color(0x0d16162e),
      spreadRadius: 0,
      blurRadius: 2,
      offset: Offset(0, 2),
      inset: true,
    ),
  );
  static final UIShadows dark = UIShadows(
    neomorphism: BoxShadow(
      color: Tokens.primaryNeutral800.value,
      spreadRadius: 0,
      blurRadius: 0,
      offset: Offset(0, 1),
    ),
    popUp: BoxShadow(
      color: Tokens.transparencyBlack90.value,
      spreadRadius: 0,
      blurRadius: 32,
      offset: Offset(0, 0),
    ),
    inputActive: inset_shadow.BoxShadow(
      color: Color(0x5c0a0a0a),
      spreadRadius: 0,
      blurRadius: 2,
      offset: Offset(0, 2),
      inset: true,
    ),
  );
}
