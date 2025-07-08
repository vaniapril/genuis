// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Generator: GenUIs - Blurs generator
// **************************************************************************

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'dart:ui';

abstract class UIBlursBlurs {
  static const UIBlursBlurs base = _UIBlursBlursBase();

  const UIBlursBlurs._();

  ImageFilter get blur2;
  ImageFilter get blur4;
  ImageFilter get blur8;
  ImageFilter get blur16;
  ImageFilter get blur32;
  ImageFilter get blur64;
}

class _UIBlursBlursBase extends UIBlursBlurs {
  const _UIBlursBlursBase() : super._();

  @override
  ImageFilter get blur2 => ImageFilter.blur(sigmaX: 0.1 / 2, sigmaY: 0.1 / 2);
  @override
  ImageFilter get blur4 => ImageFilter.blur(sigmaX: 0.3 / 2, sigmaY: 0.3 / 2);
  @override
  ImageFilter get blur8 => ImageFilter.blur(sigmaX: 0.5 / 2, sigmaY: 0.5 / 2);
  @override
  ImageFilter get blur16 => ImageFilter.blur(sigmaX: 1.0 / 2, sigmaY: 1.0 / 2);
  @override
  ImageFilter get blur32 => ImageFilter.blur(sigmaX: 2.0 / 2, sigmaY: 2.0 / 2);
  @override
  ImageFilter get blur64 => ImageFilter.blur(sigmaX: 4.0 / 2, sigmaY: 4.0 / 2);
}

abstract class UIBlurs {
  static const UIBlurs base = _UIBlursBase();

  const UIBlurs._();

  UIBlursBlurs get blurs;
}

class _UIBlursBase extends UIBlurs {
  const _UIBlursBase() : super._();

  @override
  UIBlursBlurs get blurs => UIBlursBlurs.base;
}
