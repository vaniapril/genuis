// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Shadows generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'token_colors.ui.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;

class UIShadowsCards extends ThemeExtension<UIShadowsCards> {
  final BoxShadow neomorphism;
  final BoxShadow popUp;
  final inset_shadow.BoxShadow inputActive;

  const UIShadowsCards({required this.neomorphism, required this.popUp, required this.inputActive});

  @override
  UIShadowsCards copyWith({
    BoxShadow? neomorphism,
    BoxShadow? popUp,
    inset_shadow.BoxShadow? inputActive,
  }) {
    return UIShadowsCards(
      neomorphism: neomorphism ?? this.neomorphism,
      popUp: popUp ?? this.popUp,
      inputActive: inputActive ?? this.inputActive,
    );
  }

  @override
  UIShadowsCards lerp(ThemeExtension<UIShadowsCards>? other, double t) {
    if (other is! UIShadowsCards) return this;
    return UIShadowsCards(
      neomorphism: BoxShadow.lerp(neomorphism, other.neomorphism, t) ?? other.neomorphism,
      popUp: BoxShadow.lerp(popUp, other.popUp, t) ?? other.popUp,
      inputActive:
          inset_shadow.BoxShadow.lerp(inputActive, other.inputActive, t) ?? other.inputActive,
    );
  }

  static final UIShadowsCards light = UIShadowsCards(
    neomorphism: BoxShadow(
      color: AppColors.primaryNeutral200.value,
      spreadRadius: 0.0,
      blurRadius: 0.0,
      offset: Offset(0.0, 1.0),
    ),
    popUp: BoxShadow(
      color: AppColors.transparencyBlack10.value,
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
  static final UIShadowsCards dark = UIShadowsCards(
    neomorphism: BoxShadow(
      color: AppColors.primaryNeutral800.value,
      spreadRadius: 0.0,
      blurRadius: 0.0,
      offset: Offset(0.0, 1.0),
    ),
    popUp: BoxShadow(
      color: AppColors.transparencyBlack90.value,
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

class UIShadows extends ThemeExtension<UIShadows> {
  final UIShadowsCards cards;

  const UIShadows({required this.cards});

  @override
  UIShadows copyWith({UIShadowsCards? cards}) {
    return UIShadows(cards: cards ?? this.cards);
  }

  @override
  UIShadows lerp(ThemeExtension<UIShadows>? other, double t) {
    if (other is! UIShadows) return this;
    return UIShadows(cards: cards.lerp(other.cards, t));
  }

  static final UIShadows light = UIShadows(cards: UIShadowsCards.light);
  static final UIShadows dark = UIShadows(cards: UIShadowsCards.dark);
}
