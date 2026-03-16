import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testFonts();
  testFontsXml();
  testFontsColored();
  testFontsColoredXml();
}

void testFonts() {
  test('Module: fonts - manrope (light)', () {
    final ui = UI.light;

    expect(ui.fonts.manrope.lorem.ipsum.dolor.sit, testFont01);
    expect(ui.fonts.manrope.lorem.ipsum.dolor.amet, testFont02);
    expect(ui.fonts.manrope.lorem.ipsum.consectetur, testFont03);
    expect(ui.fonts.manrope.lorem.adipiscing.elit, testFont04);
    expect(ui.fonts.manrope.lorem.adipiscing.sed, testFont05);
    expect(ui.fonts.manrope.lorem.eiusmod, testFont06);
    expect(ui.fonts.manrope.tempor.incididunt, testFont07);
    expect(ui.fonts.manrope.tempor.ut, testFont08);
    expect(ui.fonts.manrope.labore, testFont09);
  });

  test('Module: fonts - manrope (dark)', () {
    final ui = UI.dark;

    expect(ui.fonts.manrope.lorem.ipsum.dolor.sit, testFont01);
    expect(ui.fonts.manrope.lorem.ipsum.dolor.amet, testFont02);
    expect(ui.fonts.manrope.lorem.ipsum.consectetur, testFont03);
    expect(ui.fonts.manrope.lorem.adipiscing.elit, testFont04);
    expect(ui.fonts.manrope.lorem.adipiscing.sed, testFont05);
    expect(ui.fonts.manrope.lorem.eiusmod, testFont06);
    expect(ui.fonts.manrope.tempor.incididunt, testFont07);
    expect(ui.fonts.manrope.tempor.ut, testFont08);
    expect(ui.fonts.manrope.labore, testFont09);
  });

  test('Module: fonts - roboto (light)', () {
    final ui = UI.light;

    expect(ui.fonts.roboto.lorem.ipsum.dolor.sit, testFont11);
    expect(ui.fonts.roboto.lorem.ipsum.dolor.amet, testFont12);
    expect(ui.fonts.roboto.lorem.ipsum.consectetur, testFont13);
    expect(ui.fonts.roboto.lorem.adipiscing.elit, testFont14);
    expect(ui.fonts.roboto.lorem.adipiscing.sed, testFont15);
    expect(ui.fonts.roboto.lorem.eiusmod, testFont16);
    expect(ui.fonts.roboto.tempor.incididunt, testFont17);
    expect(ui.fonts.roboto.tempor.ut, testFont18);
    expect(ui.fonts.roboto.labore, testFont19);
  });

  test('Module: fonts - roboto (dark)', () {
    final ui = UI.dark;

    expect(ui.fonts.roboto.lorem.ipsum.dolor.sit, testFont11);
    expect(ui.fonts.roboto.lorem.ipsum.dolor.amet, testFont12);
    expect(ui.fonts.roboto.lorem.ipsum.consectetur, testFont13);
    expect(ui.fonts.roboto.lorem.adipiscing.elit, testFont14);
    expect(ui.fonts.roboto.lorem.adipiscing.sed, testFont15);
    expect(ui.fonts.roboto.lorem.eiusmod, testFont16);
    expect(ui.fonts.roboto.tempor.incididunt, testFont17);
    expect(ui.fonts.roboto.tempor.ut, testFont18);
    expect(ui.fonts.roboto.labore, testFont19);
  });
}

