// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Fonts generator
// **************************************************************************

// ignore_for_file: unused_import

import 'ui.ui.dart';
import 'package:flutter/material.dart';

class ThemedTextStyle extends TextStyle {
  final Color _error;

  ThemedTextStyle._({required Color error, required TextStyle style})
    : _error = error,
      super(
        inherit: style.inherit,
        color: style.color,
        backgroundColor: style.backgroundColor,
        fontSize: style.fontSize,
        fontWeight: style.fontWeight,
        fontStyle: style.fontStyle,
        letterSpacing: style.letterSpacing,
        wordSpacing: style.wordSpacing,
        textBaseline: style.textBaseline,
        height: style.height,
        leadingDistribution: style.leadingDistribution,
        locale: style.locale,
        foreground: style.foreground,
        background: style.background,
        shadows: style.shadows,
        fontFeatures: style.fontFeatures,
        fontVariations: style.fontVariations,
        decoration: style.decoration,
        decorationColor: style.decorationColor,
        decorationStyle: style.decorationStyle,
        decorationThickness: style.decorationThickness,
        debugLabel: style.debugLabel,
        fontFamily: style.fontFamily,
        overflow: style.overflow,
      );
  ThemedTextStyle(UI ui, TextStyle style) : this._(error: ui.colors.primary.error, style: style);

  ThemedTextStyle lerp(ThemedTextStyle other, double t) {
    return ThemedTextStyle._(
      error: Color.lerp(_error, other._error, t) ?? _error,
      style: TextStyle.lerp(this, other, t) ?? this,
    );
  }

  TextStyle get error => copyWith(color: _error);
}

abstract class UIFontsManropeLargeTitle {
  static const UIFontsManropeLargeTitle light = _UIFontsManropeLargeTitleLight();
  static const UIFontsManropeLargeTitle dark = _UIFontsManropeLargeTitleDark();

  const UIFontsManropeLargeTitle._();

  ThemedTextStyle get regular;
  ThemedTextStyle get bold;
}

class _UIFontsManropeLargeTitleLight extends UIFontsManropeLargeTitle {
  const _UIFontsManropeLargeTitleLight() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 34.0,
      height: 40.0 / 34.0,
      letterSpacing: 0.4,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 34.0,
      height: 40.0 / 34.0,
      letterSpacing: 0.4,
    ),
  );
}

class _UIFontsManropeLargeTitleDark extends UIFontsManropeLargeTitle {
  const _UIFontsManropeLargeTitleDark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 34.0,
      height: 40.0 / 34.0,
      letterSpacing: 0.4,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 34.0,
      height: 40.0 / 34.0,
      letterSpacing: 0.4,
    ),
  );
}

abstract class UIFontsManropeTitle1 {
  static const UIFontsManropeTitle1 light = _UIFontsManropeTitle1Light();
  static const UIFontsManropeTitle1 dark = _UIFontsManropeTitle1Dark();

  const UIFontsManropeTitle1._();

  ThemedTextStyle get regular;
  ThemedTextStyle get bold;
}

class _UIFontsManropeTitle1Light extends UIFontsManropeTitle1 {
  const _UIFontsManropeTitle1Light() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 28.0,
      height: 34.0 / 28.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 28.0,
      height: 34.0 / 28.0,
      letterSpacing: 0.1,
    ),
  );
}

class _UIFontsManropeTitle1Dark extends UIFontsManropeTitle1 {
  const _UIFontsManropeTitle1Dark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 28.0,
      height: 34.0 / 28.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 28.0,
      height: 34.0 / 28.0,
      letterSpacing: 0.1,
    ),
  );
}

abstract class UIFontsManropeTitle2 {
  static const UIFontsManropeTitle2 light = _UIFontsManropeTitle2Light();
  static const UIFontsManropeTitle2 dark = _UIFontsManropeTitle2Dark();

  const UIFontsManropeTitle2._();

  ThemedTextStyle get regular;
  ThemedTextStyle get bold;
}

