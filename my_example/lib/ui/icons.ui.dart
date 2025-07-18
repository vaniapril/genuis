// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - icons generator
// **************************************************************************

// ignore_for_file: unused_import
// ignore_for_file: type=lint

import 'package:flutter/material.dart';
import 'ui.ui.dart';

enum AppIcons {
  filledShoppingCard('assets/icons/filled/shopping-card.svg'),
  filledBandAid('assets/icons/filled/band_aid.svg'),
  filledCar('assets/icons/filled/car.svg'),
  filledCloud('assets/icons/filled/cloud.svg'),
  filledComment('assets/icons/filled/comment.svg'),
  filledCompass('assets/icons/filled/compass.svg'),
  filledFilmCamera('assets/icons/filled/film_camera.svg'),
  filledMagnifyingGlass('assets/icons/filled/magnifying_glass.svg'),
  filledMedKit('assets/icons/filled/med_kit.svg'),
  filledPencil('assets/icons/filled/pencil.svg'),
  filledPhoto('assets/icons/filled/photo.svg'),
  filledPill('assets/icons/filled/pill.svg'),
  filledRibbon('assets/icons/filled/ribbon.svg'),
  filledRocket('assets/icons/filled/rocket.svg'),
  filledTreeDecidious('assets/icons/filled/tree_decidious.svg'),
  filledTreeEvergreen('assets/icons/filled/tree_evergreen.svg'),
  outlinedBellCloseDark('assets/icons/outlined/dark/bell_close.svg'),
  outlinedBellCloseLight('assets/icons/outlined/light/bell_close.svg'),
  outlinedBellOffDark('assets/icons/outlined/dark/bell_off.svg'),
  outlinedBellOffLight('assets/icons/outlined/light/bell_off.svg'),
  outlinedBuildingDark('assets/icons/outlined/dark/building.svg'),
  outlinedBuildingLight('assets/icons/outlined/light/building.svg'),
  outlinedCalendarDark('assets/icons/outlined/dark/calendar.svg'),
  outlinedCalendarLight('assets/icons/outlined/light/calendar.svg'),
  outlinedCalendarDaysDark('assets/icons/outlined/dark/calendar_days.svg'),
  outlinedCalendarDaysLight('assets/icons/outlined/light/calendar_days.svg'),
  outlinedCarAutoDark('assets/icons/outlined/dark/car_auto.svg'),
  outlinedCarAutoLight('assets/icons/outlined/light/car_auto.svg'),
  outlinedChatDark('assets/icons/outlined/dark/chat.svg'),
  outlinedChatLight('assets/icons/outlined/light/chat.svg'),
  outlinedChatAddDark('assets/icons/outlined/dark/chat_add.svg'),
  outlinedChatAddLight('assets/icons/outlined/light/chat_add.svg'),
  outlinedCloudDark('assets/icons/outlined/dark/cloud.svg'),
  outlinedCloudLight('assets/icons/outlined/light/cloud.svg'),
  outlinedCloudAddDark('assets/icons/outlined/dark/cloud_add.svg'),
  outlinedCloudAddLight('assets/icons/outlined/light/cloud_add.svg'),
  outlinedCupcakeDark('assets/icons/outlined/dark/cupcake.svg'),
  outlinedCupcakeLight('assets/icons/outlined/light/cupcake.svg'),
  outlinedFileBlankDark('assets/icons/outlined/dark/file_blank.svg'),
  outlinedFileBlankLight('assets/icons/outlined/light/file_blank.svg'),
  outlinedFolderDark('assets/icons/outlined/dark/folder.svg'),
  outlinedFolderLight('assets/icons/outlined/light/folder.svg'),
  outlinedHamburgerLgDark('assets/icons/outlined/dark/hamburger_lg.svg'),
  outlinedHamburgerLgLight('assets/icons/outlined/light/hamburger_lg.svg'),
  outlinedHeadphonesDark('assets/icons/outlined/dark/headphones.svg'),
  outlinedHeadphonesLight('assets/icons/outlined/light/headphones.svg'),
  outlinedHouseDark('assets/icons/outlined/dark/house.svg'),
  outlinedHouseLight('assets/icons/outlined/light/house.svg');

  const AppIcons(this.value);

  final String value;
}

