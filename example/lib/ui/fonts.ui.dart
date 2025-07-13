// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Fonts generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'ui.ui.dart';

class ThemedTextStyle extends TextStyle {
  final Color _error;
  final Color _blue;
  final Color _green;
  final Color _orange;
  final Color _red;

  ThemedTextStyle._({
    required Color error,
    required Color blue,
    required Color green,
    required Color orange,
    required Color red,
    required TextStyle style,
  }) : _error = error,
       _blue = blue,
       _green = green,
       _orange = orange,
       _red = red,
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
  ThemedTextStyle(UI ui, TextStyle style)
    : this._(
        error: ui.colors.primary.error,
        blue: ui.colors.tertiary.blue,
        green: ui.colors.tertiary.green,
        orange: ui.colors.tertiary.orange,
        red: ui.colors.tertiary.red,
        style: style,
      );

  ThemedTextStyle lerp(ThemedTextStyle other, double t) {
    return ThemedTextStyle._(
      error: Color.lerp(_error, other._error, t) ?? _error,
      blue: Color.lerp(_blue, other._blue, t) ?? _blue,
      green: Color.lerp(_green, other._green, t) ?? _green,
      orange: Color.lerp(_orange, other._orange, t) ?? _orange,
      red: Color.lerp(_red, other._red, t) ?? _red,
      style: TextStyle.lerp(this, other, t) ?? this,
    );
  }

  TextStyle get error => copyWith(color: _error);
  TextStyle get blue => copyWith(color: _blue);
  TextStyle get green => copyWith(color: _green);
  TextStyle get orange => copyWith(color: _orange);
  TextStyle get red => copyWith(color: _red);
}

class UIFontsManropeLargeTitle extends ThemeExtension<UIFontsManropeLargeTitle> {
  final ThemedTextStyle regular;
  final ThemedTextStyle bold;

  const UIFontsManropeLargeTitle({required this.regular, required this.bold});

  @override
  UIFontsManropeLargeTitle copyWith({ThemedTextStyle? regular, ThemedTextStyle? bold}) {
    return UIFontsManropeLargeTitle(regular: regular ?? this.regular, bold: bold ?? this.bold);
  }

  @override
  UIFontsManropeLargeTitle lerp(ThemeExtension<UIFontsManropeLargeTitle>? other, double t) {
    if (other is! UIFontsManropeLargeTitle) return this;
    return UIFontsManropeLargeTitle(
      regular: regular.lerp(other.regular, t),
      bold: bold.lerp(other.bold, t),
    );
  }

  static final UIFontsManropeLargeTitle light = UIFontsManropeLargeTitle(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 34.0,
        height: 40.0 / 34.0,
        letterSpacing: 0.4,
      ),
    ),
    bold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 34.0,
        height: 40.0 / 34.0,
        letterSpacing: 0.4,
      ),
    ),
  );
  static final UIFontsManropeLargeTitle dark = UIFontsManropeLargeTitle(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 34.0,
        height: 40.0 / 34.0,
        letterSpacing: 0.4,
      ),
    ),
    bold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 34.0,
        height: 40.0 / 34.0,
        letterSpacing: 0.4,
      ),
    ),
  );
}

class UIFontsManropeTitle1 extends ThemeExtension<UIFontsManropeTitle1> {
  final ThemedTextStyle regular;
  final ThemedTextStyle bold;

  const UIFontsManropeTitle1({required this.regular, required this.bold});

  @override
  UIFontsManropeTitle1 copyWith({ThemedTextStyle? regular, ThemedTextStyle? bold}) {
    return UIFontsManropeTitle1(regular: regular ?? this.regular, bold: bold ?? this.bold);
  }

  @override
  UIFontsManropeTitle1 lerp(ThemeExtension<UIFontsManropeTitle1>? other, double t) {
    if (other is! UIFontsManropeTitle1) return this;
    return UIFontsManropeTitle1(
      regular: regular.lerp(other.regular, t),
      bold: bold.lerp(other.bold, t),
    );
  }

  static final UIFontsManropeTitle1 light = UIFontsManropeTitle1(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 28.0,
        height: 34.0 / 28.0,
        letterSpacing: 0.1,
      ),
    ),
    bold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 28.0,
        height: 34.0 / 28.0,
        letterSpacing: 0.1,
      ),
    ),
  );
  static final UIFontsManropeTitle1 dark = UIFontsManropeTitle1(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 28.0,
        height: 34.0 / 28.0,
        letterSpacing: 0.1,
      ),
    ),
    bold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 28.0,
        height: 34.0 / 28.0,
        letterSpacing: 0.1,
      ),
    ),
  );
}