class _UIFontsManropeTitle2Light extends UIFontsManropeTitle2 {
  const _UIFontsManropeTitle2Light() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 22.0,
      height: 28.0 / 22.0,
      letterSpacing: -0.3,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 22.0,
      height: 28.0 / 22.0,
      letterSpacing: -0.3,
    ),
  );
}

class _UIFontsManropeTitle2Dark extends UIFontsManropeTitle2 {
  const _UIFontsManropeTitle2Dark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 22.0,
      height: 28.0 / 22.0,
      letterSpacing: -0.3,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 22.0,
      height: 28.0 / 22.0,
      letterSpacing: -0.3,
    ),
  );
}

abstract class UIFontsManropeTitle3 {
  static const UIFontsManropeTitle3 light = _UIFontsManropeTitle3Light();
  static const UIFontsManropeTitle3 dark = _UIFontsManropeTitle3Dark();

  const UIFontsManropeTitle3._();

  ThemedTextStyle get regular;
  ThemedTextStyle get semiBold;
}

class _UIFontsManropeTitle3Light extends UIFontsManropeTitle3 {
  const _UIFontsManropeTitle3Light() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 20.0,
      height: 24.0 / 20.0,
      letterSpacing: -0.5,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      height: 24.0 / 20.0,
      letterSpacing: -0.5,
    ),
  );
}

class _UIFontsManropeTitle3Dark extends UIFontsManropeTitle3 {
  const _UIFontsManropeTitle3Dark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 20.0,
      height: 24.0 / 20.0,
      letterSpacing: -0.5,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      height: 24.0 / 20.0,
      letterSpacing: -0.5,
    ),
  );
}

abstract class UIFontsManropeHeadline {
  static const UIFontsManropeHeadline light = _UIFontsManropeHeadlineLight();
  static const UIFontsManropeHeadline dark = _UIFontsManropeHeadlineDark();

  const UIFontsManropeHeadline._();

  ThemedTextStyle get semiBold;
  ThemedTextStyle get regular;
}

class _UIFontsManropeHeadlineLight extends UIFontsManropeHeadline {
  const _UIFontsManropeHeadlineLight() : super._();

  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 17.0,
      height: 22.0 / 17.0,
      letterSpacing: -0.4,
    ),
  );
  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 17.0,
      height: 22.0 / 17.0,
      letterSpacing: -0.4,
    ),
  );
}

class _UIFontsManropeHeadlineDark extends UIFontsManropeHeadline {
  const _UIFontsManropeHeadlineDark() : super._();

  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 17.0,
      height: 22.0 / 17.0,
      letterSpacing: -0.4,
    ),
  );
  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 17.0,
      height: 22.0 / 17.0,
      letterSpacing: -0.4,
    ),
  );
}

abstract class UIFontsManropeBody {
  static const UIFontsManropeBody light = _UIFontsManropeBodyLight();
  static const UIFontsManropeBody dark = _UIFontsManropeBodyDark();

  const UIFontsManropeBody._();

  ThemedTextStyle get regular;
  ThemedTextStyle get medium;
  ThemedTextStyle get semiBold;
  ThemedTextStyle get bold;
}

class _UIFontsManropeBodyLight extends UIFontsManropeBody {
  const _UIFontsManropeBodyLight() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
}

class _UIFontsManropeBodyDark extends UIFontsManropeBody {
  const _UIFontsManropeBodyDark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get bold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
      height: 22.0 / 16.0,
      letterSpacing: 0.1,
    ),
  );
}

abstract class UIFontsManropeCallout {
  static const UIFontsManropeCallout light = _UIFontsManropeCalloutLight();
  static const UIFontsManropeCallout dark = _UIFontsManropeCalloutDark();

  const UIFontsManropeCallout._();

  ThemedTextStyle get regular;
  ThemedTextStyle get semiBold;
}

class _UIFontsManropeCalloutLight extends UIFontsManropeCallout {
  const _UIFontsManropeCalloutLight() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      height: 20.0 / 16.0,
      letterSpacing: 0.0,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      height: 20.0 / 16.0,
      letterSpacing: 0.0,
    ),
  );
}

