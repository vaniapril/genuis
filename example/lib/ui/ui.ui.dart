// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: Gens - Ui generator
// **************************************************************************

import 'colors.ui.dart';
import 'fonts.ui.dart';
import 'blurs.ui.dart';
import 'icons.ui.dart';
import 'images.ui.dart';
import 'shadows.ui.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

export 'dimens.ui.dart';
export 'ui_build_context_extension.ui.dart';

class UI extends ThemeExtension<UI> {
  factory UI.ofGlobalContext() {
    final BuildContext? context = appLocator<AppRouter>().navigatorKey.currentContext;
    if (context == null) {
      return UI.dark;
    }
    return UI.of(context);
  }

  factory UI.of(BuildContext context) {
    return Theme.of(context).extension<UI>() ?? UI.dark;
  }

  final UIColors colors;
  final UIFonts fonts;
  final UIBlurs blurs;
  final UIIcons icons;
  final UIImages images;
  final UIShadows shadows;

  const UI({
    required this.colors,
    required this.fonts,
    required this.blurs,
    required this.icons,
    required this.images,
    required this.shadows,
  });

  @override
  UI copyWith({
    UIColors? colors,
    UIFonts? fonts,
    UIBlurs? blurs,
    UIIcons? icons,
    UIImages? images,
    UIShadows? shadows,
  }) {
    return UI(
      colors: colors ?? this.colors,
      fonts: fonts ?? this.fonts,
      blurs: blurs ?? this.blurs,
      icons: icons ?? this.icons,
      images: images ?? this.images,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  UI lerp(ThemeExtension<UI>? other, double t) {
    if (other is! UI) return this;
    return UI(
      colors: colors.lerp(other.colors, t),
      fonts: fonts.lerp(other.fonts, t),
      blurs: blurs.lerp(other.blurs, t),
      icons: icons.lerp(other.icons, t),
      images: images.lerp(other.images, t),
      shadows: shadows.lerp(other.shadows, t),
    );
  }

  static final UI light = UI(
    colors: UIColors.light,
    fonts: UIFonts.base,
    blurs: UIBlurs.base,
    icons: UIIcons.base,
    images: UIImages.base,
    shadows: UIShadows.light,
  );
  static final UI dark = UI(
    colors: UIColors.dark,
    fonts: UIFonts.base,
    blurs: UIBlurs.base,
    icons: UIIcons.base,
    images: UIImages.base,
    shadows: UIShadows.dark,
  );
}