void testFontsXml() {
  test('Module: fonts_xml - manrope (light)', () {
    final ui = UI.light;

    expect(ui.fontsXml.manrope.lorem.ipsum.dolor.sit, testFont01);
    expect(ui.fontsXml.manrope.lorem.ipsum.dolor.amet, testFont02);
    expect(ui.fontsXml.manrope.lorem.ipsum.consectetur, testFont03);
    expect(ui.fontsXml.manrope.lorem.adipiscing.elit, testFont04);
    expect(ui.fontsXml.manrope.lorem.adipiscing.sed, testFont05);
    expect(ui.fontsXml.manrope.lorem.eiusmod, testFont06);
    expect(ui.fontsXml.manrope.tempor.incididunt, testFont07);
    expect(ui.fontsXml.manrope.tempor.ut, testFont08);
    expect(ui.fontsXml.manrope.labore, testFont09);
  });

  test('Module: fonts_xml - manrope (dark)', () {
    final ui = UI.dark;

    expect(ui.fontsXml.manrope.lorem.ipsum.dolor.sit, testFont01);
    expect(ui.fontsXml.manrope.lorem.ipsum.dolor.amet, testFont02);
    expect(ui.fontsXml.manrope.lorem.ipsum.consectetur, testFont03);
    expect(ui.fontsXml.manrope.lorem.adipiscing.elit, testFont04);
    expect(ui.fontsXml.manrope.lorem.adipiscing.sed, testFont05);
    expect(ui.fontsXml.manrope.lorem.eiusmod, testFont06);
    expect(ui.fontsXml.manrope.tempor.incididunt, testFont07);
    expect(ui.fontsXml.manrope.tempor.ut, testFont08);
    expect(ui.fontsXml.manrope.labore, testFont09);
  });

  test('Module: fonts_xml - roboto (light)', () {
    final ui = UI.light;

    expect(ui.fontsXml.roboto.lorem.ipsum.dolor.sit, testFont11);
    expect(ui.fontsXml.roboto.lorem.ipsum.dolor.amet, testFont12);
    expect(ui.fontsXml.roboto.lorem.ipsum.consectetur, testFont13);
    expect(ui.fontsXml.roboto.lorem.adipiscing.elit, testFont14);
    expect(ui.fontsXml.roboto.lorem.adipiscing.sed, testFont15);
    expect(ui.fontsXml.roboto.lorem.eiusmod, testFont16);
    expect(ui.fontsXml.roboto.tempor.incididunt, testFont17);
    expect(ui.fontsXml.roboto.tempor.ut, testFont18);
    expect(ui.fontsXml.roboto.labore, testFont19);
  });

  test('Module: fonts_xml - roboto (dark)', () {
    final ui = UI.dark;

    expect(ui.fontsXml.roboto.lorem.ipsum.dolor.sit, testFont11);
    expect(ui.fontsXml.roboto.lorem.ipsum.dolor.amet, testFont12);
    expect(ui.fontsXml.roboto.lorem.ipsum.consectetur, testFont13);
    expect(ui.fontsXml.roboto.lorem.adipiscing.elit, testFont14);
    expect(ui.fontsXml.roboto.lorem.adipiscing.sed, testFont15);
    expect(ui.fontsXml.roboto.lorem.eiusmod, testFont16);
    expect(ui.fontsXml.roboto.tempor.incididunt, testFont17);
    expect(ui.fontsXml.roboto.tempor.ut, testFont18);
    expect(ui.fontsXml.roboto.labore, testFont19);
  });
}

void testFontsColored() {
  test('Module: fonts_colored - manrope (light)', () {
    final ui = UI.light;

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit, FontsColoredWithColors(testFont01, ui));
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet, FontsColoredWithColors(testFont02, ui));
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur, FontsColoredWithColors(testFont03, ui));
    expect(ui.fontsColored.manrope.lorem.adipiscing.elit, FontsColoredWithColors(testFont04, ui));
    expect(ui.fontsColored.manrope.lorem.adipiscing.sed, FontsColoredWithColors(testFont05, ui));
    expect(ui.fontsColored.manrope.lorem.eiusmod, FontsColoredWithColors(testFont06, ui));
    expect(ui.fontsColored.manrope.tempor.incididunt, FontsColoredWithColors(testFont07, ui));
    expect(ui.fontsColored.manrope.tempor.ut, FontsColoredWithColors(testFont08, ui));
    expect(ui.fontsColored.manrope.labore, FontsColoredWithColors(testFont09, ui));

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.colored(null), testFont01);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.colored(null), testFont02);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.colored(null), testFont03);
    expect(ui.fontsColored.manrope.lorem.adipiscing.elit.colored(null), testFont04);
    expect(ui.fontsColored.manrope.lorem.adipiscing.sed.colored(null), testFont05);
    expect(ui.fontsColored.manrope.lorem.eiusmod.colored(null), testFont06);
    expect(ui.fontsColored.manrope.tempor.incididunt.colored(null), testFont07);
    expect(ui.fontsColored.manrope.tempor.ut.colored(null), testFont08);
    expect(ui.fontsColored.manrope.labore.colored(null), testFont09);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.amet, testFont01Color02);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.amet, testFont02Color02);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.amet, testFont03Color02);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.labore, testFont01Color03);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.labore, testFont02Color03);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.labore, testFont03Color03);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.et, testFont01Color13);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.et, testFont02Color13);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.et, testFont03Color13);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.enim, testFont01Color14);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.enim, testFont02Color14);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.enim, testFont03Color14);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.colored(testColor04), testFont01Color04);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.colored(testColor04), testFont02Color04);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.colored(testColor04), testFont03Color04);
  });

  test('Module: fonts_colored - manrope (dark)', () {
    final ui = UI.dark;

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit, FontsColoredWithColors(testFont01, ui));
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet, FontsColoredWithColors(testFont02, ui));
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur, FontsColoredWithColors(testFont03, ui));
    expect(ui.fontsColored.manrope.lorem.adipiscing.elit, FontsColoredWithColors(testFont04, ui));
    expect(ui.fontsColored.manrope.lorem.adipiscing.sed, FontsColoredWithColors(testFont05, ui));
    expect(ui.fontsColored.manrope.lorem.eiusmod, FontsColoredWithColors(testFont06, ui));
    expect(ui.fontsColored.manrope.tempor.incididunt, FontsColoredWithColors(testFont07, ui));
    expect(ui.fontsColored.manrope.tempor.ut, FontsColoredWithColors(testFont08, ui));
    expect(ui.fontsColored.manrope.labore, FontsColoredWithColors(testFont09, ui));

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.colored(null), testFont01);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.colored(null), testFont02);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.colored(null), testFont03);
    expect(ui.fontsColored.manrope.lorem.adipiscing.elit.colored(null), testFont04);
    expect(ui.fontsColored.manrope.lorem.adipiscing.sed.colored(null), testFont05);
    expect(ui.fontsColored.manrope.lorem.eiusmod.colored(null), testFont06);
    expect(ui.fontsColored.manrope.tempor.incididunt.colored(null), testFont07);
    expect(ui.fontsColored.manrope.tempor.ut.colored(null), testFont08);
    expect(ui.fontsColored.manrope.labore.colored(null), testFont09);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.amet, testFont01Color01);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.amet, testFont02Color01);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.amet, testFont03Color01);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.labore, testFont01Color03);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.labore, testFont02Color03);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.labore, testFont03Color03);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.et, testFont01Color13);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.et, testFont02Color13);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.et, testFont03Color13);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.enim, testFont01Color14);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.enim, testFont02Color14);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.enim, testFont03Color14);

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit.colored(testColor04), testFont01Color04);
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet.colored(testColor04), testFont02Color04);
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur.colored(testColor04), testFont03Color04);
  });

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

