// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Images generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'UI.ui.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;
import 'dart:ui';

enum Images {
  // images
  backgroundBook('background/book.jpg'),
  backgroundCat('background/cat.jpg'),
  backgroundFlowers('background/flowers.jpg'),
  logoAbstract_('logo/abstract.svg');

  const Images(this.value);

  final String value;
}

class UiImagesBackground extends ThemeExtension<UiImagesBackground> {
  final String book;
  final String cat;
  final String flowers;

  const UiImagesBackground({required this.book, required this.cat, required this.flowers});

  @override
  UiImagesBackground copyWith({String? book, String? cat, String? flowers}) {
    return UiImagesBackground(
      book: book ?? this.book,
      cat: cat ?? this.cat,
      flowers: flowers ?? this.flowers,
    );
  }

  @override
  UiImagesBackground lerp(ThemeExtension<UiImagesBackground>? other, double t) {
    if (other is! UiImagesBackground) return this;
    return UiImagesBackground(
      book: t < 0.5 ? book : other.book,
      cat: t < 0.5 ? cat : other.cat,
      flowers: t < 0.5 ? flowers : other.flowers,
    );
  }

  static final UiImagesBackground base = UiImagesBackground(
    book: Images.backgroundBook.value,
    cat: Images.backgroundCat.value,
    flowers: Images.backgroundFlowers.value,
  );
}

class UiImagesLogo extends ThemeExtension<UiImagesLogo> {
  final String abstract_;

  const UiImagesLogo({required this.abstract_});

  @override
  UiImagesLogo copyWith({String? abstract_}) {
    return UiImagesLogo(abstract_: abstract_ ?? this.abstract_);
  }

  @override
  UiImagesLogo lerp(ThemeExtension<UiImagesLogo>? other, double t) {
    if (other is! UiImagesLogo) return this;
    return UiImagesLogo(abstract_: t < 0.5 ? abstract_ : other.abstract_);
  }

  static final UiImagesLogo base = UiImagesLogo(abstract_: Images.logoAbstract_.value);
}

class UiImages extends ThemeExtension<UiImages> {
  final UiImagesBackground background;
  final UiImagesLogo logo;

  const UiImages({required this.background, required this.logo});

  @override
  UiImages copyWith({UiImagesBackground? background, UiImagesLogo? logo}) {
    return UiImages(background: background ?? this.background, logo: logo ?? this.logo);
  }

  @override
  UiImages lerp(ThemeExtension<UiImages>? other, double t) {
    if (other is! UiImages) return this;
    return UiImages(
      background: background.lerp(other.background, t),
      logo: logo.lerp(other.logo, t),
    );
  }

  static final UiImages base = UiImages(
    background: UiImagesBackground.base,
    logo: UiImagesLogo.base,
  );
}
