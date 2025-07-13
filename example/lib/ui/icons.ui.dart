// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Icons generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'ui.ui.dart';

enum AppIcons {
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
  outlinedBellCloseBellCloseDark('outlined/dark/bell_close.svg'),
  outlinedBellCloseBellCloseLight('outlined/light/bell_close.svg'),
  outlinedBellOffBellOffDark('outlined/dark/bell_off.svg'),
  outlinedBellOffBellOffLight('outlined/light/bell_off.svg'),
  outlinedBuildingBuildingDark('outlined/dark/building.svg'),
  outlinedBuildingBuildingLight('outlined/light/building.svg'),
  outlinedCalendarCalendarDark('outlined/dark/calendar.svg'),
  outlinedCalendarCalendarLight('outlined/light/calendar.svg'),
  outlinedCalendarDaysCalendarDaysDark('outlined/dark/calendar_days.svg'),
  outlinedCalendarDaysCalendarDaysLight('outlined/light/calendar_days.svg'),
  outlinedCarAutoCarAutoDark('outlined/dark/car_auto.svg'),
  outlinedCarAutoCarAutoLight('outlined/light/car_auto.svg'),
  outlinedChatChatDark('outlined/dark/chat.svg'),
  outlinedChatChatLight('outlined/light/chat.svg'),
  outlinedChatAddChatAddDark('outlined/dark/chat_add.svg'),
  outlinedChatAddChatAddLight('outlined/light/chat_add.svg'),
  outlinedCloudCloudDark('outlined/dark/cloud.svg'),
  outlinedCloudCloudLight('outlined/light/cloud.svg'),
  outlinedCloudAddCloudAddDark('outlined/dark/cloud_add.svg'),
  outlinedCloudAddCloudAddLight('outlined/light/cloud_add.svg'),
  outlinedCupcakeCupcakeDark('outlined/dark/cupcake.svg'),
  outlinedCupcakeCupcakeLight('outlined/light/cupcake.svg'),
  outlinedFileBlankFileBlankDark('outlined/dark/file_blank.svg'),
  outlinedFileBlankFileBlankLight('outlined/light/file_blank.svg'),
  outlinedFolderFolderDark('outlined/dark/folder.svg'),
  outlinedFolderFolderLight('outlined/light/folder.svg'),
  outlinedHamburgerLgHamburgerLgDark('outlined/dark/hamburger_lg.svg'),
  outlinedHamburgerLgHamburgerLgLight('outlined/light/hamburger_lg.svg'),
  outlinedHeadphonesHeadphonesDark('outlined/dark/headphones.svg'),
  outlinedHeadphonesHeadphonesLight('outlined/light/headphones.svg'),
  outlinedHouseHouseDark('outlined/dark/house.svg'),
  outlinedHouseHouseLight('outlined/light/house.svg');

  const AppIcons(this.value);

  final String value;
}

class ThemedIcons {
  final String value;
  final Color _alertNotification;
  final Color _active;
  final Color _blue;
  final Color _green;
  final Color _orange;
  final Color _red;
  const ThemedIcons._({
    required Color alertNotification,
    required Color active,
    required Color blue,
    required Color green,
    required Color orange,
    required Color red,
    required this.value,
  }) : _alertNotification = alertNotification,
       _active = active,
       _blue = blue,
       _green = green,
       _orange = orange,
       _red = red;
  ThemedIcons(UI ui, String value)
    : this._(
        alertNotification: ui.colors.primary.alertNotification,
        active: ui.colors.primary.brand,
        blue: ui.colors.tertiary.blue,
        green: ui.colors.tertiary.green,
        orange: ui.colors.tertiary.orange,
        red: ui.colors.tertiary.red,
        value: value,
      );

  ThemedIcons lerp(ThemedIcons other, double t) {
    return ThemedIcons._(
      alertNotification:
          Color.lerp(_alertNotification, other._alertNotification, t) ?? _alertNotification,
      active: Color.lerp(_active, other._active, t) ?? _active,
      blue: Color.lerp(_blue, other._blue, t) ?? _blue,
      green: Color.lerp(_green, other._green, t) ?? _green,
      orange: Color.lerp(_orange, other._orange, t) ?? _orange,
      red: Color.lerp(_red, other._red, t) ?? _red,
      value: t < 0.5 ? value : other.value,
    );
  }