class UIFontsManropeTitle2 extends ThemeExtension<UIFontsManropeTitle2> {
  final ThemedTextStyle regular;
  final ThemedTextStyle bold;

  const UIFontsManropeTitle2({required this.regular, required this.bold});

  @override
  UIFontsManropeTitle2 copyWith({ThemedTextStyle? regular, ThemedTextStyle? bold}) {
    return UIFontsManropeTitle2(regular: regular ?? this.regular, bold: bold ?? this.bold);
  }

  @override
  UIFontsManropeTitle2 lerp(ThemeExtension<UIFontsManropeTitle2>? other, double t) {
    if (other is! UIFontsManropeTitle2) return this;
    return UIFontsManropeTitle2(
      regular: regular.lerp(other.regular, t),
      bold: bold.lerp(other.bold, t),
    );
  }

  static final UIFontsManropeTitle2 light = UIFontsManropeTitle2(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 22.0,
        height: 28.0 / 22.0,
        letterSpacing: -0.3,
      ),
    ),
    bold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 22.0,
        height: 28.0 / 22.0,
        letterSpacing: -0.3,
      ),
    ),
  );
  static final UIFontsManropeTitle2 dark = UIFontsManropeTitle2(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 22.0,
        height: 28.0 / 22.0,
        letterSpacing: -0.3,
      ),
    ),
    bold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 22.0,
        height: 28.0 / 22.0,
        letterSpacing: -0.3,
      ),
    ),
  );
}

class UIFontsManropeTitle3 extends ThemeExtension<UIFontsManropeTitle3> {
  final ThemedTextStyle regular;
  final ThemedTextStyle semiBold;

  const UIFontsManropeTitle3({required this.regular, required this.semiBold});

  @override
  UIFontsManropeTitle3 copyWith({ThemedTextStyle? regular, ThemedTextStyle? semiBold}) {
    return UIFontsManropeTitle3(
      regular: regular ?? this.regular,
      semiBold: semiBold ?? this.semiBold,
    );
  }

  @override
  UIFontsManropeTitle3 lerp(ThemeExtension<UIFontsManropeTitle3>? other, double t) {
    if (other is! UIFontsManropeTitle3) return this;
    return UIFontsManropeTitle3(
      regular: regular.lerp(other.regular, t),
      semiBold: semiBold.lerp(other.semiBold, t),
    );
  }

  static final UIFontsManropeTitle3 light = UIFontsManropeTitle3(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        height: 24.0 / 20.0,
        letterSpacing: -0.5,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        height: 24.0 / 20.0,
        letterSpacing: -0.5,
      ),
    ),
  );
  static final UIFontsManropeTitle3 dark = UIFontsManropeTitle3(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        height: 24.0 / 20.0,
        letterSpacing: -0.5,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        height: 24.0 / 20.0,
        letterSpacing: -0.5,
      ),
    ),
  );
}

class UIFontsManropeHeadline extends ThemeExtension<UIFontsManropeHeadline> {
  final ThemedTextStyle semiBold;
  final ThemedTextStyle regular;

  const UIFontsManropeHeadline({required this.semiBold, required this.regular});

  @override
  UIFontsManropeHeadline copyWith({ThemedTextStyle? semiBold, ThemedTextStyle? regular}) {
    return UIFontsManropeHeadline(
      semiBold: semiBold ?? this.semiBold,
      regular: regular ?? this.regular,
    );
  }

  @override
  UIFontsManropeHeadline lerp(ThemeExtension<UIFontsManropeHeadline>? other, double t) {
    if (other is! UIFontsManropeHeadline) return this;
    return UIFontsManropeHeadline(
      semiBold: semiBold.lerp(other.semiBold, t),
      regular: regular.lerp(other.regular, t),
    );
  }

  static final UIFontsManropeHeadline light = UIFontsManropeHeadline(
    semiBold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
        height: 22.0 / 17.0,
        letterSpacing: -0.4,
      ),
    ),
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 17.0,
        height: 22.0 / 17.0,
        letterSpacing: -0.4,
      ),
    ),
  );
  static final UIFontsManropeHeadline dark = UIFontsManropeHeadline(
    semiBold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
        height: 22.0 / 17.0,
        letterSpacing: -0.4,
      ),
    ),
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 17.0,
        height: 22.0 / 17.0,
        letterSpacing: -0.4,
      ),
    ),
  );
}

