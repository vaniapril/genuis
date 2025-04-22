// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: Gens - Icons generator
// **************************************************************************

import 'package:flutter/material.dart';

enum Icons {
  // filled/shopping
  filledShoppingCard('${_base}filled/shopping-card.svg'),

  // filled
  filledBandAid('${_base}filled/band_aid.svg'),
  filledCar('${_base}filled/car.svg'),
  filledCloud('${_base}filled/cloud.svg'),
  filledComment('${_base}filled/comment.svg'),
  filledCompass('${_base}filled/compass.svg'),
  filledFilmCamera('${_base}filled/film_camera.svg'),
  filledMagnifyingGlass('${_base}filled/magnifying_glass.svg'),
  filledMedKit('${_base}filled/med_kit.svg'),
  filledPencil('${_base}filled/pencil.svg'),
  filledPhoto('${_base}filled/photo.svg'),
  filledPill('${_base}filled/pill.svg'),
  filledRibbon('${_base}filled/ribbon.svg'),
  filledRocket('${_base}filled/rocket.svg'),
  filledTreeDecidious('${_base}filled/tree_decidious.svg'),
  filledTreeEvergreen('${_base}filled/tree_evergreen.svg'),

  // outlined
  outlinedBellClose('${_base}outlined/bell_close.svg'),
  outlinedBellOff('${_base}outlined/bell_off.svg'),
  outlinedBuilding('${_base}outlined/building.svg'),
  outlinedCalendar('${_base}outlined/calendar.svg'),
  outlinedCalendarDays('${_base}outlined/calendar_days.svg'),
  outlinedCarAuto('${_base}outlined/car_auto.svg'),
  outlinedChat('${_base}outlined/chat.svg'),
  outlinedChatAdd('${_base}outlined/chat_add.svg'),
  outlinedCloud('${_base}outlined/cloud.svg'),
  outlinedCloudAdd('${_base}outlined/cloud_add.svg'),
  outlinedCupcake('${_base}outlined/cupcake.svg'),
  outlinedFileBlank('${_base}outlined/file_blank.svg'),
  outlinedFolder('${_base}outlined/folder.svg'),
  outlinedHamburgerLg('${_base}outlined/hamburger_lg.svg'),
  outlinedHeadphones('${_base}outlined/headphones.svg'),
  outlinedHouse('${_base}outlined/house.svg');

  static const String _base = 'packages/assets/icons/';

  const Icons(this.value);

  final String value;
}

class UIFilledShoppingIcons extends ThemeExtension<UIFilledShoppingIcons> {
  final String card;

  const UIFilledShoppingIcons({required this.card});

  @override
  UIFilledShoppingIcons copyWith({String? card}) {
    return UIFilledShoppingIcons(card: card ?? this.card);
  }

  @override
  UIFilledShoppingIcons lerp(ThemeExtension<UIFilledShoppingIcons>? other, double t) {
    if (other is! UIFilledShoppingIcons) return this;
    return UIFilledShoppingIcons(card: t < 0.5 ? card : other.card);
  }

  static final UIFilledShoppingIcons base = UIFilledShoppingIcons(
    card: Icons.filledShoppingCard.value,
  );
}

class UIFilledIcons extends ThemeExtension<UIFilledIcons> {
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
  final UIFilledShoppingIcons shopping;
  final String treeDecidious;
  final String treeEvergreen;

  const UIFilledIcons({
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
    required this.shopping,
    required this.treeDecidious,
    required this.treeEvergreen,
  });

  @override
  UIFilledIcons copyWith({
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
    UIFilledShoppingIcons? shopping,
    String? treeDecidious,
    String? treeEvergreen,
  }) {
    return UIFilledIcons(
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
      shopping: shopping ?? this.shopping,
      treeDecidious: treeDecidious ?? this.treeDecidious,
      treeEvergreen: treeEvergreen ?? this.treeEvergreen,
    );
  }

  @override
  UIFilledIcons lerp(ThemeExtension<UIFilledIcons>? other, double t) {
    if (other is! UIFilledIcons) return this;
    return UIFilledIcons(
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
      shopping: shopping.lerp(other.shopping, t),
      treeDecidious: t < 0.5 ? treeDecidious : other.treeDecidious,
      treeEvergreen: t < 0.5 ? treeEvergreen : other.treeEvergreen,
    );
  }

  static final UIFilledIcons base = UIFilledIcons(
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
    shopping: UIFilledShoppingIcons.base,
    treeDecidious: Icons.filledTreeDecidious.value,
    treeEvergreen: Icons.filledTreeEvergreen.value,
  );
}

class UIOutlinedIcons extends ThemeExtension<UIOutlinedIcons> {
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

  const UIOutlinedIcons({
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
  UIOutlinedIcons copyWith({
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
    return UIOutlinedIcons(
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
  UIOutlinedIcons lerp(ThemeExtension<UIOutlinedIcons>? other, double t) {
    if (other is! UIOutlinedIcons) return this;
    return UIOutlinedIcons(
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

  static final UIOutlinedIcons base = UIOutlinedIcons(
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
  final UIFilledIcons filled;
  final UIOutlinedIcons outlined;

  const UIIcons({required this.filled, required this.outlined});

  @override
  UIIcons copyWith({UIFilledIcons? filled, UIOutlinedIcons? outlined}) {
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

  static final UIIcons base = UIIcons(filled: UIFilledIcons.base, outlined: UIOutlinedIcons.base);
}