void testFontsColoredXml() {
  test('Module: fonts_colored_xml - manrope (light)', () {
    final ui = UI.light;

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors(testFont01, ui));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors(testFont02, ui));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur, FontsColoredXmlWithColors(testFont03, ui));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.elit, FontsColoredXmlWithColors(testFont04, ui));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.sed, FontsColoredXmlWithColors(testFont05, ui));
    expect(ui.fontsColoredXml.manrope.lorem.eiusmod, FontsColoredXmlWithColors(testFont06, ui));
    expect(ui.fontsColoredXml.manrope.tempor.incididunt, FontsColoredXmlWithColors(testFont07, ui));
    expect(ui.fontsColoredXml.manrope.tempor.ut, FontsColoredXmlWithColors(testFont08, ui));
    expect(ui.fontsColoredXml.manrope.labore, FontsColoredXmlWithColors(testFont09, ui));

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.colored(null), testFont01);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.colored(null), testFont02);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.colored(null), testFont03);
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.elit.colored(null), testFont04);
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.sed.colored(null), testFont05);
    expect(ui.fontsColoredXml.manrope.lorem.eiusmod.colored(null), testFont06);
    expect(ui.fontsColoredXml.manrope.tempor.incididunt.colored(null), testFont07);
    expect(ui.fontsColoredXml.manrope.tempor.ut.colored(null), testFont08);
    expect(ui.fontsColoredXml.manrope.labore.colored(null), testFont09);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.amet, testFont01Color02);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.amet, testFont02Color02);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.amet, testFont03Color02);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.labore, testFont01Color03);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.labore, testFont02Color03);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.labore, testFont03Color03);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.et, testFont01Color13);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.et, testFont02Color13);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.et, testFont03Color13);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.enimXml, testFont01Color14);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.enimXml, testFont02Color14);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.enimXml, testFont03Color14);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.colored(testColor04), testFont01Color04);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.colored(testColor04), testFont02Color04);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.colored(testColor04), testFont03Color04);
  });

  test('Module: fonts_colored_xml - manrope (dark)', () {
    final ui = UI.dark;

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors(testFont01, ui));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors(testFont02, ui));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur, FontsColoredXmlWithColors(testFont03, ui));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.elit, FontsColoredXmlWithColors(testFont04, ui));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.sed, FontsColoredXmlWithColors(testFont05, ui));
    expect(ui.fontsColoredXml.manrope.lorem.eiusmod, FontsColoredXmlWithColors(testFont06, ui));
    expect(ui.fontsColoredXml.manrope.tempor.incididunt, FontsColoredXmlWithColors(testFont07, ui));
    expect(ui.fontsColoredXml.manrope.tempor.ut, FontsColoredXmlWithColors(testFont08, ui));
    expect(ui.fontsColoredXml.manrope.labore, FontsColoredXmlWithColors(testFont09, ui));

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.colored(null), testFont01);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.colored(null), testFont02);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.colored(null), testFont03);
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.elit.colored(null), testFont04);
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.sed.colored(null), testFont05);
    expect(ui.fontsColoredXml.manrope.lorem.eiusmod.colored(null), testFont06);
    expect(ui.fontsColoredXml.manrope.tempor.incididunt.colored(null), testFont07);
    expect(ui.fontsColoredXml.manrope.tempor.ut.colored(null), testFont08);
    expect(ui.fontsColoredXml.manrope.labore.colored(null), testFont09);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.amet, testFont01Color01);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.amet, testFont02Color01);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.amet, testFont03Color01);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.labore, testFont01Color03);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.labore, testFont02Color03);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.labore, testFont03Color03);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.et, testFont01Color13);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.et, testFont02Color13);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.et, testFont03Color13);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.enimXml, testFont01Color14);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.enimXml, testFont02Color14);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.enimXml, testFont03Color14);

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit.colored(testColor04), testFont01Color04);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet.colored(testColor04), testFont02Color04);
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur.colored(testColor04), testFont03Color04);
  });

  test('Module: fonts_colored_xml - roboto (light)', () {
    final ui = UI.light;

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors(testFont11, ui));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors(testFont12, ui));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur, FontsColoredXmlWithColors(testFont13, ui));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.elit, FontsColoredXmlWithColors(testFont14, ui));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.sed, FontsColoredXmlWithColors(testFont15, ui));
    expect(ui.fontsColoredXml.roboto.lorem.eiusmod, FontsColoredXmlWithColors(testFont16, ui));
    expect(ui.fontsColoredXml.roboto.tempor.incididunt, FontsColoredXmlWithColors(testFont17, ui));
    expect(ui.fontsColoredXml.roboto.tempor.ut, FontsColoredXmlWithColors(testFont18, ui));
    expect(ui.fontsColoredXml.roboto.labore, FontsColoredXmlWithColors(testFont19, ui));

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.colored(null), testFont11);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.colored(null), testFont12);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.colored(null), testFont13);
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.elit.colored(null), testFont14);
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.sed.colored(null), testFont15);
    expect(ui.fontsColoredXml.roboto.lorem.eiusmod.colored(null), testFont16);
    expect(ui.fontsColoredXml.roboto.tempor.incididunt.colored(null), testFont17);
    expect(ui.fontsColoredXml.roboto.tempor.ut.colored(null), testFont18);
    expect(ui.fontsColoredXml.roboto.labore.colored(null), testFont19);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.amet, testFont11Color02);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.amet, testFont12Color02);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.amet, testFont13Color02);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.labore, testFont11Color03);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.labore, testFont12Color03);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.labore, testFont13Color03);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.et, testFont11Color13);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.et, testFont12Color13);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.et, testFont13Color13);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.enimXml, testFont11Color14);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.enimXml, testFont12Color14);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.enimXml, testFont13Color14);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.colored(testColor04), testFont11Color04);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.colored(testColor04), testFont12Color04);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.colored(testColor04), testFont13Color04);
  });

  test('Module: fonts_colored_xml - roboto (dark)', () {
    final ui = UI.dark;

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors(testFont11, ui));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors(testFont12, ui));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur, FontsColoredXmlWithColors(testFont13, ui));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.elit, FontsColoredXmlWithColors(testFont14, ui));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.sed, FontsColoredXmlWithColors(testFont15, ui));
    expect(ui.fontsColoredXml.roboto.lorem.eiusmod, FontsColoredXmlWithColors(testFont16, ui));
    expect(ui.fontsColoredXml.roboto.tempor.incididunt, FontsColoredXmlWithColors(testFont17, ui));
    expect(ui.fontsColoredXml.roboto.tempor.ut, FontsColoredXmlWithColors(testFont18, ui));
    expect(ui.fontsColoredXml.roboto.labore, FontsColoredXmlWithColors(testFont19, ui));

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.colored(null), testFont11);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.colored(null), testFont12);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.colored(null), testFont13);
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.elit.colored(null), testFont14);
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.sed.colored(null), testFont15);
    expect(ui.fontsColoredXml.roboto.lorem.eiusmod.colored(null), testFont16);
    expect(ui.fontsColoredXml.roboto.tempor.incididunt.colored(null), testFont17);
    expect(ui.fontsColoredXml.roboto.tempor.ut.colored(null), testFont18);
    expect(ui.fontsColoredXml.roboto.labore.colored(null), testFont19);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.amet, testFont11Color01);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.amet, testFont12Color01);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.amet, testFont13Color01);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.labore, testFont11Color03);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.labore, testFont12Color03);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.labore, testFont13Color03);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.et, testFont11Color13);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.et, testFont12Color13);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.et, testFont13Color13);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.enimXml, testFont11Color14);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.enimXml, testFont12Color14);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.enimXml, testFont13Color14);

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit.colored(testColor04), testFont11Color04);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet.colored(testColor04), testFont12Color04);
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur.colored(testColor04), testFont13Color04);
  });
}
