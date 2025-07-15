// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Images generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';

abstract class AppImages {
  static const String backgroundBook = 'background/book.jpg';
  static const String backgroundCat = 'background/cat.jpg';
  static const String backgroundFlowers = 'background/flowers.jpg';
  static const String logoAbstract_ = 'logo/abstract.svg';
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
    if (identical(this, other)) return this;
    return UIImagesBackground(
      book: t < 0.5 ? book : other.book,
      cat: t < 0.5 ? cat : other.cat,
      flowers: t < 0.5 ? flowers : other.flowers,
    );
  }

  static final UIImagesBackground base = UIImagesBackground(
    book: AppImages.backgroundBook,
    cat: AppImages.backgroundCat,
    flowers: AppImages.backgroundFlowers,
  );
}

class UIImagesLogo extends ThemeExtension<UIImagesLogo> {
  final String abstract_;

  const UIImagesLogo({required this.abstract_});

  @override
  UIImagesLogo copyWith({String? abstract_}) {
    return UIImagesLogo(abstract_: abstract_ ?? this.abstract_);
  }

  @override
  UIImagesLogo lerp(ThemeExtension<UIImagesLogo>? other, double t) {
    if (other is! UIImagesLogo) return this;
    if (identical(this, other)) return this;
    return UIImagesLogo(abstract_: t < 0.5 ? abstract_ : other.abstract_);
  }

  static final UIImagesLogo base = UIImagesLogo(abstract_: AppImages.logoAbstract_);
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
    if (identical(this, other)) return this;
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