class _UIFontsManropeCalloutDark extends UIFontsManropeCallout {
  const _UIFontsManropeCalloutDark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      height: 20.0 / 16.0,
      letterSpacing: 0.0,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      height: 20.0 / 16.0,
      letterSpacing: 0.0,
    ),
  );
}

abstract class UIFontsManropeSubhead {
  static const UIFontsManropeSubhead light = _UIFontsManropeSubheadLight();
  static const UIFontsManropeSubhead dark = _UIFontsManropeSubheadDark();

  const UIFontsManropeSubhead._();

  ThemedTextStyle get regular;
  ThemedTextStyle get medium;
  ThemedTextStyle get semiBold;
}

class _UIFontsManropeSubheadLight extends UIFontsManropeSubhead {
  const _UIFontsManropeSubheadLight() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      height: 20.0 / 15.0,
      letterSpacing: 0.0,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 15.0,
      height: 20.0 / 15.0,
      letterSpacing: 0.0,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 15.0,
      height: 20.0 / 15.0,
      letterSpacing: 0.0,
    ),
  );
}

class _UIFontsManropeSubheadDark extends UIFontsManropeSubhead {
  const _UIFontsManropeSubheadDark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      height: 20.0 / 15.0,
      letterSpacing: 0.0,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 15.0,
      height: 20.0 / 15.0,
      letterSpacing: 0.0,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 15.0,
      height: 20.0 / 15.0,
      letterSpacing: 0.0,
    ),
  );
}

abstract class UIFontsManropeFootnote {
  static const UIFontsManropeFootnote light = _UIFontsManropeFootnoteLight();
  static const UIFontsManropeFootnote dark = _UIFontsManropeFootnoteDark();

  const UIFontsManropeFootnote._();

  ThemedTextStyle get regular;
  ThemedTextStyle get medium;
  ThemedTextStyle get semiBold;
  ThemedTextStyle get semiBoldUC;
}

class _UIFontsManropeFootnoteLight extends UIFontsManropeFootnote {
  const _UIFontsManropeFootnoteLight() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBoldUC => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
}

class _UIFontsManropeFootnoteDark extends UIFontsManropeFootnote {
  const _UIFontsManropeFootnoteDark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBoldUC => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 13.0,
      height: 16.0 / 13.0,
      letterSpacing: 0.1,
    ),
  );
}

abstract class UIFontsManropeCaption1 {
  static const UIFontsManropeCaption1 light = _UIFontsManropeCaption1Light();
  static const UIFontsManropeCaption1 dark = _UIFontsManropeCaption1Dark();

  const UIFontsManropeCaption1._();

  ThemedTextStyle get regular;
  ThemedTextStyle get medium;
}

class _UIFontsManropeCaption1Light extends UIFontsManropeCaption1 {
  const _UIFontsManropeCaption1Light() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      height: 16.0 / 12.0,
      letterSpacing: 0.4,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      height: 16.0 / 12.0,
      letterSpacing: 0.4,
    ),
  );
}

class _UIFontsManropeCaption1Dark extends UIFontsManropeCaption1 {
  const _UIFontsManropeCaption1Dark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      height: 16.0 / 12.0,
      letterSpacing: 0.4,
    ),
  );
  @override
  ThemedTextStyle get medium => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      height: 16.0 / 12.0,
      letterSpacing: 0.4,
    ),
  );
}

abstract class UIFontsManropeCaption2 {
  static const UIFontsManropeCaption2 light = _UIFontsManropeCaption2Light();
  static const UIFontsManropeCaption2 dark = _UIFontsManropeCaption2Dark();

  const UIFontsManropeCaption2._();

  ThemedTextStyle get regular;
  ThemedTextStyle get semiBold;
}

class _UIFontsManropeCaption2Light extends UIFontsManropeCaption2 {
  const _UIFontsManropeCaption2Light() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 11.0,
      height: 14.0 / 11.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.light,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 11.0,
      height: 14.0 / 11.0,
      letterSpacing: 0.1,
    ),
  );
}

class _UIFontsManropeCaption2Dark extends UIFontsManropeCaption2 {
  const _UIFontsManropeCaption2Dark() : super._();

