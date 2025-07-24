import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as flutter_inset_shadow;

// Blurs
final testBlur1 = ImageFilter.blur(sigmaX: 1, sigmaY: 1);
final testBlur2 = ImageFilter.blur(sigmaX: 2, sigmaY: 3);
final testBlur3 = ImageFilter.blur(sigmaX: 4, sigmaY: 5);
final testBlur4 = ImageFilter.blur(sigmaX: 6, sigmaY: 7);
final testBlur5 = ImageFilter.blur(sigmaX: 8, sigmaY: 9);

// Colors
const testColor01 = Color(0xff000001);
const testColor02 = Color(0xff000002);
const testColor03 = Color(0xff000003);
const testColor04 = Color(0xff000004);
const testColor05 = Color(0xff000005);
const testColor06 = Color(0xff000006);
const testColor07 = Color(0xff000007);
const testColor08 = Color(0xff000008);
const testColor09 = Color(0xff000009);
const testColor10 = Color(0xff000010);
const testColor11 = Color(0xff000011);
const testColor12 = Color(0xff000012);
const testColor13 = Color(0xff000013);
const testColor14 = Color(0xff000014);
const testColor15 = Color(0xff000015);
const testColor16 = Color(0xff000016);
const testColor17 = Color(0xff000017);
const testColor18 = Color(0xff000018);
const testColor19 = Color(0xff000019);
const testColor20 = Color(0xff000020);
const testColor21 = Color(0xff000021);
const testColor22 = Color(0xff000022);
const testColor23 = Color(0xff000023);
const testColor24 = Color(0xff000024);
const testColor25 = Color(0xff000025);
const testColor26 = Color(0xff000026);
const testColor27 = Color(0xff000027);
const testColor28 = Color(0xff000028);
const testColor29 = Color(0xff000029);
const testColor30 = Color(0xff000030);
const testColor31 = Color(0xff000031);
const testColor32 = Color(0xff000032);
const testColor33 = Color(0xff000033);
const testColor34 = Color(0xff000034);
const testColor35 = Color(0xff000035);
const testColor36 = Color(0xff000036);
const testColor37 = Color(0xff000037);
const testColor38 = Color(0xff000038);
const testColor39 = Color(0xff000039);
const testColor40 = Color(0xff000040);
const testColor41 = Color(0xff000041);
const testColor42 = Color(0xff000042);
const testColor43 = Color(0xff000043);
const testColor44 = Color(0xff000044);
const testColor45 = Color(0xff000045);
const testColor46 = Color(0xff000046);
const testColor47 = Color(0xff000047);
const testColor48 = Color(0xff000048);
const testColor49 = Color(0xff000049);
const testColor50 = Color(0xff000050);
const testColor51 = Color(0xff000051);
const testColor52 = Color(0xff000052);
const testColor53 = Color(0xff000053);
const testColor54 = Color(0xff000054);
const testColor55 = Color(0xff000055);
const testColor56 = Color(0xff000056);
const testColor57 = Color(0xff000057);
const testColor58 = Color(0xff000058);
const testColor59 = Color(0xff000059);
const testColor60 = Color(0xff000060);
const testColor61 = Color(0xff000061);
const testColor62 = Color(0xff000062);
const testColor63 = Color(0xff000063);
const testColor64 = Color(0xff000064);
const testColor65 = Color(0xff000065);
const testColor66 = Color(0xff000066);
const testColor67 = Color(0xff000067);
const testColor68 = Color(0xff000068);
const testColor69 = Color(0xff000069);
const testColor70 = Color(0xff000070);

// Fonts
const testFont01 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w100,
  fontSize: 10.0,
  height: 11.0 / 10.0,
  letterSpacing: 12.0,
);
const testFont02 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w200,
  fontSize: 20.0,
  height: 21.0 / 20.0,
  letterSpacing: 22.0,
);
const testFont03 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w300,
  fontSize: 30.0,
  height: 31.0 / 30.0,
  letterSpacing: 32.0,
);
const testFont04 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w400,
  fontSize: 40.0,
  height: 41.0 / 40.0,
  letterSpacing: 42.0,
);
const testFont05 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w500,
  fontSize: 50.0,
  height: 51.0 / 50.0,
  letterSpacing: 52.0,
);
const testFont06 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w600,
  fontSize: 60.0,
  height: 61.0 / 60.0,
  letterSpacing: 62.0,
);
const testFont07 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w700,
  fontSize: 70.0,
  height: 71.0 / 70.0,
  letterSpacing: 72.0,
);
const testFont08 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w800,
  fontSize: 80.0,
  height: 81.0 / 80.0,
  letterSpacing: 82.0,
);
const testFont09 = TextStyle(
  fontFamily: 'Manrope',
  fontWeight: FontWeight.w900,
  fontSize: 90.0,
  height: 91.0 / 90.0,
  letterSpacing: 92.0,
);