class UIFontsManropeBody extends ThemeExtension<UIFontsManropeBody> {
  final ThemedTextStyle regular;
  final ThemedTextStyle medium;
  final ThemedTextStyle semiBold;
  final ThemedTextStyle bold;

  const UIFontsManropeBody({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  @override
  UIFontsManropeBody copyWith({
    ThemedTextStyle? regular,
    ThemedTextStyle? medium,
    ThemedTextStyle? semiBold,
    ThemedTextStyle? bold,
  }) {
    return UIFontsManropeBody(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semiBold: semiBold ?? this.semiBold,
      bold: bold ?? this.bold,
    );
  }

  @override
  UIFontsManropeBody lerp(ThemeExtension<UIFontsManropeBody>? other, double t) {
    if (other is! UIFontsManropeBody) return this;
    return UIFontsManropeBody(
      regular: regular.lerp(other.regular, t),
      medium: medium.lerp(other.medium, t),
      semiBold: semiBold.lerp(other.semiBold, t),
      bold: bold.lerp(other.bold, t),
    );
  }

  static final UIFontsManropeBody light = UIFontsManropeBody(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
    medium: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
    bold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
  );
  static final UIFontsManropeBody dark = UIFontsManropeBody(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
    medium: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
    bold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w700,
        fontSize: 16.0,
        height: 22.0 / 16.0,
        letterSpacing: 0.1,
      ),
    ),
  );
}

class UIFontsManropeCallout extends ThemeExtension<UIFontsManropeCallout> {
  final ThemedTextStyle regular;
  final ThemedTextStyle semiBold;

  const UIFontsManropeCallout({required this.regular, required this.semiBold});

  @override
  UIFontsManropeCallout copyWith({ThemedTextStyle? regular, ThemedTextStyle? semiBold}) {
    return UIFontsManropeCallout(
      regular: regular ?? this.regular,
      semiBold: semiBold ?? this.semiBold,
    );
  }

  @override
  UIFontsManropeCallout lerp(ThemeExtension<UIFontsManropeCallout>? other, double t) {
    if (other is! UIFontsManropeCallout) return this;
    return UIFontsManropeCallout(
      regular: regular.lerp(other.regular, t),
      semiBold: semiBold.lerp(other.semiBold, t),
    );
  }

  static final UIFontsManropeCallout light = UIFontsManropeCallout(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 20.0 / 16.0,
        letterSpacing: 0.0,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 20.0 / 16.0,
        letterSpacing: 0.0,
      ),
    ),
  );
  static final UIFontsManropeCallout dark = UIFontsManropeCallout(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 20.0 / 16.0,
        letterSpacing: 0.0,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 20.0 / 16.0,
        letterSpacing: 0.0,
      ),
    ),
  );
}

class UIFontsManropeSubhead extends ThemeExtension<UIFontsManropeSubhead> {
  final ThemedTextStyle regular;
  final ThemedTextStyle medium;
  final ThemedTextStyle semiBold;

  const UIFontsManropeSubhead({
    required this.regular,
    required this.medium,
    required this.semiBold,
  });

  @override
  UIFontsManropeSubhead copyWith({
    ThemedTextStyle? regular,
    ThemedTextStyle? medium,
    ThemedTextStyle? semiBold,
  }) {
    return UIFontsManropeSubhead(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semiBold: semiBold ?? this.semiBold,
    );
  }

  @override
  UIFontsManropeSubhead lerp(ThemeExtension<UIFontsManropeSubhead>? other, double t) {
    if (other is! UIFontsManropeSubhead) return this;
    return UIFontsManropeSubhead(
      regular: regular.lerp(other.regular, t),
      medium: medium.lerp(other.medium, t),
      semiBold: semiBold.lerp(other.semiBold, t),
    );
  }

