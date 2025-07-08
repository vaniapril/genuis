// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Images generator
// **************************************************************************

// ignore_for_file: unused_import

abstract class AppImages {
  static const String backgroundBook = 'background/book.jpg';
  static const String backgroundCat = 'background/cat.jpg';
  static const String backgroundFlowers = 'background/flowers.jpg';
  static const String logoAbstract_ = 'logo/abstract.svg';
}

abstract class UIImagesBackground {
  static const UIImagesBackground base = _UIImagesBackgroundBase();

  const UIImagesBackground._();

  String get book;
  String get cat;
  String get flowers;
}

class _UIImagesBackgroundBase extends UIImagesBackground {
  const _UIImagesBackgroundBase() : super._();

  @override
  String get book => AppImages.backgroundBook;
  @override
  String get cat => AppImages.backgroundCat;
  @override
  String get flowers => AppImages.backgroundFlowers;
}

abstract class UIImagesLogo {
  static const UIImagesLogo base = _UIImagesLogoBase();

  const UIImagesLogo._();

  String get abstract_;
}

class _UIImagesLogoBase extends UIImagesLogo {
  const _UIImagesLogoBase() : super._();

  @override
  String get abstract_ => AppImages.logoAbstract_;
}

abstract class UIImages {
  static const UIImages base = _UIImagesBase();

  const UIImages._();

  UIImagesBackground get background;
  UIImagesLogo get logo;
}

class _UIImagesBase extends UIImages {
  const _UIImagesBase() : super._();

  @override
  UIImagesBackground get background => UIImagesBackground.base;
  @override
  UIImagesLogo get logo => UIImagesLogo.base;
}
