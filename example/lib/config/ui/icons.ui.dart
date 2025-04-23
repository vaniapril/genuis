// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: Gens - Icons generator
// **************************************************************************

import 'package:flutter/material.dart';

enum Icons {
  // UI/icons/filled/shopping
  uIIconsFilledShoppingCard('${_base}Icons.filledShoppingCard.value'),

  // UI/icons/filled
  uIIconsFilledBandAid('${_base}Icons.filledBandAid.value'),
  uIIconsFilledCar('${_base}Icons.filledCar.value'),
  uIIconsFilledCloud('${_base}Icons.filledCloud.value'),
  uIIconsFilledComment('${_base}Icons.filledComment.value'),
  uIIconsFilledCompass('${_base}Icons.filledCompass.value'),
  uIIconsFilledFilmCamera('${_base}Icons.filledFilmCamera.value'),
  uIIconsFilledMagnifyingGlass('${_base}Icons.filledMagnifyingGlass.value'),
  uIIconsFilledMedKit('${_base}Icons.filledMedKit.value'),
  uIIconsFilledPencil('${_base}Icons.filledPencil.value'),
  uIIconsFilledPhoto('${_base}Icons.filledPhoto.value'),
  uIIconsFilledPill('${_base}Icons.filledPill.value'),
  uIIconsFilledRibbon('${_base}Icons.filledRibbon.value'),
  uIIconsFilledRocket('${_base}Icons.filledRocket.value'),
  uIIconsFilledTreeDecidious('${_base}Icons.filledTreeDecidious.value'),
  uIIconsFilledTreeEvergreen('${_base}Icons.filledTreeEvergreen.value'),

  // UI/icons/outlined
  uIIconsOutlinedBellClose('${_base}Icons.outlinedBellClose.value'),
  uIIconsOutlinedBellOff('${_base}Icons.outlinedBellOff.value'),
  uIIconsOutlinedBuilding('${_base}Icons.outlinedBuilding.value'),
  uIIconsOutlinedCalendar('${_base}Icons.outlinedCalendar.value'),
  uIIconsOutlinedCalendarDays('${_base}Icons.outlinedCalendarDays.value'),
  uIIconsOutlinedCarAuto('${_base}Icons.outlinedCarAuto.value'),
  uIIconsOutlinedChat('${_base}Icons.outlinedChat.value'),
  uIIconsOutlinedChatAdd('${_base}Icons.outlinedChatAdd.value'),
  uIIconsOutlinedCloud('${_base}Icons.outlinedCloud.value'),
  uIIconsOutlinedCloudAdd('${_base}Icons.outlinedCloudAdd.value'),
  uIIconsOutlinedCupcake('${_base}Icons.outlinedCupcake.value'),
  uIIconsOutlinedFileBlank('${_base}Icons.outlinedFileBlank.value'),
  uIIconsOutlinedFolder('${_base}Icons.outlinedFolder.value'),
  uIIconsOutlinedHamburgerLg('${_base}Icons.outlinedHamburgerLg.value'),
  uIIconsOutlinedHeadphones('${_base}Icons.outlinedHeadphones.value'),
  uIIconsOutlinedHouse('${_base}Icons.outlinedHouse.value');

  static const String _base = 'assets/icons/';

  const Icons(this.value);

  final String value;
}

class UIIconsFilledShopping extends ThemeExtension<UIIconsFilledShopping> {
  final String card;

  const UIIconsFilledShopping({required this.card});

  @override
  UIIconsFilledShopping copyWith({String? card}) {
    return UIIconsFilledShopping(card: card ?? this.card);
  }

  @override
  UIIconsFilledShopping lerp(ThemeExtension<UIIconsFilledShopping>? other, double t) {
    if (other is! UIIconsFilledShopping) return this;
    return UIIconsFilledShopping(card: t < 0.5 ? card : other.card);
  }

  static final UIIconsFilledShopping base = UIIconsFilledShopping(
    card: Icons.filledShoppingCard.value,
  );
}

class UIIconsFilled extends ThemeExtension<UIIconsFilled> {
  final UIIconsFilledShopping shopping;
  final String bandAid;
  final String car;
  final String cloud;
  final String comment;
  final String compass;
  final String filmCamera;
  final String magnifyingGlass;
  final String medKit;
  final String pencil;
  final String photo;
  final String pill;
  final String ribbon;
  final String rocket;
  final String treeDecidious;
  final String treeEvergreen;

  const UIIconsFilled({
    required this.shopping,
    required this.bandAid,
    required this.car,
    required this.cloud,
    required this.comment,
    required this.compass,
    required this.filmCamera,
    required this.magnifyingGlass,
    required this.medKit,
    required this.pencil,
    required this.photo,
    required this.pill,
    required this.ribbon,
    required this.rocket,
    required this.treeDecidious,
    required this.treeEvergreen,
  });

