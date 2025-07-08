// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Icons generator
// **************************************************************************

// ignore_for_file: unused_import

import 'ui.ui.dart';
import 'package:flutter/material.dart';

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

  const AppIcons(this.value);

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

abstract class UIIconsFilledShopping {
  static const UIIconsFilledShopping light = _UIIconsFilledShoppingLight();
  static const UIIconsFilledShopping dark = _UIIconsFilledShoppingDark();

  const UIIconsFilledShopping._();

  ThemedIcons get card;
}

class _UIIconsFilledShoppingLight extends UIIconsFilledShopping {
  const _UIIconsFilledShoppingLight() : super._();

  @override
  ThemedIcons get card => ThemedIcons(UI.light, AppIcons.filledShoppingCard.value);
}

class _UIIconsFilledShoppingDark extends UIIconsFilledShopping {
  const _UIIconsFilledShoppingDark() : super._();

  @override
  ThemedIcons get card => ThemedIcons(UI.dark, AppIcons.filledShoppingCard.value);
}

abstract class UIIconsFilled {
  static const UIIconsFilled light = _UIIconsFilledLight();
  static const UIIconsFilled dark = _UIIconsFilledDark();

  const UIIconsFilled._();

  UIIconsFilledShopping get shopping;
  ThemedIcons get bandAid;
  ThemedIcons get car;
  ThemedIcons get cloud;
  ThemedIcons get comment;
  ThemedIcons get compass;
  ThemedIcons get filmCamera;
  ThemedIcons get magnifyingGlass;
  ThemedIcons get medKit;
  ThemedIcons get pencil;
  ThemedIcons get photo;
  ThemedIcons get pill;
  ThemedIcons get ribbon;
  ThemedIcons get rocket;
  ThemedIcons get treeDecidious;
  ThemedIcons get treeEvergreen;
}

class _UIIconsFilledLight extends UIIconsFilled {
  const _UIIconsFilledLight() : super._();

  @override
  UIIconsFilledShopping get shopping => UIIconsFilledShopping.light;
  @override
  ThemedIcons get bandAid => ThemedIcons(UI.light, AppIcons.filledBandAid.value);
  @override
  ThemedIcons get car => ThemedIcons(UI.light, AppIcons.filledCar.value);
  @override
  ThemedIcons get cloud => ThemedIcons(UI.light, AppIcons.filledCloud.value);
  @override
  ThemedIcons get comment => ThemedIcons(UI.light, AppIcons.filledComment.value);
  @override
  ThemedIcons get compass => ThemedIcons(UI.light, AppIcons.filledCompass.value);
  @override
  ThemedIcons get filmCamera => ThemedIcons(UI.light, AppIcons.filledFilmCamera.value);
  @override
  ThemedIcons get magnifyingGlass => ThemedIcons(UI.light, AppIcons.filledMagnifyingGlass.value);
  @override
  ThemedIcons get medKit => ThemedIcons(UI.light, AppIcons.filledMedKit.value);
  @override
  ThemedIcons get pencil => ThemedIcons(UI.light, AppIcons.filledPencil.value);
  @override
  ThemedIcons get photo => ThemedIcons(UI.light, AppIcons.filledPhoto.value);
  @override
  ThemedIcons get pill => ThemedIcons(UI.light, AppIcons.filledPill.value);
  @override
  ThemedIcons get ribbon => ThemedIcons(UI.light, AppIcons.filledRibbon.value);
  @override
  ThemedIcons get rocket => ThemedIcons(UI.light, AppIcons.filledRocket.value);
  @override
  ThemedIcons get treeDecidious => ThemedIcons(UI.light, AppIcons.filledTreeDecidious.value);
  @override
  ThemedIcons get treeEvergreen => ThemedIcons(UI.light, AppIcons.filledTreeEvergreen.value);
}

class _UIIconsFilledDark extends UIIconsFilled {
  const _UIIconsFilledDark() : super._();

