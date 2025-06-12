// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Icons generator
// **************************************************************************

import 'package:flutter/material.dart';
import 'UI.ui.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow;
import 'dart:ui';

enum Icons {
  // icons
  filledShoppingCard('filled/shopping-card.svg'),
  filledBandAid('filled/band_aid.svg'),
  filledCar('filled/car.svg'),
  filledCloud('filled/cloud.svg'),
  filledComment('filled/comment.svg'),
  filledCompass('filled/compass.svg'),
  filledFilmCamera('filled/film_camera.svg'),
  filledMagnifyingGlass('filled/magnifying_glass.svg'),
  filledMedKit('filled/med_kit.svg'),
  filledPencil('filled/pencil.svg'),
  filledPhoto('filled/photo.svg'),
  filledPill('filled/pill.svg'),
  filledRibbon('filled/ribbon.svg'),
  filledRocket('filled/rocket.svg'),
  filledTreeDecidious('filled/tree_decidious.svg'),
  filledTreeEvergreen('filled/tree_evergreen.svg'),
  outlinedBellCloseDark('outlined/dark/bell_close.svg'),
  outlinedBellCloseLight('outlined/light/bell_close.svg'),
  outlinedBellOffDark('outlined/dark/bell_off.svg'),
  outlinedBellOffLight('outlined/light/bell_off.svg'),
  outlinedBuildingDark('outlined/dark/building.svg'),
  outlinedBuildingLight('outlined/light/building.svg'),
  outlinedCalendarDark('outlined/dark/calendar.svg'),
  outlinedCalendarLight('outlined/light/calendar.svg'),
  outlinedCalendarDaysDark('outlined/dark/calendar_days.svg'),
  outlinedCalendarDaysLight('outlined/light/calendar_days.svg'),
  outlinedCarAutoDark('outlined/dark/car_auto.svg'),
  outlinedCarAutoLight('outlined/light/car_auto.svg'),
  outlinedChatDark('outlined/dark/chat.svg'),
  outlinedChatLight('outlined/light/chat.svg'),
  outlinedChatAddDark('outlined/dark/chat_add.svg'),
  outlinedChatAddLight('outlined/light/chat_add.svg'),
  outlinedCloudDark('outlined/dark/cloud.svg'),
  outlinedCloudLight('outlined/light/cloud.svg'),
  outlinedCloudAddDark('outlined/dark/cloud_add.svg'),
  outlinedCloudAddLight('outlined/light/cloud_add.svg'),
  outlinedCupcakeDark('outlined/dark/cupcake.svg'),
  outlinedCupcakeLight('outlined/light/cupcake.svg'),
  outlinedFileBlankDark('outlined/dark/file_blank.svg'),
  outlinedFileBlankLight('outlined/light/file_blank.svg'),
  outlinedFolderDark('outlined/dark/folder.svg'),
  outlinedFolderLight('outlined/light/folder.svg'),
  outlinedHamburgerLgDark('outlined/dark/hamburger_lg.svg'),
  outlinedHamburgerLgLight('outlined/light/hamburger_lg.svg'),
  outlinedHeadphonesDark('outlined/dark/headphones.svg'),
  outlinedHeadphonesLight('outlined/light/headphones.svg'),
  outlinedHouseDark('outlined/dark/house.svg'),
  outlinedHouseLight('outlined/light/house.svg');

  const Icons(this.value);

  final String value;
}

class UiIconsFilledShopping extends ThemeExtension<UiIconsFilledShopping> {
  final String card;

  const UiIconsFilledShopping({required this.card});

  @override
  UiIconsFilledShopping copyWith({String? card}) {
    return UiIconsFilledShopping(card: card ?? this.card);
  }

  @override
  UiIconsFilledShopping lerp(ThemeExtension<UiIconsFilledShopping>? other, double t) {
    if (other is! UiIconsFilledShopping) return this;
    return UiIconsFilledShopping(card: t < 0.5 ? card : other.card);
  }

  static final UiIconsFilledShopping base = UiIconsFilledShopping(
    card: Icons.filledShoppingCard.value,
  );
}

