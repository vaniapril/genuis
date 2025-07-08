// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Ui generator
// **************************************************************************

// ignore_for_file: unused_import

import 'blurs.ui.dart';
import 'colors.ui.dart';
import 'fonts.ui.dart';
import 'icons.ui.dart';
import 'images.ui.dart';
import 'shadows.ui.dart';
import 'token_colors.ui.dart';
import 'token_heights.ui.dart';
import 'package:flutter/material.dart';

export 'blurs.ui.dart';
export 'colors.ui.dart';
export 'fonts.ui.dart';
export 'icons.ui.dart';
export 'images.ui.dart';
export 'shadows.ui.dart';
export 'token_colors.ui.dart';
export 'token_heights.ui.dart';
export 'build_context_extension.ui.dart';

class UIWidget extends InheritedWidget {
  final UI ui;

  const UIWidget({super.key, required this.ui, required super.child});

  static UIWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UIWidget>();
  }

  @override
  bool updateShouldNotify(UIWidget oldWidget) => ui != oldWidget.ui;
}

abstract class UI {
  static const UI light = _UILight();
  static const UI dark = _UIDark();

  const UI._();

  UIBlurs get blurs;
  UIColors get colors;
  UIFonts get fonts;
  UIIcons get icons;
  UIImages get images;
  UIShadows get shadows;

  factory UI.of(BuildContext context) {
    return UIWidget.of(context)?.ui ?? UI.light;
  }
}

class _UILight extends UI {
  const _UILight() : super._();

  @override
  UIBlurs get blurs => UIBlurs.base;
  @override
  UIColors get colors => UIColors.light;
  @override
  UIFonts get fonts => UIFonts.light;
  @override
  UIIcons get icons => UIIcons.light;
  @override
  UIImages get images => UIImages.base;
  @override
  UIShadows get shadows => UIShadows.light;
}

class _UIDark extends UI {
  const _UIDark() : super._();

  @override
  UIBlurs get blurs => UIBlurs.base;
  @override
  UIColors get colors => UIColors.dark;
  @override
  UIFonts get fonts => UIFonts.dark;
  @override
  UIIcons get icons => UIIcons.dark;
  @override
  UIImages get images => UIImages.base;
  @override
  UIShadows get shadows => UIShadows.dark;
}