  @override
  UIIconsFilledShopping get shopping => UIIconsFilledShopping.dark;
  @override
  ThemedIcons get bandAid => ThemedIcons(UI.dark, AppIcons.filledBandAid.value);
  @override
  ThemedIcons get car => ThemedIcons(UI.dark, AppIcons.filledCar.value);
  @override
  ThemedIcons get cloud => ThemedIcons(UI.dark, AppIcons.filledCloud.value);
  @override
  ThemedIcons get comment => ThemedIcons(UI.dark, AppIcons.filledComment.value);
  @override
  ThemedIcons get compass => ThemedIcons(UI.dark, AppIcons.filledCompass.value);
  @override
  ThemedIcons get filmCamera => ThemedIcons(UI.dark, AppIcons.filledFilmCamera.value);
  @override
  ThemedIcons get magnifyingGlass => ThemedIcons(UI.dark, AppIcons.filledMagnifyingGlass.value);
  @override
  ThemedIcons get medKit => ThemedIcons(UI.dark, AppIcons.filledMedKit.value);
  @override
  ThemedIcons get pencil => ThemedIcons(UI.dark, AppIcons.filledPencil.value);
  @override
  ThemedIcons get photo => ThemedIcons(UI.dark, AppIcons.filledPhoto.value);
  @override
  ThemedIcons get pill => ThemedIcons(UI.dark, AppIcons.filledPill.value);
  @override
  ThemedIcons get ribbon => ThemedIcons(UI.dark, AppIcons.filledRibbon.value);
  @override
  ThemedIcons get rocket => ThemedIcons(UI.dark, AppIcons.filledRocket.value);
  @override
  ThemedIcons get treeDecidious => ThemedIcons(UI.dark, AppIcons.filledTreeDecidious.value);
  @override
  ThemedIcons get treeEvergreen => ThemedIcons(UI.dark, AppIcons.filledTreeEvergreen.value);
}

abstract class UIIconsOutlined {
  static const UIIconsOutlined light = _UIIconsOutlinedLight();
  static const UIIconsOutlined dark = _UIIconsOutlinedDark();

  const UIIconsOutlined._();

  ThemedIcons get bellClose;
  ThemedIcons get bellOff;
  ThemedIcons get building;
  ThemedIcons get calendar;
  ThemedIcons get calendarDays;
  ThemedIcons get carAuto;
  ThemedIcons get chat;
  ThemedIcons get chatAdd;
  ThemedIcons get cloud;
  ThemedIcons get cloudAdd;
  ThemedIcons get cupcake;
  ThemedIcons get fileBlank;
  ThemedIcons get folder;
  ThemedIcons get hamburgerLg;
  ThemedIcons get headphones;
  ThemedIcons get house;
}

class _UIIconsOutlinedLight extends UIIconsOutlined {
  const _UIIconsOutlinedLight() : super._();

  @override
  ThemedIcons get bellClose => ThemedIcons(UI.light, AppIcons.outlinedBellCloseLight.value);
  @override
  ThemedIcons get bellOff => ThemedIcons(UI.light, AppIcons.outlinedBellOffLight.value);
  @override
  ThemedIcons get building => ThemedIcons(UI.light, AppIcons.outlinedBuildingLight.value);
  @override
  ThemedIcons get calendar => ThemedIcons(UI.light, AppIcons.outlinedCalendarLight.value);
  @override
  ThemedIcons get calendarDays => ThemedIcons(UI.light, AppIcons.outlinedCalendarDaysLight.value);
  @override
  ThemedIcons get carAuto => ThemedIcons(UI.light, AppIcons.outlinedCarAutoLight.value);
  @override
  ThemedIcons get chat => ThemedIcons(UI.light, AppIcons.outlinedChatLight.value);
  @override
  ThemedIcons get chatAdd => ThemedIcons(UI.light, AppIcons.outlinedChatAddLight.value);
  @override
  ThemedIcons get cloud => ThemedIcons(UI.light, AppIcons.outlinedCloudLight.value);
  @override
  ThemedIcons get cloudAdd => ThemedIcons(UI.light, AppIcons.outlinedCloudAddLight.value);
  @override
  ThemedIcons get cupcake => ThemedIcons(UI.light, AppIcons.outlinedCupcakeLight.value);
  @override
  ThemedIcons get fileBlank => ThemedIcons(UI.light, AppIcons.outlinedFileBlankLight.value);
  @override
  ThemedIcons get folder => ThemedIcons(UI.light, AppIcons.outlinedFolderLight.value);
  @override
  ThemedIcons get hamburgerLg => ThemedIcons(UI.light, AppIcons.outlinedHamburgerLgLight.value);
  @override
  ThemedIcons get headphones => ThemedIcons(UI.light, AppIcons.outlinedHeadphonesLight.value);
  @override
  ThemedIcons get house => ThemedIcons(UI.light, AppIcons.outlinedHouseLight.value);
}