  @override
  UIIconsFilled copyWith({
    UIIconsFilledShopping? shopping,
    String? bandAid,
    String? car,
    String? cloud,
    String? comment,
    String? compass,
    String? filmCamera,
    String? magnifyingGlass,
    String? medKit,
    String? pencil,
    String? photo,
    String? pill,
    String? ribbon,
    String? rocket,
    String? treeDecidious,
    String? treeEvergreen,
  }) {
    return UIIconsFilled(
      shopping: shopping ?? this.shopping,
      bandAid: bandAid ?? this.bandAid,
      car: car ?? this.car,
      cloud: cloud ?? this.cloud,
      comment: comment ?? this.comment,
      compass: compass ?? this.compass,
      filmCamera: filmCamera ?? this.filmCamera,
      magnifyingGlass: magnifyingGlass ?? this.magnifyingGlass,
      medKit: medKit ?? this.medKit,
      pencil: pencil ?? this.pencil,
      photo: photo ?? this.photo,
      pill: pill ?? this.pill,
      ribbon: ribbon ?? this.ribbon,
      rocket: rocket ?? this.rocket,
      treeDecidious: treeDecidious ?? this.treeDecidious,
      treeEvergreen: treeEvergreen ?? this.treeEvergreen,
    );
  }

  @override
  UIIconsFilled lerp(ThemeExtension<UIIconsFilled>? other, double t) {
    if (other is! UIIconsFilled) return this;
    return UIIconsFilled(
      shopping: shopping.lerp(other.shopping, t),
      bandAid: t < 0.5 ? bandAid : other.bandAid,
      car: t < 0.5 ? car : other.car,
      cloud: t < 0.5 ? cloud : other.cloud,
      comment: t < 0.5 ? comment : other.comment,
      compass: t < 0.5 ? compass : other.compass,
      filmCamera: t < 0.5 ? filmCamera : other.filmCamera,
      magnifyingGlass: t < 0.5 ? magnifyingGlass : other.magnifyingGlass,
      medKit: t < 0.5 ? medKit : other.medKit,
      pencil: t < 0.5 ? pencil : other.pencil,
      photo: t < 0.5 ? photo : other.photo,
      pill: t < 0.5 ? pill : other.pill,
      ribbon: t < 0.5 ? ribbon : other.ribbon,
      rocket: t < 0.5 ? rocket : other.rocket,
      treeDecidious: t < 0.5 ? treeDecidious : other.treeDecidious,
      treeEvergreen: t < 0.5 ? treeEvergreen : other.treeEvergreen,
    );
  }

  static final UIIconsFilled base = UIIconsFilled(
    shopping: UIIconsFilledShopping.base,
    bandAid: Icons.filledBandAid.value,
    car: Icons.filledCar.value,
    cloud: Icons.filledCloud.value,
    comment: Icons.filledComment.value,
    compass: Icons.filledCompass.value,
    filmCamera: Icons.filledFilmCamera.value,
    magnifyingGlass: Icons.filledMagnifyingGlass.value,
    medKit: Icons.filledMedKit.value,
    pencil: Icons.filledPencil.value,
    photo: Icons.filledPhoto.value,
    pill: Icons.filledPill.value,
    ribbon: Icons.filledRibbon.value,
    rocket: Icons.filledRocket.value,
    treeDecidious: Icons.filledTreeDecidious.value,
    treeEvergreen: Icons.filledTreeEvergreen.value,
  );
}

class UIIconsOutlined extends ThemeExtension<UIIconsOutlined> {
  final String bellClose;
  final String bellOff;
  final String building;
  final String calendar;
  final String calendarDays;
  final String carAuto;
  final String chat;
  final String chatAdd;
  final String cloud;
  final String cloudAdd;
  final String cupcake;
  final String fileBlank;
  final String folder;
  final String hamburgerLg;
  final String headphones;
  final String house;

  const UIIconsOutlined({
    required this.bellClose,
    required this.bellOff,
    required this.building,
    required this.calendar,
    required this.calendarDays,
    required this.carAuto,
    required this.chat,
    required this.chatAdd,
    required this.cloud,
    required this.cloudAdd,
    required this.cupcake,
    required this.fileBlank,
    required this.folder,
    required this.hamburgerLg,
    required this.headphones,
    required this.house,
  });

