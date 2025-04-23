// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: Gens - Shadows generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;
import 'tokens.ui.dart';

class UIShadowsCards extends ThemeExtension<UIShadowsCards> {
  final BoxShadow neomorphism;
  final BoxShadow popUp;
  final BoxShadow inputActive;

  const UIShadowsCards({required this.neomorphism, required this.popUp, required this.inputActive});

  @override
  UIShadowsCards copyWith({BoxShadow? neomorphism, BoxShadow? popUp, BoxShadow? inputActive}) {
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
      inputActive: BoxShadow.lerp(inputActive, other.inputActive, t) ?? other.inputActive,
    );
  }

  static final UIShadowsCards light = UIShadowsCards(
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
  static final UIShadowsCards dark = UIShadowsCards(
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

class UI extends ThemeExtension<UI> {
  final UIShadows shadows;

  const UI({required this.shadows});

  @override
  UI copyWith({UIShadows? shadows}) {
    return UI(shadows: shadows ?? this.shadows);
  }

  @override
  UI lerp(ThemeExtension<UI>? other, double t) {
    if (other is! UI) return this;
    return UI(shadows: shadows.lerp(other.shadows, t));
  }

  static final UI light = UI(shadows: UIShadows.light);
  static final UI dark = UI(shadows: UIShadows.dark);
}