  static final UIFontsManropeSubhead light = UIFontsManropeSubhead(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        height: 20.0 / 15.0,
        letterSpacing: 0.0,
      ),
    ),
    medium: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        height: 20.0 / 15.0,
        letterSpacing: 0.0,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 15.0,
        height: 20.0 / 15.0,
        letterSpacing: 0.0,
      ),
    ),
  );
  static final UIFontsManropeSubhead dark = UIFontsManropeSubhead(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        height: 20.0 / 15.0,
        letterSpacing: 0.0,
      ),
    ),
    medium: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        height: 20.0 / 15.0,
        letterSpacing: 0.0,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 15.0,
        height: 20.0 / 15.0,
        letterSpacing: 0.0,
      ),
    ),
  );
}

class UIFontsManropeFootnote extends ThemeExtension<UIFontsManropeFootnote> {
  final ThemedTextStyle regular;
  final ThemedTextStyle medium;
  final ThemedTextStyle semiBold;
  final ThemedTextStyle semiBoldUC;

  const UIFontsManropeFootnote({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.semiBoldUC,
  });

  @override
  UIFontsManropeFootnote copyWith({
    ThemedTextStyle? regular,
    ThemedTextStyle? medium,
    ThemedTextStyle? semiBold,
    ThemedTextStyle? semiBoldUC,
  }) {
    return UIFontsManropeFootnote(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semiBold: semiBold ?? this.semiBold,
      semiBoldUC: semiBoldUC ?? this.semiBoldUC,
    );
  }

  @override
  UIFontsManropeFootnote lerp(ThemeExtension<UIFontsManropeFootnote>? other, double t) {
    if (other is! UIFontsManropeFootnote) return this;
    return UIFontsManropeFootnote(
      regular: regular.lerp(other.regular, t),
      medium: medium.lerp(other.medium, t),
      semiBold: semiBold.lerp(other.semiBold, t),
      semiBoldUC: semiBoldUC.lerp(other.semiBoldUC, t),
    );
  }

  static final UIFontsManropeFootnote light = UIFontsManropeFootnote(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
    medium: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBoldUC: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
  );
  static final UIFontsManropeFootnote dark = UIFontsManropeFootnote(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
    medium: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBoldUC: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 13.0,
        height: 16.0 / 13.0,
        letterSpacing: 0.1,
      ),
    ),
  );
}

class UIFontsManropeCaption1 extends ThemeExtension<UIFontsManropeCaption1> {
  final ThemedTextStyle regular;
  final ThemedTextStyle medium;

  const UIFontsManropeCaption1({required this.regular, required this.medium});

  @override
  UIFontsManropeCaption1 copyWith({ThemedTextStyle? regular, ThemedTextStyle? medium}) {
    return UIFontsManropeCaption1(regular: regular ?? this.regular, medium: medium ?? this.medium);
  }

  @override
  UIFontsManropeCaption1 lerp(ThemeExtension<UIFontsManropeCaption1>? other, double t) {
    if (other is! UIFontsManropeCaption1) return this;
    return UIFontsManropeCaption1(
      regular: regular.lerp(other.regular, t),
      medium: medium.lerp(other.medium, t),
    );
  }

  static final UIFontsManropeCaption1 light = UIFontsManropeCaption1(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 16.0 / 12.0,
        letterSpacing: 0.4,
      ),
    ),
    medium: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 16.0 / 12.0,
        letterSpacing: 0.4,
      ),
    ),
  );
  static final UIFontsManropeCaption1 dark = UIFontsManropeCaption1(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 16.0 / 12.0,
        letterSpacing: 0.4,
      ),
    ),
    medium: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 16.0 / 12.0,
        letterSpacing: 0.4,
      ),
    ),
  );
}

class UIFontsManropeCaption2 extends ThemeExtension<UIFontsManropeCaption2> {
  final ThemedTextStyle regular;
  final ThemedTextStyle semiBold;

  const UIFontsManropeCaption2({required this.regular, required this.semiBold});

  @override
  UIFontsManropeCaption2 copyWith({ThemedTextStyle? regular, ThemedTextStyle? semiBold}) {
    return UIFontsManropeCaption2(
      regular: regular ?? this.regular,
      semiBold: semiBold ?? this.semiBold,
    );
  }

  @override
  UIFontsManropeCaption2 lerp(ThemeExtension<UIFontsManropeCaption2>? other, double t) {
    if (other is! UIFontsManropeCaption2) return this;
    return UIFontsManropeCaption2(
      regular: regular.lerp(other.regular, t),
      semiBold: semiBold.lerp(other.semiBold, t),
    );
  }