  ColoredIcons get alertNotification => ColoredIcons(value, _alertNotification);
  ColoredIcons get active => ColoredIcons(value, _active);
  ColoredIcons get blue => ColoredIcons(value, _blue);
  ColoredIcons get green => ColoredIcons(value, _green);
  ColoredIcons get orange => ColoredIcons(value, _orange);
  ColoredIcons get red => ColoredIcons(value, _red);
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
    card: ThemedIcons(UI.light, AppIcons.filledShoppingCard.value),
  );
  static final UIIconsFilledShopping dark = UIIconsFilledShopping(
    card: ThemedIcons(UI.dark, AppIcons.filledShoppingCard.value),
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
    bandAid: ThemedIcons(UI.light, AppIcons.filledBandAid.value),
    car: ThemedIcons(UI.light, AppIcons.filledCar.value),
    cloud: ThemedIcons(UI.light, AppIcons.filledCloud.value),
    comment: ThemedIcons(UI.light, AppIcons.filledComment.value),
    compass: ThemedIcons(UI.light, AppIcons.filledCompass.value),
    filmCamera: ThemedIcons(UI.light, AppIcons.filledFilmCamera.value),
    magnifyingGlass: ThemedIcons(UI.light, AppIcons.filledMagnifyingGlass.value),
    medKit: ThemedIcons(UI.light, AppIcons.filledMedKit.value),
    pencil: ThemedIcons(UI.light, AppIcons.filledPencil.value),
    photo: ThemedIcons(UI.light, AppIcons.filledPhoto.value),
    pill: ThemedIcons(UI.light, AppIcons.filledPill.value),
    ribbon: ThemedIcons(UI.light, AppIcons.filledRibbon.value),
    rocket: ThemedIcons(UI.light, AppIcons.filledRocket.value),
    treeDecidious: ThemedIcons(UI.light, AppIcons.filledTreeDecidious.value),
    treeEvergreen: ThemedIcons(UI.light, AppIcons.filledTreeEvergreen.value),
  );
  static final UIIconsFilled dark = UIIconsFilled(
    shopping: UIIconsFilledShopping.dark,
    bandAid: ThemedIcons(UI.dark, AppIcons.filledBandAid.value),
    car: ThemedIcons(UI.dark, AppIcons.filledCar.value),
    cloud: ThemedIcons(UI.dark, AppIcons.filledCloud.value),
    comment: ThemedIcons(UI.dark, AppIcons.filledComment.value),
    compass: ThemedIcons(UI.dark, AppIcons.filledCompass.value),
    filmCamera: ThemedIcons(UI.dark, AppIcons.filledFilmCamera.value),
    magnifyingGlass: ThemedIcons(UI.dark, AppIcons.filledMagnifyingGlass.value),
    medKit: ThemedIcons(UI.dark, AppIcons.filledMedKit.value),
    pencil: ThemedIcons(UI.dark, AppIcons.filledPencil.value),
    photo: ThemedIcons(UI.dark, AppIcons.filledPhoto.value),
    pill: ThemedIcons(UI.dark, AppIcons.filledPill.value),
    ribbon: ThemedIcons(UI.dark, AppIcons.filledRibbon.value),
    rocket: ThemedIcons(UI.dark, AppIcons.filledRocket.value),
    treeDecidious: ThemedIcons(UI.dark, AppIcons.filledTreeDecidious.value),
    treeEvergreen: ThemedIcons(UI.dark, AppIcons.filledTreeEvergreen.value),
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
    bellClose: ThemedIcons(UI.light, AppIcons.outlinedBellCloseBellCloseLight.value),
    bellOff: ThemedIcons(UI.light, AppIcons.outlinedBellOffBellOffLight.value),
    building: ThemedIcons(UI.light, AppIcons.outlinedBuildingBuildingLight.value),
    calendar: ThemedIcons(UI.light, AppIcons.outlinedCalendarCalendarLight.value),
    calendarDays: ThemedIcons(UI.light, AppIcons.outlinedCalendarDaysCalendarDaysLight.value),
    carAuto: ThemedIcons(UI.light, AppIcons.outlinedCarAutoCarAutoLight.value),
    chat: ThemedIcons(UI.light, AppIcons.outlinedChatChatLight.value),
    chatAdd: ThemedIcons(UI.light, AppIcons.outlinedChatAddChatAddLight.value),
    cloud: ThemedIcons(UI.light, AppIcons.outlinedCloudCloudLight.value),
    cloudAdd: ThemedIcons(UI.light, AppIcons.outlinedCloudAddCloudAddLight.value),
    cupcake: ThemedIcons(UI.light, AppIcons.outlinedCupcakeCupcakeLight.value),
    fileBlank: ThemedIcons(UI.light, AppIcons.outlinedFileBlankFileBlankLight.value),
    folder: ThemedIcons(UI.light, AppIcons.outlinedFolderFolderLight.value),
    hamburgerLg: ThemedIcons(UI.light, AppIcons.outlinedHamburgerLgHamburgerLgLight.value),
    headphones: ThemedIcons(UI.light, AppIcons.outlinedHeadphonesHeadphonesLight.value),
    house: ThemedIcons(UI.light, AppIcons.outlinedHouseHouseLight.value),
  );
  static final UIIconsOutlined dark = UIIconsOutlined(
    bellClose: ThemedIcons(UI.dark, AppIcons.outlinedBellCloseBellCloseDark.value),
    bellOff: ThemedIcons(UI.dark, AppIcons.outlinedBellOffBellOffDark.value),
    building: ThemedIcons(UI.dark, AppIcons.outlinedBuildingBuildingDark.value),
    calendar: ThemedIcons(UI.dark, AppIcons.outlinedCalendarCalendarDark.value),
    calendarDays: ThemedIcons(UI.dark, AppIcons.outlinedCalendarDaysCalendarDaysDark.value),
    carAuto: ThemedIcons(UI.dark, AppIcons.outlinedCarAutoCarAutoDark.value),
    chat: ThemedIcons(UI.dark, AppIcons.outlinedChatChatDark.value),
    chatAdd: ThemedIcons(UI.dark, AppIcons.outlinedChatAddChatAddDark.value),
    cloud: ThemedIcons(UI.dark, AppIcons.outlinedCloudCloudDark.value),
    cloudAdd: ThemedIcons(UI.dark, AppIcons.outlinedCloudAddCloudAddDark.value),
    cupcake: ThemedIcons(UI.dark, AppIcons.outlinedCupcakeCupcakeDark.value),
    fileBlank: ThemedIcons(UI.dark, AppIcons.outlinedFileBlankFileBlankDark.value),
    folder: ThemedIcons(UI.dark, AppIcons.outlinedFolderFolderDark.value),
    hamburgerLg: ThemedIcons(UI.dark, AppIcons.outlinedHamburgerLgHamburgerLgDark.value),
    headphones: ThemedIcons(UI.dark, AppIcons.outlinedHeadphonesHeadphonesDark.value),
    house: ThemedIcons(UI.dark, AppIcons.outlinedHouseHouseDark.value),
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
