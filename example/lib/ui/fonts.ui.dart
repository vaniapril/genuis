// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Fonts generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'ui.ui.dart';

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

class UIFonts extends ThemeExtension<UIFonts> {
  final UIFontsManrope manrope;

  const UIFonts({required this.manrope});

  @override
  UIFonts copyWith({UIFontsManrope? manrope}) {
    return UIFonts(manrope: manrope ?? this.manrope);
  }

  @override
  UIFonts lerp(ThemeExtension<UIFonts>? other, double t) {
    if (other is! UIFonts) return this;
    return UIFonts(manrope: manrope.lerp(other.manrope, t));
  }

  static final UIFonts light = UIFonts(manrope: UIFontsManrope.light);
  static final UIFonts dark = UIFonts(manrope: UIFontsManrope.dark);
}
