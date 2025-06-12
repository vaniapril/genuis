// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - UI generator
// **************************************************************************

import 'blurs.ui.dart';
import 'colors.ui.dart';
import 'fonts.ui.dart';
import 'icons.ui.dart';
import 'images.ui.dart';
import 'shadows.ui.dart';
import 'token_colors.ui.dart';
import 'token_heights.ui.dart';
import 'package:flutter/material.dart';

export 'token_colors.ui.dart';
export 'token_heights.ui.dart';
export 'ui_build_context_extension.ui.dart';

class UI extends ThemeExtension<UI> {
  factory UI.of(BuildContext context) {
    return Theme.of(context).extension<UI>() ?? UI.dark;
  }

  final UiBlurs blurs;
  final UiColors colors;
  final UiFonts fonts;
  final UiIcons icons;
  final UiImages images;
  final UiShadows shadows;

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
    UiBlurs? blurs,
    UiColors? colors,
    UiFonts? fonts,
    UiIcons? icons,
    UiImages? images,
    UiShadows? shadows,
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
    blurs: UiBlurs.base,
    colors: UiColors.light,
    fonts: UiFonts.base,
    icons: UiIcons.light,
    images: UiImages.base,
    shadows: UiShadows.light,
  );
  static final UI dark = UI(
    blurs: UiBlurs.base,
    colors: UiColors.dark,
    fonts: UiFonts.base,
    icons: UiIcons.dark,
    images: UiImages.base,
    shadows: UiShadows.dark,
  );
}