class UiIconsFilled extends ThemeExtension<UiIconsFilled> {
  final UiIconsFilledShopping shopping;
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

  const UiIconsFilled({
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
  UiIconsFilled copyWith({
    UiIconsFilledShopping? shopping,
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
    return UiIconsFilled(
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
  UiIconsFilled lerp(ThemeExtension<UiIconsFilled>? other, double t) {
    if (other is! UiIconsFilled) return this;
    return UiIconsFilled(
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

  static final UiIconsFilled base = UiIconsFilled(
    shopping: UiIconsFilledShopping.base,
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

class UiIconsOutlined extends ThemeExtension<UiIconsOutlined> {
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

  const UiIconsOutlined({
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
  UiIconsOutlined copyWith({
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
    return UiIconsOutlined(
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
  UiIconsOutlined lerp(ThemeExtension<UiIconsOutlined>? other, double t) {
    if (other is! UiIconsOutlined) return this;
    return UiIconsOutlined(
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

  static final UiIconsOutlined dark = UiIconsOutlined(
    bellClose: Icons.outlinedBellCloseDark.value,
    bellOff: Icons.outlinedBellOffDark.value,
    building: Icons.outlinedBuildingDark.value,
    calendar: Icons.outlinedCalendarDark.value,
    calendarDays: Icons.outlinedCalendarDaysDark.value,
    carAuto: Icons.outlinedCarAutoDark.value,
    chat: Icons.outlinedChatDark.value,
    chatAdd: Icons.outlinedChatAddDark.value,
    cloud: Icons.outlinedCloudDark.value,
    cloudAdd: Icons.outlinedCloudAddDark.value,
    cupcake: Icons.outlinedCupcakeDark.value,
    fileBlank: Icons.outlinedFileBlankDark.value,
    folder: Icons.outlinedFolderDark.value,
    hamburgerLg: Icons.outlinedHamburgerLgDark.value,
    headphones: Icons.outlinedHeadphonesDark.value,
    house: Icons.outlinedHouseDark.value,
  );
  static final UiIconsOutlined light = UiIconsOutlined(
    bellClose: Icons.outlinedBellCloseLight.value,
    bellOff: Icons.outlinedBellOffLight.value,
    building: Icons.outlinedBuildingLight.value,
    calendar: Icons.outlinedCalendarLight.value,
    calendarDays: Icons.outlinedCalendarDaysLight.value,
    carAuto: Icons.outlinedCarAutoLight.value,
    chat: Icons.outlinedChatLight.value,
    chatAdd: Icons.outlinedChatAddLight.value,
    cloud: Icons.outlinedCloudLight.value,
    cloudAdd: Icons.outlinedCloudAddLight.value,
    cupcake: Icons.outlinedCupcakeLight.value,
    fileBlank: Icons.outlinedFileBlankLight.value,
    folder: Icons.outlinedFolderLight.value,
    hamburgerLg: Icons.outlinedHamburgerLgLight.value,
    headphones: Icons.outlinedHeadphonesLight.value,
    house: Icons.outlinedHouseLight.value,
  );
}

class UiIcons extends ThemeExtension<UiIcons> {
  final UiIconsFilled filled;
  final UiIconsOutlined outlined;

  const UiIcons({required this.filled, required this.outlined});

  @override
  UiIcons copyWith({UiIconsFilled? filled, UiIconsOutlined? outlined}) {
    return UiIcons(filled: filled ?? this.filled, outlined: outlined ?? this.outlined);
  }

  @override
  UiIcons lerp(ThemeExtension<UiIcons>? other, double t) {
    if (other is! UiIcons) return this;
    return UiIcons(
      filled: filled.lerp(other.filled, t),
      outlined: outlined.lerp(other.outlined, t),
    );
  }

  static final UiIcons dark = UiIcons(filled: UiIconsFilled.base, outlined: UiIconsOutlined.dark);
  static final UiIcons light = UiIcons(filled: UiIconsFilled.base, outlined: UiIconsOutlined.light);
}
