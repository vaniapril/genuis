// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: Gens - Images generator
// **************************************************************************

import 'package:flutter/material.dart';

enum Images {
  // UI/images/background
  uIImagesBackgroundBook('${_base}Images.backgroundBook.value'),
  uIImagesBackgroundCat('${_base}Images.backgroundCat.value'),
  uIImagesBackgroundFlowers('${_base}Images.backgroundFlowers.value'),

  // UI/images/logo
  uIImagesLogoAbstract('${_base}Images.logoAbstract.value');

  static const String _base = 'assets/images/';

  const Images(this.value);

  final String value;
}

class UIImagesBackground extends ThemeExtension<UIImagesBackground> {
  final String book;
  final String cat;
  final String flowers;

  const UIImagesBackground({required this.book, required this.cat, required this.flowers});

  @override
  UIImagesBackground copyWith({String? book, String? cat, String? flowers}) {
    return UIImagesBackground(
      book: book ?? this.book,
      cat: cat ?? this.cat,
      flowers: flowers ?? this.flowers,
    );
  }

  @override
  UIImagesBackground lerp(ThemeExtension<UIImagesBackground>? other, double t) {
    if (other is! UIImagesBackground) return this;
    return UIImagesBackground(
      book: t < 0.5 ? book : other.book,
      cat: t < 0.5 ? cat : other.cat,
      flowers: t < 0.5 ? flowers : other.flowers,
    );
  }

  static final UIImagesBackground base = UIImagesBackground(
    book: Images.backgroundBook.value,
    cat: Images.backgroundCat.value,
    flowers: Images.backgroundFlowers.value,
  );
}

class UIImagesLogo extends ThemeExtension<UIImagesLogo> {
  final String abstract;

  const UIImagesLogo({required this.abstract});

  @override
  UIImagesLogo copyWith({String? abstract}) {
    return UIImagesLogo(abstract: abstract ?? this.abstract);
  }

  @override
  UIImagesLogo lerp(ThemeExtension<UIImagesLogo>? other, double t) {
    if (other is! UIImagesLogo) return this;
    return UIImagesLogo(abstract: t < 0.5 ? abstract : other.abstract);
  }

  static final UIImagesLogo base = UIImagesLogo(abstract: Images.logoAbstract.value);
}

class UIImages extends ThemeExtension<UIImages> {
  final UIImagesBackground background;
  final UIImagesLogo logo;

  const UIImages({required this.background, required this.logo});

  @override
  UIImages copyWith({UIImagesBackground? background, UIImagesLogo? logo}) {
    return UIImages(background: background ?? this.background, logo: logo ?? this.logo);
  }

  @override
  UIImages lerp(ThemeExtension<UIImages>? other, double t) {
    if (other is! UIImages) return this;
    return UIImages(
      background: background.lerp(other.background, t),
      logo: logo.lerp(other.logo, t),
    );
  }

  static final UIImages base = UIImages(
    background: UIImagesBackground.base,
    logo: UIImagesLogo.base,
  );
}

class UI extends ThemeExtension<UI> {
  final UIImages images;

  const UI({required this.images});

  @override
  UI copyWith({UIImages? images}) {
    return UI(images: images ?? this.images);
  }

  @override
  UI lerp(ThemeExtension<UI>? other, double t) {
    if (other is! UI) return this;
    return UI(images: images.lerp(other.images, t));
  }

  static final UI base = UI(images: UIImages.base);
}
