// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Icons generator
// **************************************************************************

// ignore_for_file: unused_import

import 'ui.ui.dart';
import 'package:flutter/material.dart';

enum UIcons {
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

  const UIcons(this.value);

  final String value;
}

class ThemedIcons {
  final String value;
  final Color _alertNotification;
  final Color _active;
  const ThemedIcons._({
    required Color alertNotification,
    required Color active,
    required this.value,
  }) : _alertNotification = alertNotification,
       _active = active;
  ThemedIcons(UI ui, String value)
    : this._(
        alertNotification: ui.colors.primary.alertNotification,
        active: ui.colors.primary.brand,
        value: value,
      );

  ThemedIcons lerp(ThemedIcons other, double t) {
    return ThemedIcons._(
      alertNotification:
          Color.lerp(_alertNotification, other._alertNotification, t) ?? _alertNotification,
      active: Color.lerp(_active, other._active, t) ?? _active,
      value: t < 0.5 ? value : other.value,
    );
  }

  ColoredIcons get alertNotification => ColoredIcons(value, _alertNotification);
  ColoredIcons get active => ColoredIcons(value, _active);
  ColoredIcons colored(Color color) => ColoredIcons(value, color);
}

class ColoredIcons {
  final String value;
  final Color color;
  const ColoredIcons(this.value, this.color);
}

class UIIconsFilledShopping extends ThemeExtension<UIIconsFilledShopping> {
  final ThemedIcons card;

  const UIIconsFilledShopping({required this.card});

  @override
  UIIconsFilledShopping copyWith({ThemedIcons? card}) {
    return UIIconsFilledShopping(card: card ?? this.card);
  }

  @override
  UIIconsFilledShopping lerp(ThemeExtension<UIIconsFilledShopping>? other, double t) {
    if (other is! UIIconsFilledShopping) return this;
    return UIIconsFilledShopping(card: card.lerp(other.card, t));
  }

  static final UIIconsFilledShopping light = UIIconsFilledShopping(
    card: ThemedIcons(UI.light, UIcons.filledShoppingCard.value),
  );
  static final UIIconsFilledShopping dark = UIIconsFilledShopping(
    card: ThemedIcons(UI.dark, UIcons.filledShoppingCard.value),
  );
}

