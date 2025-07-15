// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Images generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'ui.ui.dart';

abstract class AppImages {
  static const String backgroundBook = 'background/book.jpg';
  static const String backgroundCat = 'background/cat.jpg';
  static const String backgroundFlowers = 'background/flowers.jpg';
  static const String logoAbstract_ = 'logo/abstract.svg';
}

class ThemedImages {
  final String value;
  final Color _brand;
  const ThemedImages._({required Color brand, required this.value}) : _brand = brand;
  ThemedImages(UI ui, String value) : this._(brand: ui.colors.primary.brand, value: value);

  ThemedImages lerp(ThemedImages other, double t) {
    if (identical(this, other)) return this;
    return ThemedImages._(
      brand: Color.lerp(_brand, other._brand, t) ?? _brand,
      value: t < 0.5 ? value : other.value,
    );
  }

  (String, Color) get brand => (value, _brand);
  (String, Color) colored(Color color) => (value, color);
}

class UIImagesBackground extends ThemeExtension<UIImagesBackground> {
  final ThemedImages book;
  final ThemedImages cat;
  final ThemedImages flowers;

  const UIImagesBackground({required this.book, required this.cat, required this.flowers});

  @override
  UIImagesBackground copyWith({ThemedImages? book, ThemedImages? cat, ThemedImages? flowers}) {
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
      book: book.lerp(other.book, t),
      cat: cat.lerp(other.cat, t),
      flowers: flowers.lerp(other.flowers, t),
    );
  }

  static final UIImagesBackground light = UIImagesBackground(
    book: ThemedImages(UI.light, AppImages.backgroundBook),
    cat: ThemedImages(UI.light, AppImages.backgroundCat),
    flowers: ThemedImages(UI.light, AppImages.backgroundFlowers),
  );
  static final UIImagesBackground dark = UIImagesBackground(
    book: ThemedImages(UI.dark, AppImages.backgroundBook),
    cat: ThemedImages(UI.dark, AppImages.backgroundCat),
    flowers: ThemedImages(UI.dark, AppImages.backgroundFlowers),
  );
}

class UIImagesLogo extends ThemeExtension<UIImagesLogo> {
  final ThemedImages abstract_;

  const UIImagesLogo({required this.abstract_});

  @override
  UIImagesLogo copyWith({ThemedImages? abstract_}) {
    return UIImagesLogo(abstract_: abstract_ ?? this.abstract_);
  }

  @override
  UIImagesLogo lerp(ThemeExtension<UIImagesLogo>? other, double t) {
    if (other is! UIImagesLogo) return this;
    if (identical(this, other)) return this;
    return UIImagesLogo(abstract_: abstract_.lerp(other.abstract_, t));
  }

  static final UIImagesLogo light = UIImagesLogo(
    abstract_: ThemedImages(UI.light, AppImages.logoAbstract_),
  );
  static final UIImagesLogo dark = UIImagesLogo(
    abstract_: ThemedImages(UI.dark, AppImages.logoAbstract_),
  );
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

  static final UIImages light = UIImages(
    background: UIImagesBackground.light,
    logo: UIImagesLogo.light,
  );
  static final UIImages dark = UIImages(
    background: UIImagesBackground.dark,
    logo: UIImagesLogo.dark,
  );
}