  static final UIFontsManropeCaption2 light = UIFontsManropeCaption2(
    regular: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 11.0,
        height: 14.0 / 11.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 11.0,
        height: 14.0 / 11.0,
        letterSpacing: 0.1,
      ),
    ),
  );
  static final UIFontsManropeCaption2 dark = UIFontsManropeCaption2(
    regular: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 11.0,
        height: 14.0 / 11.0,
        letterSpacing: 0.1,
      ),
    ),
    semiBold: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
        fontSize: 11.0,
        height: 14.0 / 11.0,
        letterSpacing: 0.1,
      ),
    ),
  );
}

class UIFontsManrope extends ThemeExtension<UIFontsManrope> {
  final UIFontsManropeLargeTitle largeTitle;
  final UIFontsManropeTitle1 title1;
  final UIFontsManropeTitle2 title2;
  final UIFontsManropeTitle3 title3;
  final UIFontsManropeHeadline headline;
  final UIFontsManropeBody body;
  final UIFontsManropeCallout callout;
  final UIFontsManropeSubhead subhead;
  final UIFontsManropeFootnote footnote;
  final UIFontsManropeCaption1 caption1;
  final UIFontsManropeCaption2 caption2;

  const UIFontsManrope({
    required this.largeTitle,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.headline,
    required this.body,
    required this.callout,
    required this.subhead,
    required this.footnote,
    required this.caption1,
    required this.caption2,
  });

  @override
  UIFontsManrope copyWith({
    UIFontsManropeLargeTitle? largeTitle,
    UIFontsManropeTitle1? title1,
    UIFontsManropeTitle2? title2,
    UIFontsManropeTitle3? title3,
    UIFontsManropeHeadline? headline,
    UIFontsManropeBody? body,
    UIFontsManropeCallout? callout,
    UIFontsManropeSubhead? subhead,
    UIFontsManropeFootnote? footnote,
    UIFontsManropeCaption1? caption1,
    UIFontsManropeCaption2? caption2,
  }) {
    return UIFontsManrope(
      largeTitle: largeTitle ?? this.largeTitle,
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      headline: headline ?? this.headline,
      body: body ?? this.body,
      callout: callout ?? this.callout,
      subhead: subhead ?? this.subhead,
      footnote: footnote ?? this.footnote,
      caption1: caption1 ?? this.caption1,
      caption2: caption2 ?? this.caption2,
    );
  }

  @override
  UIFontsManrope lerp(ThemeExtension<UIFontsManrope>? other, double t) {
    if (other is! UIFontsManrope) return this;
    return UIFontsManrope(
      largeTitle: largeTitle.lerp(other.largeTitle, t),
      title1: title1.lerp(other.title1, t),
      title2: title2.lerp(other.title2, t),
      title3: title3.lerp(other.title3, t),
      headline: headline.lerp(other.headline, t),
      body: body.lerp(other.body, t),
      callout: callout.lerp(other.callout, t),
      subhead: subhead.lerp(other.subhead, t),
      footnote: footnote.lerp(other.footnote, t),
      caption1: caption1.lerp(other.caption1, t),
      caption2: caption2.lerp(other.caption2, t),
    );
  }

  static final UIFontsManrope light = UIFontsManrope(
    largeTitle: UIFontsManropeLargeTitle.light,
    title1: UIFontsManropeTitle1.light,
    title2: UIFontsManropeTitle2.light,
    title3: UIFontsManropeTitle3.light,
    headline: UIFontsManropeHeadline.light,
    body: UIFontsManropeBody.light,
    callout: UIFontsManropeCallout.light,
    subhead: UIFontsManropeSubhead.light,
    footnote: UIFontsManropeFootnote.light,
    caption1: UIFontsManropeCaption1.light,
    caption2: UIFontsManropeCaption2.light,
  );
  static final UIFontsManrope dark = UIFontsManrope(
    largeTitle: UIFontsManropeLargeTitle.dark,
    title1: UIFontsManropeTitle1.dark,
    title2: UIFontsManropeTitle2.dark,
    title3: UIFontsManropeTitle3.dark,
    headline: UIFontsManropeHeadline.dark,
    body: UIFontsManropeBody.dark,
    callout: UIFontsManropeCallout.dark,
    subhead: UIFontsManropeSubhead.dark,
    footnote: UIFontsManropeFootnote.dark,
    caption1: UIFontsManropeCaption1.dark,
    caption2: UIFontsManropeCaption2.dark,
  );
}