class UIIconsFilled extends ThemeExtension<UIIconsFilled> {
  final UIIconsFilledShopping shopping;
  final ThemedIcons bandAid;
  final ThemedIcons car;
  final ThemedIcons cloud;
  final ThemedIcons comment;
  final ThemedIcons compass;
  final ThemedIcons filmCamera;
  final ThemedIcons magnifyingGlass;
  final ThemedIcons medKit;
  final ThemedIcons pencil;
  final ThemedIcons photo;
  final ThemedIcons pill;
  final ThemedIcons ribbon;
  final ThemedIcons rocket;
  final ThemedIcons treeDecidious;
  final ThemedIcons treeEvergreen;

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
    ThemedIcons? bandAid,
    ThemedIcons? car,
    ThemedIcons? cloud,
    ThemedIcons? comment,
    ThemedIcons? compass,
    ThemedIcons? filmCamera,
    ThemedIcons? magnifyingGlass,
    ThemedIcons? medKit,
    ThemedIcons? pencil,
    ThemedIcons? photo,
    ThemedIcons? pill,
    ThemedIcons? ribbon,
    ThemedIcons? rocket,
    ThemedIcons? treeDecidious,
    ThemedIcons? treeEvergreen,
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
      bandAid: bandAid.lerp(other.bandAid, t),
      car: car.lerp(other.car, t),
      cloud: cloud.lerp(other.cloud, t),
      comment: comment.lerp(other.comment, t),
      compass: compass.lerp(other.compass, t),
      filmCamera: filmCamera.lerp(other.filmCamera, t),
      magnifyingGlass: magnifyingGlass.lerp(other.magnifyingGlass, t),
      medKit: medKit.lerp(other.medKit, t),
      pencil: pencil.lerp(other.pencil, t),
      photo: photo.lerp(other.photo, t),
      pill: pill.lerp(other.pill, t),
      ribbon: ribbon.lerp(other.ribbon, t),
      rocket: rocket.lerp(other.rocket, t),
      treeDecidious: treeDecidious.lerp(other.treeDecidious, t),
      treeEvergreen: treeEvergreen.lerp(other.treeEvergreen, t),
    );
  }

  static final UIIconsFilled light = UIIconsFilled(
    shopping: UIIconsFilledShopping.light,
    bandAid: ThemedIcons(UI.light, UIcons.filledBandAid.value),
    car: ThemedIcons(UI.light, UIcons.filledCar.value),
    cloud: ThemedIcons(UI.light, UIcons.filledCloud.value),
    comment: ThemedIcons(UI.light, UIcons.filledComment.value),
    compass: ThemedIcons(UI.light, UIcons.filledCompass.value),
    filmCamera: ThemedIcons(UI.light, UIcons.filledFilmCamera.value),
    magnifyingGlass: ThemedIcons(UI.light, UIcons.filledMagnifyingGlass.value),
    medKit: ThemedIcons(UI.light, UIcons.filledMedKit.value),
    pencil: ThemedIcons(UI.light, UIcons.filledPencil.value),
    photo: ThemedIcons(UI.light, UIcons.filledPhoto.value),
    pill: ThemedIcons(UI.light, UIcons.filledPill.value),
    ribbon: ThemedIcons(UI.light, UIcons.filledRibbon.value),
    rocket: ThemedIcons(UI.light, UIcons.filledRocket.value),
    treeDecidious: ThemedIcons(UI.light, UIcons.filledTreeDecidious.value),
    treeEvergreen: ThemedIcons(UI.light, UIcons.filledTreeEvergreen.value),
  );
  static final UIIconsFilled dark = UIIconsFilled(
    shopping: UIIconsFilledShopping.dark,
    bandAid: ThemedIcons(UI.dark, UIcons.filledBandAid.value),
    car: ThemedIcons(UI.dark, UIcons.filledCar.value),
    cloud: ThemedIcons(UI.dark, UIcons.filledCloud.value),
    comment: ThemedIcons(UI.dark, UIcons.filledComment.value),
    compass: ThemedIcons(UI.dark, UIcons.filledCompass.value),
    filmCamera: ThemedIcons(UI.dark, UIcons.filledFilmCamera.value),
    magnifyingGlass: ThemedIcons(UI.dark, UIcons.filledMagnifyingGlass.value),
    medKit: ThemedIcons(UI.dark, UIcons.filledMedKit.value),
    pencil: ThemedIcons(UI.dark, UIcons.filledPencil.value),
    photo: ThemedIcons(UI.dark, UIcons.filledPhoto.value),
    pill: ThemedIcons(UI.dark, UIcons.filledPill.value),
    ribbon: ThemedIcons(UI.dark, UIcons.filledRibbon.value),
    rocket: ThemedIcons(UI.dark, UIcons.filledRocket.value),
    treeDecidious: ThemedIcons(UI.dark, UIcons.filledTreeDecidious.value),
    treeEvergreen: ThemedIcons(UI.dark, UIcons.filledTreeEvergreen.value),
  );
}

