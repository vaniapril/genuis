import 'package:getter_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testFontsColored();
}

void testFontsColored() {
  test('Module: fonts_colored - roboto (light)', () {
    final ui = UI.light;

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit, FontsColoredWithColors(testFont11, ui));
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet, FontsColoredWithColors(testFont12, ui));
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur, FontsColoredWithColors(testFont13, ui));
    expect(ui.fontsColored.roboto.lorem.adipiscing.elit, FontsColoredWithColors(testFont14, ui));
    expect(ui.fontsColored.roboto.lorem.adipiscing.sed, FontsColoredWithColors(testFont15, ui));
    expect(ui.fontsColored.roboto.lorem.eiusmod, FontsColoredWithColors(testFont16, ui));
    expect(ui.fontsColored.roboto.tempor.incididunt, FontsColoredWithColors(testFont17, ui));
    expect(ui.fontsColored.roboto.tempor.ut, FontsColoredWithColors(testFont18, ui));
    expect(ui.fontsColored.roboto.labore, FontsColoredWithColors(testFont19, ui));

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

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit, FontsColoredWithColors(testFont11, ui));
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet, FontsColoredWithColors(testFont12, ui));
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur, FontsColoredWithColors(testFont13, ui));
    expect(ui.fontsColored.roboto.lorem.adipiscing.elit, FontsColoredWithColors(testFont14, ui));
    expect(ui.fontsColored.roboto.lorem.adipiscing.sed, FontsColoredWithColors(testFont15, ui));
    expect(ui.fontsColored.roboto.lorem.eiusmod, FontsColoredWithColors(testFont16, ui));
    expect(ui.fontsColored.roboto.tempor.incididunt, FontsColoredWithColors(testFont17, ui));
    expect(ui.fontsColored.roboto.tempor.ut, FontsColoredWithColors(testFont18, ui));
    expect(ui.fontsColored.roboto.labore, FontsColoredWithColors(testFont19, ui));

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