class UIFontsRoboto extends ThemeExtension<UIFontsRoboto> {
  final ThemedTextStyle title48S;
  final ThemedTextStyle title40L;
  final ThemedTextStyle title34X;
  final ThemedTextStyle title34M;
  final ThemedTextStyle title34L;
  final ThemedTextStyle title26M;
  final ThemedTextStyle title26R;
  final ThemedTextStyle title26L;
  final ThemedTextStyle title20S;
  final ThemedTextStyle title20M;
  final ThemedTextStyle title20R;
  final ThemedTextStyle title20L;
  final ThemedTextStyle title18M;
  final ThemedTextStyle title18R;
  final ThemedTextStyle title18L;
  final ThemedTextStyle body16M;
  final ThemedTextStyle body16R;
  final ThemedTextStyle body16L;
  final ThemedTextStyle body14M;
  final ThemedTextStyle body14R;
  final ThemedTextStyle body14L;
  final ThemedTextStyle body14I;
  final ThemedTextStyle caption12M;
  final ThemedTextStyle caption12R;
  final ThemedTextStyle caption12L;
  final ThemedTextStyle caption10X;
  final ThemedTextStyle caption10R;
  final ThemedTextStyle caption8R;
  final ThemedTextStyle caption8M;
  final ThemedTextStyle button16M;
  final ThemedTextStyle button16R;
  final ThemedTextStyle button14M;
  final ThemedTextStyle button14R;
  final ThemedTextStyle button12M;

  const UIFontsRoboto({
    required this.title48S,
    required this.title40L,
    required this.title34X,
    required this.title34M,
    required this.title34L,
    required this.title26M,
    required this.title26R,
    required this.title26L,
    required this.title20S,
    required this.title20M,
    required this.title20R,
    required this.title20L,
    required this.title18M,
    required this.title18R,
    required this.title18L,
    required this.body16M,
    required this.body16R,
    required this.body16L,
    required this.body14M,
    required this.body14R,
    required this.body14L,
    required this.body14I,
    required this.caption12M,
    required this.caption12R,
    required this.caption12L,
    required this.caption10X,
    required this.caption10R,
    required this.caption8R,
    required this.caption8M,
    required this.button16M,
    required this.button16R,
    required this.button14M,
    required this.button14R,
    required this.button12M,
  });

  @override
  UIFontsRoboto copyWith({
    ThemedTextStyle? title48S,
    ThemedTextStyle? title40L,
    ThemedTextStyle? title34X,
    ThemedTextStyle? title34M,
    ThemedTextStyle? title34L,
    ThemedTextStyle? title26M,
    ThemedTextStyle? title26R,
    ThemedTextStyle? title26L,
    ThemedTextStyle? title20S,
    ThemedTextStyle? title20M,
    ThemedTextStyle? title20R,
    ThemedTextStyle? title20L,
    ThemedTextStyle? title18M,
    ThemedTextStyle? title18R,
    ThemedTextStyle? title18L,
    ThemedTextStyle? body16M,
    ThemedTextStyle? body16R,
    ThemedTextStyle? body16L,
    ThemedTextStyle? body14M,
    ThemedTextStyle? body14R,
    ThemedTextStyle? body14L,
    ThemedTextStyle? body14I,
    ThemedTextStyle? caption12M,
    ThemedTextStyle? caption12R,
    ThemedTextStyle? caption12L,
    ThemedTextStyle? caption10X,
    ThemedTextStyle? caption10R,
    ThemedTextStyle? caption8R,
    ThemedTextStyle? caption8M,
    ThemedTextStyle? button16M,
    ThemedTextStyle? button16R,
    ThemedTextStyle? button14M,
    ThemedTextStyle? button14R,
    ThemedTextStyle? button12M,
  }) {
    return UIFontsRoboto(
      title48S: title48S ?? this.title48S,
      title40L: title40L ?? this.title40L,
      title34X: title34X ?? this.title34X,
      title34M: title34M ?? this.title34M,
      title34L: title34L ?? this.title34L,
      title26M: title26M ?? this.title26M,
      title26R: title26R ?? this.title26R,
      title26L: title26L ?? this.title26L,
      title20S: title20S ?? this.title20S,
      title20M: title20M ?? this.title20M,
      title20R: title20R ?? this.title20R,
      title20L: title20L ?? this.title20L,
      title18M: title18M ?? this.title18M,
      title18R: title18R ?? this.title18R,
      title18L: title18L ?? this.title18L,
      body16M: body16M ?? this.body16M,
      body16R: body16R ?? this.body16R,
      body16L: body16L ?? this.body16L,
      body14M: body14M ?? this.body14M,
      body14R: body14R ?? this.body14R,
      body14L: body14L ?? this.body14L,
      body14I: body14I ?? this.body14I,
      caption12M: caption12M ?? this.caption12M,
      caption12R: caption12R ?? this.caption12R,
      caption12L: caption12L ?? this.caption12L,
      caption10X: caption10X ?? this.caption10X,
      caption10R: caption10R ?? this.caption10R,
      caption8R: caption8R ?? this.caption8R,
      caption8M: caption8M ?? this.caption8M,
      button16M: button16M ?? this.button16M,
      button16R: button16R ?? this.button16R,
      button14M: button14M ?? this.button14M,
      button14R: button14R ?? this.button14R,
      button12M: button12M ?? this.button12M,
    );
  }

