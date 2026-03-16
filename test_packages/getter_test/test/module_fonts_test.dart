import 'package:getter_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testFontsColored();
}

void testFontsColored() {
  test('Module: fonts_colored - roboto (light)', () {
    final ui = UI.light;

    // expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit, FontsColoredWithColors.light(testFont11));
    // expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet, FontsColoredWithColors.light(testFont12));
    // expect(ui.fontsColored.roboto.lorem.ipsum.consectetur, FontsColoredWithColors.light(testFont13));
    // expect(ui.fontsColored.roboto.lorem.adipiscing.elit, FontsColoredWithColors.light(testFont14));
    // expect(ui.fontsColored.roboto.lorem.adipiscing.sed, FontsColoredWithColors.light(testFont15));
    // expect(ui.fontsColored.roboto.lorem.eiusmod, FontsColoredWithColors.light(testFont16));
    // expect(ui.fontsColored.roboto.tempor.incididunt, FontsColoredWithColors.light(testFont17));
    // expect(ui.fontsColored.roboto.tempor.ut, FontsColoredWithColors.light(testFont18));
    // expect(ui.fontsColored.roboto.labore, FontsColoredWithColors.light(testFont19));

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.colored(null), testFont11);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.colored(null), testFont12);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.colored(null), testFont13);
    expect(ui.fontsColored.roboto.lorem.adipiscing.elit.colored(null), testFont14);
    expect(ui.fontsColored.roboto.lorem.adipiscing.sed.colored(null), testFont15);
    expect(ui.fontsColored.roboto.lorem.eiusmod.colored(null), testFont16);
    expect(ui.fontsColored.roboto.tempor.incididunt.colored(null), testFont17);
    expect(ui.fontsColored.roboto.tempor.ut.colored(null), testFont18);
    expect(ui.fontsColored.roboto.labore.colored(null), testFont19);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.amet, testFont11Color02);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.amet, testFont12Color02);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.amet, testFont13Color02);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.labore, testFont11Color03);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.labore, testFont12Color03);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.labore, testFont13Color03);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.et, testFont11Color13);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.et, testFont12Color13);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.et, testFont13Color13);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.enim, testFont11Color14);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.enim, testFont12Color14);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.enim, testFont13Color14);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.colored(testColor04), testFont11Color04);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.colored(testColor04), testFont12Color04);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.colored(testColor04), testFont13Color04);
  });

  test('Module: fonts_colored - roboto (dark)', () {
    final ui = UI.dark;

    // expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit, FontsColoredWithColors.dark(testFont11));
    // expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet, FontsColoredWithColors.dark(testFont12));
    // expect(ui.fontsColored.roboto.lorem.ipsum.consectetur, FontsColoredWithColors.dark(testFont13));
    // expect(ui.fontsColored.roboto.lorem.adipiscing.elit, FontsColoredWithColors.dark(testFont14));
    // expect(ui.fontsColored.roboto.lorem.adipiscing.sed, FontsColoredWithColors.dark(testFont15));
    // expect(ui.fontsColored.roboto.lorem.eiusmod, FontsColoredWithColors.dark(testFont16));
    // expect(ui.fontsColored.roboto.tempor.incididunt, FontsColoredWithColors.dark(testFont17));
    // expect(ui.fontsColored.roboto.tempor.ut, FontsColoredWithColors.dark(testFont18));
    // expect(ui.fontsColored.roboto.labore, FontsColoredWithColors.dark(testFont19));

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.colored(null), testFont11);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.colored(null), testFont12);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.colored(null), testFont13);
    expect(ui.fontsColored.roboto.lorem.adipiscing.elit.colored(null), testFont14);
    expect(ui.fontsColored.roboto.lorem.adipiscing.sed.colored(null), testFont15);
    expect(ui.fontsColored.roboto.lorem.eiusmod.colored(null), testFont16);
    expect(ui.fontsColored.roboto.tempor.incididunt.colored(null), testFont17);
    expect(ui.fontsColored.roboto.tempor.ut.colored(null), testFont18);
    expect(ui.fontsColored.roboto.labore.colored(null), testFont19);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.amet, testFont11Color01);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.amet, testFont12Color01);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.amet, testFont13Color01);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.labore, testFont11Color03);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.labore, testFont12Color03);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.labore, testFont13Color03);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.et, testFont11Color13);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.et, testFont12Color13);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.et, testFont13Color13);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.enim, testFont11Color14);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.enim, testFont12Color14);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.enim, testFont13Color14);

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit.colored(testColor04), testFont11Color04);
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet.colored(testColor04), testFont12Color04);
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur.colored(testColor04), testFont13Color04);
  });
}