class _UIIconsOutlinedDark extends UIIconsOutlined {
  const _UIIconsOutlinedDark() : super._();

  @override
  ThemedIcons get bellClose => ThemedIcons(UI.dark, AppIcons.outlinedBellCloseDark.value);
  @override
  ThemedIcons get bellOff => ThemedIcons(UI.dark, AppIcons.outlinedBellOffDark.value);
  @override
  ThemedIcons get building => ThemedIcons(UI.dark, AppIcons.outlinedBuildingDark.value);
  @override
  ThemedIcons get calendar => ThemedIcons(UI.dark, AppIcons.outlinedCalendarDark.value);
  @override
  ThemedIcons get calendarDays => ThemedIcons(UI.dark, AppIcons.outlinedCalendarDaysDark.value);
  @override
  ThemedIcons get carAuto => ThemedIcons(UI.dark, AppIcons.outlinedCarAutoDark.value);
  @override
  ThemedIcons get chat => ThemedIcons(UI.dark, AppIcons.outlinedChatDark.value);
  @override
  ThemedIcons get chatAdd => ThemedIcons(UI.dark, AppIcons.outlinedChatAddDark.value);
  @override
  ThemedIcons get cloud => ThemedIcons(UI.dark, AppIcons.outlinedCloudDark.value);
  @override
  ThemedIcons get cloudAdd => ThemedIcons(UI.dark, AppIcons.outlinedCloudAddDark.value);
  @override
  ThemedIcons get cupcake => ThemedIcons(UI.dark, AppIcons.outlinedCupcakeDark.value);
  @override
  ThemedIcons get fileBlank => ThemedIcons(UI.dark, AppIcons.outlinedFileBlankDark.value);
  @override
  ThemedIcons get folder => ThemedIcons(UI.dark, AppIcons.outlinedFolderDark.value);
  @override
  ThemedIcons get hamburgerLg => ThemedIcons(UI.dark, AppIcons.outlinedHamburgerLgDark.value);
  @override
  ThemedIcons get headphones => ThemedIcons(UI.dark, AppIcons.outlinedHeadphonesDark.value);
  @override
  ThemedIcons get house => ThemedIcons(UI.dark, AppIcons.outlinedHouseDark.value);
}

abstract class UIIcons {
  static const UIIcons light = _UIIconsLight();
  static const UIIcons dark = _UIIconsDark();

  const UIIcons._();

  UIIconsFilled get filled;
  UIIconsOutlined get outlined;
}

class _UIIconsLight extends UIIcons {
  const _UIIconsLight() : super._();

  @override
  UIIconsFilled get filled => UIIconsFilled.light;
  @override
  UIIconsOutlined get outlined => UIIconsOutlined.light;
}

class _UIIconsDark extends UIIcons {
  const _UIIconsDark() : super._();

  @override
  UIIconsFilled get filled => UIIconsFilled.dark;
  @override
  UIIconsOutlined get outlined => UIIconsOutlined.dark;
}
