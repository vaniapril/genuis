import 'package:test/test.dart';
import 'package:themes_test/ui/ui.ui.dart';

import 'values.dart';

void main() {
  testIcons();
  testIconsColored();
}

void testIcons() {
  test('Module: colors_root (theme_dolor)', () {
    final ui = UI.themeDolor;

    expect(ui.icons.lorem.dolore.magna.aliqua, testIcon01);
    expect(ui.icons.lorem.dolore.magna.incididunt, testIcon05);
  });

  test('Module: colors_root (theme_ipsum)', () {
    final ui = UI.themeIpsum;

    expect(ui.icons.lorem.dolore.magna.aliqua, testIcon02);
    expect(ui.icons.lorem.dolore.magna.incididunt, testIcon06);
  });

  test('Module: colors_root (theme_lorem)', () {
    final ui = UI.themeLorem;

    expect(ui.icons.lorem.dolore.magna.aliqua, testIcon03);
    expect(ui.icons.lorem.dolore.magna.incididunt, testIcon07);
  });

  test('Module: colors_root (theme_sit)', () {
    final ui = UI.themeSit;

    expect(ui.icons.lorem.dolore.magna.aliqua, testIcon04);
    expect(ui.icons.lorem.dolore.magna.incididunt, testIcon08);
  });
}

void testIconsColored() {
  test('Module: colors_root (theme_dolor)', () {
    final ui = UI.themeDolor;

    expect(ui.iconsColored.lorem.dolore.magna.aliqua.ex, (testIcon01, testColor01));
    expect(ui.iconsColored.lorem.dolore.magna.incididunt.ex, (testIcon05, testColor01));
  });

  test('Module: colors_root (theme_ipsum)', () {
    final ui = UI.themeIpsum;

    expect(ui.iconsColored.lorem.dolore.magna.aliqua.ex, (testIcon02, testColor02));
    expect(ui.iconsColored.lorem.dolore.magna.incididunt.ex, (testIcon06, testColor02));
  });

  test('Module: colors_root (theme_lorem)', () {
    final ui = UI.themeLorem;

    expect(ui.iconsColored.lorem.dolore.magna.aliqua.ex, (testIcon03, testColor03));
    expect(ui.iconsColored.lorem.dolore.magna.incididunt.ex, (testIcon07, testColor03));
  });

  test('Module: colors_root (theme_sit)', () {
    final ui = UI.themeSit;

    expect(ui.iconsColored.lorem.dolore.magna.aliqua.ex, (testIcon04, testColor04));
    expect(ui.iconsColored.lorem.dolore.magna.incididunt.ex, (testIcon08, testColor04));
  });
}
