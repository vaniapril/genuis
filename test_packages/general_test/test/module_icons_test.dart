import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testIcons();
  testIconsColored();
}

void testIcons() {
  test('Module: icons (light)', () {
    final ui = UI.light;

    expect(ui.icons.lorem.ipsum.dolor.amet, testIcon01);
    expect(ui.icons.lorem.ipsum.dolor.sit, testIcon03);
    expect(ui.icons.lorem.ipsum.adipiscing, testIcon04);
    expect(ui.icons.lorem.ipsum.consectetur, testIcon06);
    expect(ui.icons.lorem.elit, testIcon08);
    expect(ui.icons.lorem.sed, testIcon09);
    expect(ui.icons.do_, testIcon11);
    expect(ui.icons.eiusmod, testIcon12);
  });

  test('Module: icons (dark)', () {
    final ui = UI.dark;

    expect(ui.icons.lorem.ipsum.dolor.amet, testIcon01);
    expect(ui.icons.lorem.ipsum.dolor.sit, testIcon02);
    expect(ui.icons.lorem.ipsum.adipiscing, testIcon04);
    expect(ui.icons.lorem.ipsum.consectetur, testIcon05);
    expect(ui.icons.lorem.elit, testIcon07);
    expect(ui.icons.lorem.sed, testIcon09);
    expect(ui.icons.do_, testIcon10);
    expect(ui.icons.eiusmod, testIcon12);
  });
}

void testIconsColored() {
  test('Module: icons_colored (light)', () {
    final ui = UI.light;

    expect(ui.iconsColored.lorem.ipsum.dolor.amet, IconsColoredWithColors(testIcon01, ui));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit, IconsColoredWithColors(testIcon03, ui));
    expect(ui.iconsColored.lorem.ipsum.adipiscing, IconsColoredWithColors(testIcon04, ui));
    expect(ui.iconsColored.lorem.ipsum.consectetur, IconsColoredWithColors(testIcon06, ui));
    expect(ui.iconsColored.lorem.elit, IconsColoredWithColors(testIcon08, ui));
    expect(ui.iconsColored.lorem.sed, IconsColoredWithColors(testIcon09, ui));
    expect(ui.iconsColored.do_, IconsColoredWithColors(testIcon11, ui));
    expect(ui.iconsColored.eiusmod, IconsColoredWithColors(testIcon12, ui));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.adipiscing, (testIcon01, testColor05));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.adipiscing, (testIcon03, testColor05));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.adipiscing, (testIcon04, testColor05));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.elit, (testIcon01, testColor06));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.elit, (testIcon03, testColor06));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.elit, (testIcon04, testColor06));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.ad, (testIcon01, testColor14));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.ad, (testIcon03, testColor14));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.ad, (testIcon04, testColor14));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.colored(testColor01), (testIcon01, testColor01));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.colored(testColor01), (testIcon03, testColor01));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.colored(testColor01), (testIcon04, testColor01));
  });

  test('Module: icons (dark)', () {
    final ui = UI.dark;

    expect(ui.iconsColored.lorem.ipsum.dolor.amet, IconsColoredWithColors(testIcon01, ui));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit, IconsColoredWithColors(testIcon02, ui));
    expect(ui.iconsColored.lorem.ipsum.adipiscing, IconsColoredWithColors(testIcon04, ui));
    expect(ui.iconsColored.lorem.ipsum.consectetur, IconsColoredWithColors(testIcon05, ui));
    expect(ui.iconsColored.lorem.elit, IconsColoredWithColors(testIcon07, ui));
    expect(ui.iconsColored.lorem.sed, IconsColoredWithColors(testIcon09, ui));
    expect(ui.iconsColored.do_, IconsColoredWithColors(testIcon10, ui));
    expect(ui.iconsColored.eiusmod, IconsColoredWithColors(testIcon12, ui));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.adipiscing, (testIcon01, testColor04));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.adipiscing, (testIcon02, testColor04));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.adipiscing, (testIcon04, testColor04));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.elit, (testIcon01, testColor06));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.elit, (testIcon02, testColor06));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.elit, (testIcon04, testColor06));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.ad, (testIcon01, testColor14));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.ad, (testIcon02, testColor14));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.ad, (testIcon04, testColor14));

    expect(ui.iconsColored.lorem.ipsum.dolor.amet.colored(testColor01), (testIcon01, testColor01));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit.colored(testColor01), (testIcon02, testColor01));
    expect(ui.iconsColored.lorem.ipsum.adipiscing.colored(testColor01), (testIcon04, testColor01));
  });
}