  @override
  UIFontsRoboto lerp(ThemeExtension<UIFontsRoboto>? other, double t) {
    if (other is! UIFontsRoboto) return this;
    return UIFontsRoboto(
      title48S: title48S.lerp(other.title48S, t),
      title40L: title40L.lerp(other.title40L, t),
      title34X: title34X.lerp(other.title34X, t),
      title34M: title34M.lerp(other.title34M, t),
      title34L: title34L.lerp(other.title34L, t),
      title26M: title26M.lerp(other.title26M, t),
      title26R: title26R.lerp(other.title26R, t),
      title26L: title26L.lerp(other.title26L, t),
      title20S: title20S.lerp(other.title20S, t),
      title20M: title20M.lerp(other.title20M, t),
      title20R: title20R.lerp(other.title20R, t),
      title20L: title20L.lerp(other.title20L, t),
      title18M: title18M.lerp(other.title18M, t),
      title18R: title18R.lerp(other.title18R, t),
      title18L: title18L.lerp(other.title18L, t),
      body16M: body16M.lerp(other.body16M, t),
      body16R: body16R.lerp(other.body16R, t),
      body16L: body16L.lerp(other.body16L, t),
      body14M: body14M.lerp(other.body14M, t),
      body14R: body14R.lerp(other.body14R, t),
      body14L: body14L.lerp(other.body14L, t),
      body14I: body14I.lerp(other.body14I, t),
      caption12M: caption12M.lerp(other.caption12M, t),
      caption12R: caption12R.lerp(other.caption12R, t),
      caption12L: caption12L.lerp(other.caption12L, t),
      caption10X: caption10X.lerp(other.caption10X, t),
      caption10R: caption10R.lerp(other.caption10R, t),
      caption8R: caption8R.lerp(other.caption8R, t),
      caption8M: caption8M.lerp(other.caption8M, t),
      button16M: button16M.lerp(other.button16M, t),
      button16R: button16R.lerp(other.button16R, t),
      button14M: button14M.lerp(other.button14M, t),
      button14R: button14R.lerp(other.button14R, t),
      button12M: button12M.lerp(other.button12M, t),
    );
  }