  @override
  ThemedTextStyle get regular => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
      fontSize: 11.0,
      height: 14.0 / 11.0,
      letterSpacing: 0.1,
    ),
  );
  @override
  ThemedTextStyle get semiBold => ThemedTextStyle(
    UI.dark,
    const TextStyle(
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
      fontSize: 11.0,
      height: 14.0 / 11.0,
      letterSpacing: 0.1,
    ),
  );
}

abstract class UIFontsManrope {
  static const UIFontsManrope light = _UIFontsManropeLight();
  static const UIFontsManrope dark = _UIFontsManropeDark();

  const UIFontsManrope._();

  UIFontsManropeLargeTitle get largeTitle;
  UIFontsManropeTitle1 get title1;
  UIFontsManropeTitle2 get title2;
  UIFontsManropeTitle3 get title3;
  UIFontsManropeHeadline get headline;
  UIFontsManropeBody get body;
  UIFontsManropeCallout get callout;
  UIFontsManropeSubhead get subhead;
  UIFontsManropeFootnote get footnote;
  UIFontsManropeCaption1 get caption1;
  UIFontsManropeCaption2 get caption2;
}

class _UIFontsManropeLight extends UIFontsManrope {
  const _UIFontsManropeLight() : super._();

  @override
  UIFontsManropeLargeTitle get largeTitle => UIFontsManropeLargeTitle.light;
  @override
  UIFontsManropeTitle1 get title1 => UIFontsManropeTitle1.light;
  @override
  UIFontsManropeTitle2 get title2 => UIFontsManropeTitle2.light;
  @override
  UIFontsManropeTitle3 get title3 => UIFontsManropeTitle3.light;
  @override
  UIFontsManropeHeadline get headline => UIFontsManropeHeadline.light;
  @override
  UIFontsManropeBody get body => UIFontsManropeBody.light;
  @override
  UIFontsManropeCallout get callout => UIFontsManropeCallout.light;
  @override
  UIFontsManropeSubhead get subhead => UIFontsManropeSubhead.light;
  @override
  UIFontsManropeFootnote get footnote => UIFontsManropeFootnote.light;
  @override
  UIFontsManropeCaption1 get caption1 => UIFontsManropeCaption1.light;
  @override
  UIFontsManropeCaption2 get caption2 => UIFontsManropeCaption2.light;
}

class _UIFontsManropeDark extends UIFontsManrope {
  const _UIFontsManropeDark() : super._();

  @override
  UIFontsManropeLargeTitle get largeTitle => UIFontsManropeLargeTitle.dark;
  @override
  UIFontsManropeTitle1 get title1 => UIFontsManropeTitle1.dark;
  @override
  UIFontsManropeTitle2 get title2 => UIFontsManropeTitle2.dark;
  @override
  UIFontsManropeTitle3 get title3 => UIFontsManropeTitle3.dark;
  @override
  UIFontsManropeHeadline get headline => UIFontsManropeHeadline.dark;
  @override
  UIFontsManropeBody get body => UIFontsManropeBody.dark;
  @override
  UIFontsManropeCallout get callout => UIFontsManropeCallout.dark;
  @override
  UIFontsManropeSubhead get subhead => UIFontsManropeSubhead.dark;
  @override
  UIFontsManropeFootnote get footnote => UIFontsManropeFootnote.dark;
  @override
  UIFontsManropeCaption1 get caption1 => UIFontsManropeCaption1.dark;
  @override
  UIFontsManropeCaption2 get caption2 => UIFontsManropeCaption2.dark;
}

abstract class UIFonts {
  static const UIFonts light = _UIFontsLight();
  static const UIFonts dark = _UIFontsDark();

  const UIFonts._();

  UIFontsManrope get manrope;
}

class _UIFontsLight extends UIFonts {
  const _UIFontsLight() : super._();

  @override
  UIFontsManrope get manrope => UIFontsManrope.light;
}

class _UIFontsDark extends UIFonts {
  const _UIFontsDark() : super._();

  @override
  UIFontsManrope get manrope => UIFontsManrope.dark;
}
