// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Colors generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'tokens.ui.dart';

class UIColorsOnboarding extends ThemeExtension<UIColorsOnboarding> {
  final Color bg;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color stroke;

  const UIColorsOnboarding({
    required this.bg,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.stroke,
  });

  @override
  UIColorsOnboarding copyWith({
    Color? bg,
    Color? color1,
    Color? color2,
    Color? color3,
    Color? color4,
    Color? stroke,
  }) {
    return UIColorsOnboarding(
      bg: bg ?? this.bg,
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      color4: color4 ?? this.color4,
      stroke: stroke ?? this.stroke,
    );
  }

  @override
  UIColorsOnboarding lerp(ThemeExtension<UIColorsOnboarding>? other, double t) {
    if (other is! UIColorsOnboarding) return this;
    return UIColorsOnboarding(
      bg: Color.lerp(bg, other.bg, t) ?? other.bg,
      color1: Color.lerp(color1, other.color1, t) ?? other.color1,
      color2: Color.lerp(color2, other.color2, t) ?? other.color2,
      color3: Color.lerp(color3, other.color3, t) ?? other.color3,
      color4: Color.lerp(color4, other.color4, t) ?? other.color4,
      stroke: Color.lerp(stroke, other.stroke, t) ?? other.stroke,
    );
  }

  static final UIColorsOnboarding light = UIColorsOnboarding(
    bg: Tokens.primaryBaseWhite.value,
    color1: Color(0x1f2858ef),
    color2: Color(0x0f2858ef),
    color3: Color(0x052858ef),
    color4: Color(0x002858ef),
    stroke: Tokens.primaryNeutral25.value,
  );
  static final UIColorsOnboarding dark = UIColorsOnboarding(
    bg: Tokens.primaryBaseBlack.value,
    color1: Color(0xcc010101),
    color2: Color(0x99010101),
    color3: Color(0x66010101),
    color4: Color(0x33010101),
    stroke: Tokens.primaryNeutral800.value,
  );
}

class UIColors extends ThemeExtension<UIColors> {
  final UIColorsOnboarding onboarding;
  final Color error;
  final Color alertNotification;
  final Color brand;
  final Color chatMessage;
  final Color divider;
  final Color navbar;
  final Color primaryBlack;
  final Color whiteConst;
  final Color primaryPressed;
  final Color primaryWhite;
  final Color secondary;
  final Color secondaryPressed;
  final Color selectedPrimary;
  final Color selectedSecondary;
  final Color tertiary;
  final Color scroll;

  const UIColors({
    required this.onboarding,
    required this.error,
    required this.alertNotification,
    required this.brand,
    required this.chatMessage,
    required this.divider,
    required this.navbar,
    required this.primaryBlack,
    required this.whiteConst,
    required this.primaryPressed,
    required this.primaryWhite,
    required this.secondary,
    required this.secondaryPressed,
    required this.selectedPrimary,
    required this.selectedSecondary,
    required this.tertiary,
    required this.scroll,
  });

  @override
  UIColors copyWith({
    UIColorsOnboarding? onboarding,
    Color? error,
    Color? alertNotification,
    Color? brand,
    Color? chatMessage,
    Color? divider,
    Color? navbar,
    Color? primaryBlack,
    Color? whiteConst,
    Color? primaryPressed,
    Color? primaryWhite,
    Color? secondary,
    Color? secondaryPressed,
    Color? selectedPrimary,
    Color? selectedSecondary,
    Color? tertiary,
    Color? scroll,
  }) {
    return UIColors(
      onboarding: onboarding ?? this.onboarding,
      error: error ?? this.error,
      alertNotification: alertNotification ?? this.alertNotification,
      brand: brand ?? this.brand,
      chatMessage: chatMessage ?? this.chatMessage,
      divider: divider ?? this.divider,
      navbar: navbar ?? this.navbar,
      primaryBlack: primaryBlack ?? this.primaryBlack,
      whiteConst: whiteConst ?? this.whiteConst,
      primaryPressed: primaryPressed ?? this.primaryPressed,
      primaryWhite: primaryWhite ?? this.primaryWhite,
      secondary: secondary ?? this.secondary,
      secondaryPressed: secondaryPressed ?? this.secondaryPressed,
      selectedPrimary: selectedPrimary ?? this.selectedPrimary,
      selectedSecondary: selectedSecondary ?? this.selectedSecondary,
      tertiary: tertiary ?? this.tertiary,
      scroll: scroll ?? this.scroll,
    );
  }