class IconsWithColors {
  final AppIcons value;
  final Color _alertNotification;
  final Color _active;
  final Color _blue;
  final Color _green;
  final Color _orange;
  final Color _red;
  const IconsWithColors._({
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
  IconsWithColors(UI ui, AppIcons value)
    : this._(
        alertNotification: ui.colors.primary.alertNotification,
        active: ui.colors.primary.brand,
        blue: ui.colors.tertiary.blue,
        green: ui.colors.tertiary.green,
        orange: ui.colors.tertiary.orange,
        red: ui.colors.tertiary.red,
        value: value,
      );

  IconsWithColors lerp(IconsWithColors other, double t) {
    if (identical(this, other)) return this;
    return IconsWithColors._(
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

  ColoredIcon get alertNotification => ColoredIcon(value, _alertNotification);
  ColoredIcon get active => ColoredIcon(value, _active);
  ColoredIcon get blue => ColoredIcon(value, _blue);
  ColoredIcon get green => ColoredIcon(value, _green);
  ColoredIcon get orange => ColoredIcon(value, _orange);
  ColoredIcon get red => ColoredIcon(value, _red);
  ColoredIcon colored(Color color) => ColoredIcon(value, color);
}

class ColoredIcon {
  final AppIcons value;
  final Color color;
  const ColoredIcon(this.value, this.color);
}

class UIIconsFilledShopping extends ThemeExtension<UIIconsFilledShopping> {
  final IconsWithColors card;

  const UIIconsFilledShopping({required this.card});

  @override
  UIIconsFilledShopping copyWith({IconsWithColors? card}) {
    return UIIconsFilledShopping(card: card ?? this.card);
  }

  @override
  UIIconsFilledShopping lerp(ThemeExtension<UIIconsFilledShopping>? other, double t) {
    if (other is! UIIconsFilledShopping) return this;
    if (identical(this, other)) return this;
    return UIIconsFilledShopping(card: card.lerp(other.card, t));
  }

  static final UIIconsFilledShopping light = UIIconsFilledShopping(
    card: IconsWithColors(UI.light, AppIcons.filledShoppingCard),
  );
  static final UIIconsFilledShopping dark = UIIconsFilledShopping(
    card: IconsWithColors(UI.dark, AppIcons.filledShoppingCard),
  );
}

class UIIconsFilled extends ThemeExtension<UIIconsFilled> {
  final UIIconsFilledShopping shopping;
  final IconsWithColors bandAid;
  final IconsWithColors car;
  final IconsWithColors cloud;
  final IconsWithColors comment;
  final IconsWithColors compass;
  final IconsWithColors filmCamera;
  final IconsWithColors magnifyingGlass;
  final IconsWithColors medKit;
  final IconsWithColors pencil;
  final IconsWithColors photo;
  final IconsWithColors pill;
  final IconsWithColors ribbon;
  final IconsWithColors rocket;
  final IconsWithColors treeDecidious;
  final IconsWithColors treeEvergreen;

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
    IconsWithColors? bandAid,
    IconsWithColors? car,
    IconsWithColors? cloud,
    IconsWithColors? comment,
    IconsWithColors? compass,
    IconsWithColors? filmCamera,
    IconsWithColors? magnifyingGlass,
    IconsWithColors? medKit,
    IconsWithColors? pencil,
    IconsWithColors? photo,
    IconsWithColors? pill,
    IconsWithColors? ribbon,
    IconsWithColors? rocket,
    IconsWithColors? treeDecidious,
    IconsWithColors? treeEvergreen,
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
    if (identical(this, other)) return this;
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
    bandAid: IconsWithColors(UI.light, AppIcons.filledBandAid),
    car: IconsWithColors(UI.light, AppIcons.filledCar),
    cloud: IconsWithColors(UI.light, AppIcons.filledCloud),
    comment: IconsWithColors(UI.light, AppIcons.filledComment),
    compass: IconsWithColors(UI.light, AppIcons.filledCompass),
    filmCamera: IconsWithColors(UI.light, AppIcons.filledFilmCamera),
    magnifyingGlass: IconsWithColors(UI.light, AppIcons.filledMagnifyingGlass),
    medKit: IconsWithColors(UI.light, AppIcons.filledMedKit),
    pencil: IconsWithColors(UI.light, AppIcons.filledPencil),
    photo: IconsWithColors(UI.light, AppIcons.filledPhoto),
    pill: IconsWithColors(UI.light, AppIcons.filledPill),
    ribbon: IconsWithColors(UI.light, AppIcons.filledRibbon),
    rocket: IconsWithColors(UI.light, AppIcons.filledRocket),
    treeDecidious: IconsWithColors(UI.light, AppIcons.filledTreeDecidious),
    treeEvergreen: IconsWithColors(UI.light, AppIcons.filledTreeEvergreen),
  );
  static final UIIconsFilled dark = UIIconsFilled(
    shopping: UIIconsFilledShopping.dark,
    bandAid: IconsWithColors(UI.dark, AppIcons.filledBandAid),
    car: IconsWithColors(UI.dark, AppIcons.filledCar),
    cloud: IconsWithColors(UI.dark, AppIcons.filledCloud),
    comment: IconsWithColors(UI.dark, AppIcons.filledComment),
    compass: IconsWithColors(UI.dark, AppIcons.filledCompass),
    filmCamera: IconsWithColors(UI.dark, AppIcons.filledFilmCamera),
    magnifyingGlass: IconsWithColors(UI.dark, AppIcons.filledMagnifyingGlass),
    medKit: IconsWithColors(UI.dark, AppIcons.filledMedKit),
    pencil: IconsWithColors(UI.dark, AppIcons.filledPencil),
    photo: IconsWithColors(UI.dark, AppIcons.filledPhoto),
    pill: IconsWithColors(UI.dark, AppIcons.filledPill),
    ribbon: IconsWithColors(UI.dark, AppIcons.filledRibbon),
    rocket: IconsWithColors(UI.dark, AppIcons.filledRocket),
    treeDecidious: IconsWithColors(UI.dark, AppIcons.filledTreeDecidious),
    treeEvergreen: IconsWithColors(UI.dark, AppIcons.filledTreeEvergreen),
  );
}

class UIIconsOutlined extends ThemeExtension<UIIconsOutlined> {
  final IconsWithColors bellClose;
  final IconsWithColors bellOff;
  final IconsWithColors building;
  final IconsWithColors calendar;
  final IconsWithColors calendarDays;
  final IconsWithColors carAuto;
  final IconsWithColors chat;
  final IconsWithColors chatAdd;
  final IconsWithColors cloud;
  final IconsWithColors cloudAdd;
  final IconsWithColors cupcake;
  final IconsWithColors fileBlank;
  final IconsWithColors folder;
  final IconsWithColors hamburgerLg;
  final IconsWithColors headphones;
  final IconsWithColors house;

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
    IconsWithColors? bellClose,
    IconsWithColors? bellOff,
    IconsWithColors? building,
    IconsWithColors? calendar,
    IconsWithColors? calendarDays,
    IconsWithColors? carAuto,
    IconsWithColors? chat,
    IconsWithColors? chatAdd,
    IconsWithColors? cloud,
    IconsWithColors? cloudAdd,
    IconsWithColors? cupcake,
    IconsWithColors? fileBlank,
    IconsWithColors? folder,
    IconsWithColors? hamburgerLg,
    IconsWithColors? headphones,
    IconsWithColors? house,
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
    if (identical(this, other)) return this;
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
    bellClose: IconsWithColors(UI.light, AppIcons.outlinedBellCloseLight),
    bellOff: IconsWithColors(UI.light, AppIcons.outlinedBellOffLight),
    building: IconsWithColors(UI.light, AppIcons.outlinedBuildingLight),
    calendar: IconsWithColors(UI.light, AppIcons.outlinedCalendarLight),
    calendarDays: IconsWithColors(UI.light, AppIcons.outlinedCalendarDaysLight),
    carAuto: IconsWithColors(UI.light, AppIcons.outlinedCarAutoLight),
    chat: IconsWithColors(UI.light, AppIcons.outlinedChatLight),
    chatAdd: IconsWithColors(UI.light, AppIcons.outlinedChatAddLight),
    cloud: IconsWithColors(UI.light, AppIcons.outlinedCloudLight),
    cloudAdd: IconsWithColors(UI.light, AppIcons.outlinedCloudAddLight),
    cupcake: IconsWithColors(UI.light, AppIcons.outlinedCupcakeLight),
    fileBlank: IconsWithColors(UI.light, AppIcons.outlinedFileBlankLight),
    folder: IconsWithColors(UI.light, AppIcons.outlinedFolderLight),
    hamburgerLg: IconsWithColors(UI.light, AppIcons.outlinedHamburgerLgLight),
    headphones: IconsWithColors(UI.light, AppIcons.outlinedHeadphonesLight),
    house: IconsWithColors(UI.light, AppIcons.outlinedHouseLight),
  );
  static final UIIconsOutlined dark = UIIconsOutlined(
    bellClose: IconsWithColors(UI.dark, AppIcons.outlinedBellCloseDark),
    bellOff: IconsWithColors(UI.dark, AppIcons.outlinedBellOffDark),
    building: IconsWithColors(UI.dark, AppIcons.outlinedBuildingDark),
    calendar: IconsWithColors(UI.dark, AppIcons.outlinedCalendarDark),
    calendarDays: IconsWithColors(UI.dark, AppIcons.outlinedCalendarDaysDark),
    carAuto: IconsWithColors(UI.dark, AppIcons.outlinedCarAutoDark),
    chat: IconsWithColors(UI.dark, AppIcons.outlinedChatDark),
    chatAdd: IconsWithColors(UI.dark, AppIcons.outlinedChatAddDark),
    cloud: IconsWithColors(UI.dark, AppIcons.outlinedCloudDark),
    cloudAdd: IconsWithColors(UI.dark, AppIcons.outlinedCloudAddDark),
    cupcake: IconsWithColors(UI.dark, AppIcons.outlinedCupcakeDark),
    fileBlank: IconsWithColors(UI.dark, AppIcons.outlinedFileBlankDark),
    folder: IconsWithColors(UI.dark, AppIcons.outlinedFolderDark),
    hamburgerLg: IconsWithColors(UI.dark, AppIcons.outlinedHamburgerLgDark),
    headphones: IconsWithColors(UI.dark, AppIcons.outlinedHeadphonesDark),
    house: IconsWithColors(UI.dark, AppIcons.outlinedHouseDark),
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
    if (identical(this, other)) return this;
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