  static final UIFontsRoboto light = UIFontsRoboto(
    title48S: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        fontSize: 48.0,
        height: 64.0 / 48.0,
      ),
    ),
    title40L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 40.0,
        height: 48.0 / 40.0,
      ),
    ),
    title34X: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 34.0,
        height: 34.0 / 34.0,
      ),
    ),
    title34M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 34.0,
        height: 48.0 / 34.0,
      ),
    ),
    title34L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 34.0,
        height: 48.0 / 34.0,
      ),
    ),
    title26M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 26.0,
        height: 32.0 / 26.0,
      ),
    ),
    title26R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 26.0,
        height: 32.0 / 26.0,
      ),
    ),
    title26L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 26.0,
        height: 32.0 / 26.0,
      ),
    ),
    title20S: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title20M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title20R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title20L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title18M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
        height: 28.0 / 18.0,
      ),
    ),
    title18R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 18.0,
        height: 28.0 / 18.0,
      ),
    ),
    title18L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 18.0,
        height: 28.0 / 18.0,
      ),
    ),
    body16M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
    ),
    body16R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
    ),
    body16L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
    ),
    body14M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
    ),
    body14R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
    ),
    body14L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
    ),
    body14I: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 20.0 / 14.0,
        fontStyle: FontStyle.italic,
      ),
    ),
    caption12M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 16.0 / 12.0,
      ),
    ),
    caption12R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 16.0 / 12.0,
      ),
    ),
    caption12L: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 12.0,
        height: 16.0 / 12.0,
      ),
    ),
    caption10X: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 10.0,
        height: 10.0 / 10.0,
      ),
    ),
    caption10R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 10.0,
        height: 12.0 / 10.0,
      ),
    ),
    caption8R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 8.0,
        height: 10.0 / 8.0,
      ),
    ),
    caption8M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 8.0,
        height: 10.0 / 8.0,
      ),
    ),
    button16M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        height: 20.0 / 16.0,
      ),
    ),
    button16R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 20.0 / 16.0,
      ),
    ),
    button14M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 16.0 / 14.0,
      ),
    ),
    button14R: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 16.0 / 14.0,
      ),
    ),
    button12M: ThemedTextStyle(
      UI.light,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 20.0 / 12.0,
      ),
    ),
  );
  static final UIFontsRoboto dark = UIFontsRoboto(
    title48S: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        fontSize: 48.0,
        height: 64.0 / 48.0,
      ),
    ),
    title40L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 40.0,
        height: 48.0 / 40.0,
      ),
    ),
    title34X: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 34.0,
        height: 34.0 / 34.0,
      ),
    ),
    title34M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 34.0,
        height: 48.0 / 34.0,
      ),
    ),
    title34L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 34.0,
        height: 48.0 / 34.0,
      ),
    ),
    title26M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 26.0,
        height: 32.0 / 26.0,
      ),
    ),
    title26R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 26.0,
        height: 32.0 / 26.0,
      ),
    ),
    title26L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 26.0,
        height: 32.0 / 26.0,
      ),
    ),
    title20S: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title20M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title20R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title20L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 20.0,
        height: 30.0 / 20.0,
      ),
    ),
    title18M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
        height: 28.0 / 18.0,
      ),
    ),
    title18R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 18.0,
        height: 28.0 / 18.0,
      ),
    ),
    title18L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 18.0,
        height: 28.0 / 18.0,
      ),
    ),
    body16M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
    ),
    body16R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
    ),
    body16L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
    ),
    body14M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
    ),
    body14R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
    ),
    body14L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
    ),
    body14I: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 20.0 / 14.0,
        fontStyle: FontStyle.italic,
      ),
    ),
    caption12M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 16.0 / 12.0,
      ),
    ),
    caption12R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 16.0 / 12.0,
      ),
    ),
    caption12L: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 12.0,
        height: 16.0 / 12.0,
      ),
    ),
    caption10X: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 10.0,
        height: 10.0 / 10.0,
      ),
    ),
    caption10R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 10.0,
        height: 12.0 / 10.0,
      ),
    ),
    caption8R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 8.0,
        height: 10.0 / 8.0,
      ),
    ),
    caption8M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 8.0,
        height: 10.0 / 8.0,
      ),
    ),
    button16M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        height: 20.0 / 16.0,
      ),
    ),
    button16R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 20.0 / 16.0,
      ),
    ),
    button14M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 16.0 / 14.0,
      ),
    ),
    button14R: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 16.0 / 14.0,
      ),
    ),
    button12M: ThemedTextStyle(
      UI.dark,
      const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 20.0 / 12.0,
      ),
    ),
  );
}

class UIFonts extends ThemeExtension<UIFonts> {
  final UIFontsManrope manrope;
  final UIFontsRoboto roboto;

  const UIFonts({required this.manrope, required this.roboto});

  @override
  UIFonts copyWith({UIFontsManrope? manrope, UIFontsRoboto? roboto}) {
    return UIFonts(manrope: manrope ?? this.manrope, roboto: roboto ?? this.roboto);
  }

  @override
  UIFonts lerp(ThemeExtension<UIFonts>? other, double t) {
    if (other is! UIFonts) return this;
    return UIFonts(manrope: manrope.lerp(other.manrope, t), roboto: roboto.lerp(other.roboto, t));
  }

  static final UIFonts light = UIFonts(manrope: UIFontsManrope.light, roboto: UIFontsRoboto.light);
  static final UIFonts dark = UIFonts(manrope: UIFontsManrope.dark, roboto: UIFontsRoboto.dark);
}
