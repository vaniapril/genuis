// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Shadows generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'token_colors.ui.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;

abstract class UIShadowsCards {
  static const UIShadowsCards light = _UIShadowsCardsLight();
  static const UIShadowsCards dark = _UIShadowsCardsDark();

  const UIShadowsCards._();

  BoxShadow get neomorphism;
  BoxShadow get popUp;
  inset_shadow.BoxShadow get inputActive;
}

class _UIShadowsCardsLight extends UIShadowsCards {
  const _UIShadowsCardsLight() : super._();

  @override
  BoxShadow get neomorphism => BoxShadow(
    color: AppColors.primaryNeutral200.value,
    spreadRadius: 0.0,
    blurRadius: 0.0,
    offset: Offset(0.0, 1.0),
  );
  @override
  BoxShadow get popUp => BoxShadow(
    color: AppColors.transparencyBlack10.value,
    spreadRadius: 0.0,
    blurRadius: 32.0,
    offset: Offset(0.0, 0.0),
  );
  @override
  inset_shadow.BoxShadow get inputActive => inset_shadow.BoxShadow(
    color: Color(0x0d16162e),
    spreadRadius: 0.0,
    blurRadius: 2.0,
    offset: Offset(0.0, 2.0),
    inset: true,
  );
}

class _UIShadowsCardsDark extends UIShadowsCards {
  const _UIShadowsCardsDark() : super._();

  @override
  BoxShadow get neomorphism => BoxShadow(
    color: AppColors.primaryNeutral800.value,
    spreadRadius: 0.0,
    blurRadius: 0.0,
    offset: Offset(0.0, 1.0),
  );
  @override
  BoxShadow get popUp => BoxShadow(
    color: AppColors.transparencyBlack90.value,
    spreadRadius: 0.0,
    blurRadius: 32.0,
    offset: Offset(0.0, 0.0),
  );
  @override
  inset_shadow.BoxShadow get inputActive => inset_shadow.BoxShadow(
    color: Color(0x5c0a0a0a),
    spreadRadius: 0.0,
    blurRadius: 2.0,
    offset: Offset(0.0, 2.0),
    inset: true,
  );
}

abstract class UIShadows {
  static const UIShadows light = _UIShadowsLight();
  static const UIShadows dark = _UIShadowsDark();

  const UIShadows._();

  UIShadowsCards get cards;
}

class _UIShadowsLight extends UIShadows {
  const _UIShadowsLight() : super._();

  @override
  UIShadowsCards get cards => UIShadowsCards.light;
}

class _UIShadowsDark extends UIShadows {
  const _UIShadowsDark() : super._();

  @override
  UIShadowsCards get cards => UIShadowsCards.dark;
}