const testFont11 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w100,
  fontSize: 10.0,
  height: 11.0 / 10.0,
  letterSpacing: 12.0,
);
const testFont12 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w200,
  fontSize: 20.0,
  height: 21.0 / 20.0,
  letterSpacing: 22.0,
);
const testFont13 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w300,
  fontSize: 30.0,
  height: 31.0 / 30.0,
  letterSpacing: 32.0,
);
const testFont14 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  fontSize: 40.0,
  height: 41.0 / 40.0,
  letterSpacing: 42.0,
);
const testFont15 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 50.0,
  height: 51.0 / 50.0,
  letterSpacing: 52.0,
);
const testFont16 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w600,
  fontSize: 60.0,
  height: 61.0 / 60.0,
  letterSpacing: 62.0,
);
const testFont17 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 70.0,
  height: 71.0 / 70.0,
  letterSpacing: 72.0,
);
const testFont18 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w800,
  fontSize: 80.0,
  height: 81.0 / 80.0,
  letterSpacing: 82.0,
);
const testFont19 = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w900,
  fontSize: 90.0,
  height: 91.0 / 90.0,
  letterSpacing: 92.0,
);

final testFont01Color01 = testFont01.copyWith(color: testColor01);
final testFont01Color02 = testFont01.copyWith(color: testColor02);
final testFont01Color03 = testFont01.copyWith(color: testColor03);
final testFont01Color04 = testFont01.copyWith(color: testColor04);
final testFont01Color13 = testFont01.copyWith(color: testColor13);
final testFont01Color14 = testFont01.copyWith(color: testColor14);

final testFont02Color01 = testFont02.copyWith(color: testColor01);
final testFont02Color02 = testFont02.copyWith(color: testColor02);
final testFont02Color03 = testFont02.copyWith(color: testColor03);
final testFont02Color04 = testFont02.copyWith(color: testColor04);
final testFont02Color13 = testFont02.copyWith(color: testColor13);
final testFont02Color14 = testFont02.copyWith(color: testColor14);

final testFont03Color01 = testFont03.copyWith(color: testColor01);
final testFont03Color02 = testFont03.copyWith(color: testColor02);
final testFont03Color03 = testFont03.copyWith(color: testColor03);
final testFont03Color04 = testFont03.copyWith(color: testColor04);
final testFont03Color13 = testFont03.copyWith(color: testColor13);
final testFont03Color14 = testFont03.copyWith(color: testColor14);

final testFont11Color01 = testFont11.copyWith(color: testColor01);
final testFont11Color02 = testFont11.copyWith(color: testColor02);
final testFont11Color03 = testFont11.copyWith(color: testColor03);
final testFont11Color04 = testFont11.copyWith(color: testColor04);
final testFont11Color13 = testFont11.copyWith(color: testColor13);
final testFont11Color14 = testFont11.copyWith(color: testColor14);

final testFont12Color01 = testFont12.copyWith(color: testColor01);
final testFont12Color02 = testFont12.copyWith(color: testColor02);
final testFont12Color03 = testFont12.copyWith(color: testColor03);
final testFont12Color04 = testFont12.copyWith(color: testColor04);
final testFont12Color13 = testFont12.copyWith(color: testColor13);
final testFont12Color14 = testFont12.copyWith(color: testColor14);

final testFont13Color01 = testFont13.copyWith(color: testColor01);
final testFont13Color02 = testFont13.copyWith(color: testColor02);
final testFont13Color03 = testFont13.copyWith(color: testColor03);
final testFont13Color04 = testFont13.copyWith(color: testColor04);
final testFont13Color13 = testFont13.copyWith(color: testColor13);
final testFont13Color14 = testFont13.copyWith(color: testColor14);

// Gradients
const testGradient01 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    testColor01,
    testColor02,
  ],
);
const testGradient02 = LinearGradient(
  begin: Alignment(0.11, 0.12),
  end: Alignment(0.13, 0.14),
  colors: [
    testColor03,
    testColor04,
    testColor05,
  ],
);
const testGradient03 = LinearGradient(
  begin: Alignment.center,
  end: Alignment(0.21, 0.22),
  colors: [
    testColor06,
    testColor07,
    testColor08,
    testColor09,
    testColor10,
  ],
);
const testGradient04 = LinearGradient(
  begin: Alignment(0.31, 0.32),
  end: Alignment(0.33, 0.34),
  colors: [
    testColor11,
    testColor12,
    testColor13,
  ],
);
const testGradient05 = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    testColor14,
    testColor15,
  ],
);
const testGradient06 = LinearGradient(
  begin: Alignment(0.41, 0.42),
  end: Alignment.center,
  colors: [
    testColor16,
    testColor17,
    testColor18,
    testColor19,
    testColor20,
  ],
);

