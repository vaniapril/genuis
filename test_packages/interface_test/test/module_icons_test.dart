import 'package:interface_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testIcons();
  testIconsColored();
}

void testIcons() {
  test('Module: icons (light)', () {
    const ui = UI.light;

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
    const ui = UI.dark;

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
    const ui = UI.light;

    expect(ui.iconsColored.lorem.ipsum.dolor.amet, IconsColoredWithColors.light(testIcon01));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit, IconsColoredWithColors.light(testIcon03));
    expect(ui.iconsColored.lorem.ipsum.adipiscing, IconsColoredWithColors.light(testIcon04));
    expect(ui.iconsColored.lorem.ipsum.consectetur, IconsColoredWithColors.light(testIcon06));
    expect(ui.iconsColored.lorem.elit, IconsColoredWithColors.light(testIcon08));
    expect(ui.iconsColored.lorem.sed, IconsColoredWithColors.light(testIcon09));
    expect(ui.iconsColored.do_, IconsColoredWithColors.light(testIcon11));
    expect(ui.iconsColored.eiusmod, IconsColoredWithColors.light(testIcon12));

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
    const ui = UI.dark;

    expect(ui.iconsColored.lorem.ipsum.dolor.amet, IconsColoredWithColors.dark(testIcon01));
    expect(ui.iconsColored.lorem.ipsum.dolor.sit, IconsColoredWithColors.dark(testIcon02));
    expect(ui.iconsColored.lorem.ipsum.adipiscing, IconsColoredWithColors.dark(testIcon04));
    expect(ui.iconsColored.lorem.ipsum.consectetur, IconsColoredWithColors.dark(testIcon05));
    expect(ui.iconsColored.lorem.elit, IconsColoredWithColors.dark(testIcon07));
    expect(ui.iconsColored.lorem.sed, IconsColoredWithColors.dark(testIcon09));
    expect(ui.iconsColored.do_, IconsColoredWithColors.dark(testIcon10));
    expect(ui.iconsColored.eiusmod, IconsColoredWithColors.dark(testIcon12));

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
