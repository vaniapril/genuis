// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - ui generator
// **************************************************************************

// ignore_for_file: unused_import

import 'blurs.ui.dart';
import 'colors.ui.dart';
import 'fonts.ui.dart';
import 'icons.ui.dart';
import 'images.ui.dart';
import 'shadows.ui.dart';
import 'token_colors.ui.dart';
import 'token_heights.ui.dart';
import 'token_strings.ui.dart';
import 'package:flutter/material.dart';

export 'blurs.ui.dart';
export 'colors.ui.dart';
export 'fonts.ui.dart';
export 'icons.ui.dart';
export 'images.ui.dart';
export 'shadows.ui.dart';
export 'token_colors.ui.dart';
export 'token_heights.ui.dart';
export 'token_strings.ui.dart';
export 'build_context_extension.ui.dart';

class UI extends ThemeExtension<UI> {
  final UIBlurs blurs;
  final UIColors colors;
  final UIFonts fonts;
  final UIIcons icons;
  final UIImages images;
  final UIShadows shadows;

  const UI({
    required this.blurs,
    required this.colors,
    required this.fonts,
    required this.icons,
    required this.images,
    required this.shadows,
  });

  @override
  UI copyWith({
    UIBlurs? blurs,
    UIColors? colors,
    UIFonts? fonts,
    UIIcons? icons,
    UIImages? images,
    UIShadows? shadows,
  }) {
    return UI(
      blurs: blurs ?? this.blurs,
      colors: colors ?? this.colors,
      fonts: fonts ?? this.fonts,
      icons: icons ?? this.icons,
      images: images ?? this.images,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  UI lerp(ThemeExtension<UI>? other, double t) {
    if (other is! UI) return this;
    if (identical(this, other)) return this;
    return UI(
      blurs: blurs.lerp(other.blurs, t),
      colors: colors.lerp(other.colors, t),
      fonts: fonts.lerp(other.fonts, t),
      icons: icons.lerp(other.icons, t),
      images: images.lerp(other.images, t),
      shadows: shadows.lerp(other.shadows, t),
    );
  }

  static final UI light = UI(
    blurs: UIBlurs.base,
    colors: UIColors.light,
    fonts: UIFonts.light,
    icons: UIIcons.light,
    images: UIImages.light,
    shadows: UIShadows.light,
  );
  static final UI dark = UI(
    blurs: UIBlurs.base,
    colors: UIColors.dark,
    fonts: UIFonts.dark,
    icons: UIIcons.dark,
    images: UIImages.dark,
    shadows: UIShadows.dark,
  );

  factory UI.of(BuildContext context) {
    return Theme.of(context).extension<UI>() ?? UI.light;
  }
}