// Icons
const testIcon01 = "assets/icons/lorem/ipsum/dolor/amet.svg";
const testIcon02 = "assets/icons/lorem/ipsum/dolor/sit-dark.svg";
const testIcon03 = "assets/icons/lorem/ipsum/dolor/sit-light.svg";
const testIcon04 = "assets/icons/lorem/ipsum/adipiscing.svg";
const testIcon05 = "assets/icons/lorem/ipsum/consectetur-dark.svg";
const testIcon06 = "assets/icons/lorem/ipsum/consectetur-light.svg";
const testIcon07 = "assets/icons/lorem/elit-dark.svg";
const testIcon08 = "assets/icons/lorem/elit-light.svg";
const testIcon09 = "assets/icons/lorem/sed.svg";
const testIcon10 = "assets/icons/do-dark.svg";
const testIcon11 = "assets/icons/do-light.svg";
const testIcon12 = "assets/icons/eiusmod.svg";

// Images
const testImage01 = "assets/images/lorem/ipsum/dolor/amet.svg";
const testImage02 = "assets/images/lorem/ipsum/dolor/consectetur.svg";
const testImage03 = "assets/images/lorem/ipsum/sit/adipiscing.svg";
const testImage04 = "assets/images/lorem/ipsum/sit/elit.svg";
const testImage05 = "assets/images/lorem/ipsum/do.svg";
const testImage06 = "assets/images/lorem/ipsum/sed.svg";
const testImage07 = "assets/images/lorem/eiusmod.svg";
const testImage08 = "assets/images/lorem/tempor.svg";
const testImage09 = "assets/images/incididunt.svg";
const testImage10 = "assets/images/ut.svg";

// Shadows

const testShadow01 = BoxShadow(
  color: testColor01,
  offset: Offset(10.0, 11.0),
  blurRadius: 12.0,
  spreadRadius: 13.0,
);
const testShadow02 = flutter_inset_shadow.BoxShadow(
  color: testColor02,
  offset: Offset(20.0, 21.0),
  blurRadius: 22.0,
  spreadRadius: 23.0,
  inset: true,
);
const testShadow03 = BoxShadow(
  color: testColor03,
  offset: Offset(30.0, 31.0),
  blurRadius: 32.0,
  spreadRadius: 33.0,
);
const testShadow04 = flutter_inset_shadow.BoxShadow(
  color: testColor04,
  offset: Offset(40.0, 41.0),
  blurRadius: 42.0,
  spreadRadius: 43.0,
  inset: true,
);
const testShadow05 = BoxShadow(
  color: testColor05,
  offset: Offset(50.0, 51.0),
  blurRadius: 52.0,
  spreadRadius: 53.0,
);
const testShadow06 = BoxShadow(
  color: testColor06,
  offset: Offset(60.0, 61.0),
  blurRadius: 62.0,
  spreadRadius: 63.0,
);
const testShadow07 = BoxShadow(
  color: testColor07,
  offset: Offset(70.0, 71.0),
  blurRadius: 72.0,
  spreadRadius: 73.0,
);
const testShadow08 = BoxShadow(
  color: testColor08,
  offset: Offset(80.0, 81.0),
  blurRadius: 82.0,
  spreadRadius: 83.0,
);
const testShadow09 = flutter_inset_shadow.BoxShadow(
  color: testColor09,
  offset: Offset(90.0, 91.0),
  blurRadius: 92.0,
  spreadRadius: 93.0,
  inset: true,
);

// Numbers
const testNumber01 = 1;
const testNumber02 = 2;
const testNumber03 = 3;
const testNumber04 = 4;
const testNumber05 = 5;
const testNumber06 = 6;
const testNumber07 = 7;
const testNumber08 = 8;
const testNumber09 = 9;
const testNumber10 = 10.0;
const testNumber10_1 = 10.1;
const testNumber10_2 = 10.2;
const testNumber10_3 = 10.3;
const testNumber10_4 = 10.4;
const testNumber10_5 = 10.5;
const testNumber10_6 = 10.6;
const testNumber10_7 = 10.7;
const testNumber10_8 = 10.8;
const testNumber10_9 = 10.9;

// Strings
const testString01 = 'Lorem';
const testString02 = 'ipsum dolor';
const testString03 = 'sit amet';
const testString04 = 'consectetur adipiscing elit';
const testString05 = 'sed do eiusmod tempor incididunt';
const testString06 = 'ut labore et dolore';
const testString07 = 'magna aliqua';
const testString08 = 'Ut enim ad minim veniam';
const testString09 = 'quis nostrud exercitation ullamco';