  @override
  UIColors lerp(ThemeExtension<UIColors>? other, double t) {
    if (other is! UIColors) return this;
    return UIColors(
      onboarding: onboarding.lerp(other.onboarding, t),
      error: Color.lerp(error, other.error, t) ?? other.error,
      alertNotification:
          Color.lerp(alertNotification, other.alertNotification, t) ?? other.alertNotification,
      brand: Color.lerp(brand, other.brand, t) ?? other.brand,
      chatMessage: Color.lerp(chatMessage, other.chatMessage, t) ?? other.chatMessage,
      divider: Color.lerp(divider, other.divider, t) ?? other.divider,
      navbar: Color.lerp(navbar, other.navbar, t) ?? other.navbar,
      primaryBlack: Color.lerp(primaryBlack, other.primaryBlack, t) ?? other.primaryBlack,
      whiteConst: Color.lerp(whiteConst, other.whiteConst, t) ?? other.whiteConst,
      primaryPressed: Color.lerp(primaryPressed, other.primaryPressed, t) ?? other.primaryPressed,
      primaryWhite: Color.lerp(primaryWhite, other.primaryWhite, t) ?? other.primaryWhite,
      secondary: Color.lerp(secondary, other.secondary, t) ?? other.secondary,
      secondaryPressed:
          Color.lerp(secondaryPressed, other.secondaryPressed, t) ?? other.secondaryPressed,
      selectedPrimary:
          Color.lerp(selectedPrimary, other.selectedPrimary, t) ?? other.selectedPrimary,
      selectedSecondary:
          Color.lerp(selectedSecondary, other.selectedSecondary, t) ?? other.selectedSecondary,
      tertiary: Color.lerp(tertiary, other.tertiary, t) ?? other.tertiary,
      scroll: Color.lerp(scroll, other.scroll, t) ?? other.scroll,
    );
  }

  static final UIColors light = UIColors(
    onboarding: UIColorsOnboarding.light,
    error: Tokens.primaryError500.value,
    alertNotification: Tokens.transparencyWhite80.value,
    brand: Tokens.primaryBrand300.value,
    chatMessage: Tokens.primaryNeutral100.value,
    divider: Tokens.primaryNeutral100.value,
    navbar: Tokens.primaryBaseWhite.value,
    primaryBlack: Tokens.primaryBaseBlack.value,
    whiteConst: Tokens.primaryBaseWhite.value,
    primaryPressed: Tokens.primaryNeutral50.value,
    primaryWhite: Tokens.primaryBaseWhite.value,
    secondary: Tokens.primaryNeutral50.value,
    secondaryPressed: Tokens.primaryNeutral100.value,
    selectedPrimary: Tokens.primaryBrand25.value,
    selectedSecondary: Tokens.primarySuccess50.value,
    tertiary: Tokens.primaryNeutral300.value,
    scroll: Tokens.transparencyBlack20.value,
  );
  static final UIColors dark = UIColors(
    onboarding: UIColorsOnboarding.dark,
    error: Tokens.primaryError600.value,
    alertNotification: Tokens.transparencyBlack80.value,
    brand: Tokens.primaryBrand300.value,
    chatMessage: Tokens.primaryNeutral900.value,
    divider: Tokens.primaryNeutral900.value,
    navbar: Tokens.primaryNeutral900.value,
    primaryBlack: Tokens.primaryBaseWhite.value,
    whiteConst: Tokens.primaryBaseWhite.value,
    primaryPressed: Tokens.primaryNeutral900.value,
    primaryWhite: Tokens.primaryBaseBlack.value,
    secondary: Tokens.primaryNeutral900.value,
    secondaryPressed: Tokens.primaryNeutral800.value,
    selectedPrimary: Tokens.primaryBrand950.value,
    selectedSecondary: Tokens.primarySuccess950.value,
    tertiary: Tokens.primaryNeutral800.value,
    scroll: Tokens.transparencyWhite20.value,
  );
}