  @override
  UIIconsOutlined copyWith({
    String? bellClose,
    String? bellOff,
    String? building,
    String? calendar,
    String? calendarDays,
    String? carAuto,
    String? chat,
    String? chatAdd,
    String? cloud,
    String? cloudAdd,
    String? cupcake,
    String? fileBlank,
    String? folder,
    String? hamburgerLg,
    String? headphones,
    String? house,
  }) {
    return UIIconsOutlined(
      bellClose: bellClose ?? this.bellClose,
      bellOff: bellOff ?? this.bellOff,
      building: building ?? this.building,
      calendar: calendar ?? this.calendar,
      calendarDays: calendarDays ?? this.calendarDays,
      carAuto: carAuto ?? this.carAuto,
      chat: chat ?? this.chat,
      chatAdd: chatAdd ?? this.chatAdd,
      cloud: cloud ?? this.cloud,
      cloudAdd: cloudAdd ?? this.cloudAdd,
      cupcake: cupcake ?? this.cupcake,
      fileBlank: fileBlank ?? this.fileBlank,
      folder: folder ?? this.folder,
      hamburgerLg: hamburgerLg ?? this.hamburgerLg,
      headphones: headphones ?? this.headphones,
      house: house ?? this.house,
    );
  }

  @override
  UIIconsOutlined lerp(ThemeExtension<UIIconsOutlined>? other, double t) {
    if (other is! UIIconsOutlined) return this;
    return UIIconsOutlined(
      bellClose: t < 0.5 ? bellClose : other.bellClose,
      bellOff: t < 0.5 ? bellOff : other.bellOff,
      building: t < 0.5 ? building : other.building,
      calendar: t < 0.5 ? calendar : other.calendar,
      calendarDays: t < 0.5 ? calendarDays : other.calendarDays,
      carAuto: t < 0.5 ? carAuto : other.carAuto,
      chat: t < 0.5 ? chat : other.chat,
      chatAdd: t < 0.5 ? chatAdd : other.chatAdd,
      cloud: t < 0.5 ? cloud : other.cloud,
      cloudAdd: t < 0.5 ? cloudAdd : other.cloudAdd,
      cupcake: t < 0.5 ? cupcake : other.cupcake,
      fileBlank: t < 0.5 ? fileBlank : other.fileBlank,
      folder: t < 0.5 ? folder : other.folder,
      hamburgerLg: t < 0.5 ? hamburgerLg : other.hamburgerLg,
      headphones: t < 0.5 ? headphones : other.headphones,
      house: t < 0.5 ? house : other.house,
    );
  }

  static final UIIconsOutlined base = UIIconsOutlined(
    bellClose: Icons.outlinedBellClose.value,
    bellOff: Icons.outlinedBellOff.value,
    building: Icons.outlinedBuilding.value,
    calendar: Icons.outlinedCalendar.value,
    calendarDays: Icons.outlinedCalendarDays.value,
    carAuto: Icons.outlinedCarAuto.value,
    chat: Icons.outlinedChat.value,
    chatAdd: Icons.outlinedChatAdd.value,
    cloud: Icons.outlinedCloud.value,
    cloudAdd: Icons.outlinedCloudAdd.value,
    cupcake: Icons.outlinedCupcake.value,
    fileBlank: Icons.outlinedFileBlank.value,
    folder: Icons.outlinedFolder.value,
    hamburgerLg: Icons.outlinedHamburgerLg.value,
    headphones: Icons.outlinedHeadphones.value,
    house: Icons.outlinedHouse.value,
  );
}

class UIIcons extends ThemeExtension<UIIcons> {
  final UIIconsFilled filled;
  final UIIconsOutlined outlined;

  const UIIcons({required this.filled, required this.outlined});

  @override
  UIIcons copyWith({UIIconsFilled? filled, UIIconsOutlined? outlined}) {
    return UIIcons(filled: filled ?? this.filled, outlined: outlined ?? this.outlined);
  }

  @override
  UIIcons lerp(ThemeExtension<UIIcons>? other, double t) {
    if (other is! UIIcons) return this;
    return UIIcons(
      filled: filled.lerp(other.filled, t),
      outlined: outlined.lerp(other.outlined, t),
    );
  }

  static final UIIcons base = UIIcons(filled: UIIconsFilled.base, outlined: UIIconsOutlined.base);
}

class UI extends ThemeExtension<UI> {
  final UIIcons icons;

  const UI({required this.icons});

  @override
  UI copyWith({UIIcons? icons}) {
    return UI(icons: icons ?? this.icons);
  }

  @override
  UI lerp(ThemeExtension<UI>? other, double t) {
    if (other is! UI) return this;
    return UI(icons: icons.lerp(other.icons, t));
  }

  static final UI base = UI(icons: UIIcons.base);
}