class UIIconsOutlined extends ThemeExtension<UIIconsOutlined> {
  final ThemedIcons bellClose;
  final ThemedIcons bellOff;
  final ThemedIcons building;
  final ThemedIcons calendar;
  final ThemedIcons calendarDays;
  final ThemedIcons carAuto;
  final ThemedIcons chat;
  final ThemedIcons chatAdd;
  final ThemedIcons cloud;
  final ThemedIcons cloudAdd;
  final ThemedIcons cupcake;
  final ThemedIcons fileBlank;
  final ThemedIcons folder;
  final ThemedIcons hamburgerLg;
  final ThemedIcons headphones;
  final ThemedIcons house;

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
    ThemedIcons? bellClose,
    ThemedIcons? bellOff,
    ThemedIcons? building,
    ThemedIcons? calendar,
    ThemedIcons? calendarDays,
    ThemedIcons? carAuto,
    ThemedIcons? chat,
    ThemedIcons? chatAdd,
    ThemedIcons? cloud,
    ThemedIcons? cloudAdd,
    ThemedIcons? cupcake,
    ThemedIcons? fileBlank,
    ThemedIcons? folder,
    ThemedIcons? hamburgerLg,
    ThemedIcons? headphones,
    ThemedIcons? house,
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
      bellClose: bellClose.lerp(other.bellClose, t),
      bellOff: bellOff.lerp(other.bellOff, t),
      building: building.lerp(other.building, t),
      calendar: calendar.lerp(other.calendar, t),
      calendarDays: calendarDays.lerp(other.calendarDays, t),
      carAuto: carAuto.lerp(other.carAuto, t),
      chat: chat.lerp(other.chat, t),
      chatAdd: chatAdd.lerp(other.chatAdd, t),
      cloud: cloud.lerp(other.cloud, t),
      cloudAdd: cloudAdd.lerp(other.cloudAdd, t),
      cupcake: cupcake.lerp(other.cupcake, t),
      fileBlank: fileBlank.lerp(other.fileBlank, t),
      folder: folder.lerp(other.folder, t),
      hamburgerLg: hamburgerLg.lerp(other.hamburgerLg, t),
      headphones: headphones.lerp(other.headphones, t),
      house: house.lerp(other.house, t),
    );
  }

  static final UIIconsOutlined light = UIIconsOutlined(
    bellClose: ThemedIcons(UI.light, UIcons.outlinedBellCloseLight.value),
    bellOff: ThemedIcons(UI.light, UIcons.outlinedBellOffLight.value),
    building: ThemedIcons(UI.light, UIcons.outlinedBuildingLight.value),
    calendar: ThemedIcons(UI.light, UIcons.outlinedCalendarLight.value),
    calendarDays: ThemedIcons(UI.light, UIcons.outlinedCalendarDaysLight.value),
    carAuto: ThemedIcons(UI.light, UIcons.outlinedCarAutoLight.value),
    chat: ThemedIcons(UI.light, UIcons.outlinedChatLight.value),
    chatAdd: ThemedIcons(UI.light, UIcons.outlinedChatAddLight.value),
    cloud: ThemedIcons(UI.light, UIcons.outlinedCloudLight.value),
    cloudAdd: ThemedIcons(UI.light, UIcons.outlinedCloudAddLight.value),
    cupcake: ThemedIcons(UI.light, UIcons.outlinedCupcakeLight.value),
    fileBlank: ThemedIcons(UI.light, UIcons.outlinedFileBlankLight.value),
    folder: ThemedIcons(UI.light, UIcons.outlinedFolderLight.value),
    hamburgerLg: ThemedIcons(UI.light, UIcons.outlinedHamburgerLgLight.value),
    headphones: ThemedIcons(UI.light, UIcons.outlinedHeadphonesLight.value),
    house: ThemedIcons(UI.light, UIcons.outlinedHouseLight.value),
  );
  static final UIIconsOutlined dark = UIIconsOutlined(
    bellClose: ThemedIcons(UI.dark, UIcons.outlinedBellCloseDark.value),
    bellOff: ThemedIcons(UI.dark, UIcons.outlinedBellOffDark.value),
    building: ThemedIcons(UI.dark, UIcons.outlinedBuildingDark.value),
    calendar: ThemedIcons(UI.dark, UIcons.outlinedCalendarDark.value),
    calendarDays: ThemedIcons(UI.dark, UIcons.outlinedCalendarDaysDark.value),
    carAuto: ThemedIcons(UI.dark, UIcons.outlinedCarAutoDark.value),
    chat: ThemedIcons(UI.dark, UIcons.outlinedChatDark.value),
    chatAdd: ThemedIcons(UI.dark, UIcons.outlinedChatAddDark.value),
    cloud: ThemedIcons(UI.dark, UIcons.outlinedCloudDark.value),
    cloudAdd: ThemedIcons(UI.dark, UIcons.outlinedCloudAddDark.value),
    cupcake: ThemedIcons(UI.dark, UIcons.outlinedCupcakeDark.value),
    fileBlank: ThemedIcons(UI.dark, UIcons.outlinedFileBlankDark.value),
    folder: ThemedIcons(UI.dark, UIcons.outlinedFolderDark.value),
    hamburgerLg: ThemedIcons(UI.dark, UIcons.outlinedHamburgerLgDark.value),
    headphones: ThemedIcons(UI.dark, UIcons.outlinedHeadphonesDark.value),
    house: ThemedIcons(UI.dark, UIcons.outlinedHouseDark.value),
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

  static final UIIcons light = UIIcons(
    filled: UIIconsFilled.light,
    outlined: UIIconsOutlined.light,
  );
  static final UIIcons dark = UIIcons(filled: UIIconsFilled.dark, outlined: UIIconsOutlined.dark);
}
