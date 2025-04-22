// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: Gens - Images generator
// **************************************************************************

import 'package:flutter/material.dart';

enum Images {
  // background
  backgroundBook('${_base}background/book.jpg'),
  backgroundCat('${_base}background/cat.jpg'),
  backgroundFlowers('${_base}background/flowers.jpg'),

  // logo
  logoAbstract('${_base}logo/abstract.svg');

  static const String _base = 'packages/assets/images/';

  const Images(this.value);

  final String value;
}

class UIBackgroundImages extends ThemeExtension<UIBackgroundImages> {
  final String book;
  final String cat;
  final String flowers;

  const UIBackgroundImages({required this.book, required this.cat, required this.flowers});

  @override
  UIBackgroundImages copyWith({String? book, String? cat, String? flowers}) {
    return UIBackgroundImages(
      book: book ?? this.book,
      cat: cat ?? this.cat,
      flowers: flowers ?? this.flowers,
    );
  }

  @override
  UIBackgroundImages lerp(ThemeExtension<UIBackgroundImages>? other, double t) {
    if (other is! UIBackgroundImages) return this;
    return UIBackgroundImages(
      book: t < 0.5 ? book : other.book,
      cat: t < 0.5 ? cat : other.cat,
      flowers: t < 0.5 ? flowers : other.flowers,
    );
  }

  static final UIBackgroundImages base = UIBackgroundImages(
    book: Images.backgroundBook.value,
    cat: Images.backgroundCat.value,
    flowers: Images.backgroundFlowers.value,
  );
}

class UILogoImages extends ThemeExtension<UILogoImages> {
  final String abstract;

  const UILogoImages({required this.abstract});

  @override
  UILogoImages copyWith({String? abstract}) {
    return UILogoImages(abstract: abstract ?? this.abstract);
  }

  @override
  UILogoImages lerp(ThemeExtension<UILogoImages>? other, double t) {
    if (other is! UILogoImages) return this;
    return UILogoImages(abstract: t < 0.5 ? abstract : other.abstract);
  }

  static final UILogoImages base = UILogoImages(abstract: Images.logoAbstract.value);
}

class UIImages extends ThemeExtension<UIImages> {
  final UIBackgroundImages background;
  final UILogoImages logo;

  const UIImages({required this.background, required this.logo});

  @override
  UIImages copyWith({UIBackgroundImages? background, UILogoImages? logo}) {
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
    background: UIBackgroundImages.base,
    logo: UILogoImages.base,
  );
}
