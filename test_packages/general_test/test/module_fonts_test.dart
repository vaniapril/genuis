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

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit, FontsColoredWithColors.light(testFont01));
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet, FontsColoredWithColors.light(testFont02));
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur, FontsColoredWithColors.light(testFont03));
    expect(ui.fontsColored.manrope.lorem.adipiscing.elit, FontsColoredWithColors.light(testFont04));
    expect(ui.fontsColored.manrope.lorem.adipiscing.sed, FontsColoredWithColors.light(testFont05));
    expect(ui.fontsColored.manrope.lorem.eiusmod, FontsColoredWithColors.light(testFont06));
    expect(ui.fontsColored.manrope.tempor.incididunt, FontsColoredWithColors.light(testFont07));
    expect(ui.fontsColored.manrope.tempor.ut, FontsColoredWithColors.light(testFont08));
    expect(ui.fontsColored.manrope.labore, FontsColoredWithColors.light(testFont09));

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

    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.sit, FontsColoredWithColors.dark(testFont01));
    expect(ui.fontsColored.manrope.lorem.ipsum.dolor.amet, FontsColoredWithColors.dark(testFont02));
    expect(ui.fontsColored.manrope.lorem.ipsum.consectetur, FontsColoredWithColors.dark(testFont03));
    expect(ui.fontsColored.manrope.lorem.adipiscing.elit, FontsColoredWithColors.dark(testFont04));
    expect(ui.fontsColored.manrope.lorem.adipiscing.sed, FontsColoredWithColors.dark(testFont05));
    expect(ui.fontsColored.manrope.lorem.eiusmod, FontsColoredWithColors.dark(testFont06));
    expect(ui.fontsColored.manrope.tempor.incididunt, FontsColoredWithColors.dark(testFont07));
    expect(ui.fontsColored.manrope.tempor.ut, FontsColoredWithColors.dark(testFont08));
    expect(ui.fontsColored.manrope.labore, FontsColoredWithColors.dark(testFont09));

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

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit, FontsColoredWithColors.light(testFont11));
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet, FontsColoredWithColors.light(testFont12));
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur, FontsColoredWithColors.light(testFont13));
    expect(ui.fontsColored.roboto.lorem.adipiscing.elit, FontsColoredWithColors.light(testFont14));
    expect(ui.fontsColored.roboto.lorem.adipiscing.sed, FontsColoredWithColors.light(testFont15));
    expect(ui.fontsColored.roboto.lorem.eiusmod, FontsColoredWithColors.light(testFont16));
    expect(ui.fontsColored.roboto.tempor.incididunt, FontsColoredWithColors.light(testFont17));
    expect(ui.fontsColored.roboto.tempor.ut, FontsColoredWithColors.light(testFont18));
    expect(ui.fontsColored.roboto.labore, FontsColoredWithColors.light(testFont19));

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

    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.sit, FontsColoredWithColors.dark(testFont11));
    expect(ui.fontsColored.roboto.lorem.ipsum.dolor.amet, FontsColoredWithColors.dark(testFont12));
    expect(ui.fontsColored.roboto.lorem.ipsum.consectetur, FontsColoredWithColors.dark(testFont13));
    expect(ui.fontsColored.roboto.lorem.adipiscing.elit, FontsColoredWithColors.dark(testFont14));
    expect(ui.fontsColored.roboto.lorem.adipiscing.sed, FontsColoredWithColors.dark(testFont15));
    expect(ui.fontsColored.roboto.lorem.eiusmod, FontsColoredWithColors.dark(testFont16));
    expect(ui.fontsColored.roboto.tempor.incididunt, FontsColoredWithColors.dark(testFont17));
    expect(ui.fontsColored.roboto.tempor.ut, FontsColoredWithColors.dark(testFont18));
    expect(ui.fontsColored.roboto.labore, FontsColoredWithColors.dark(testFont19));

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

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors.light(testFont01));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors.light(testFont02));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur, FontsColoredXmlWithColors.light(testFont03));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.elit, FontsColoredXmlWithColors.light(testFont04));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.sed, FontsColoredXmlWithColors.light(testFont05));
    expect(ui.fontsColoredXml.manrope.lorem.eiusmod, FontsColoredXmlWithColors.light(testFont06));
    expect(ui.fontsColoredXml.manrope.tempor.incididunt, FontsColoredXmlWithColors.light(testFont07));
    expect(ui.fontsColoredXml.manrope.tempor.ut, FontsColoredXmlWithColors.light(testFont08));
    expect(ui.fontsColoredXml.manrope.labore, FontsColoredXmlWithColors.light(testFont09));

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

    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors.dark(testFont01));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors.dark(testFont02));
    expect(ui.fontsColoredXml.manrope.lorem.ipsum.consectetur, FontsColoredXmlWithColors.dark(testFont03));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.elit, FontsColoredXmlWithColors.dark(testFont04));
    expect(ui.fontsColoredXml.manrope.lorem.adipiscing.sed, FontsColoredXmlWithColors.dark(testFont05));
    expect(ui.fontsColoredXml.manrope.lorem.eiusmod, FontsColoredXmlWithColors.dark(testFont06));
    expect(ui.fontsColoredXml.manrope.tempor.incididunt, FontsColoredXmlWithColors.dark(testFont07));
    expect(ui.fontsColoredXml.manrope.tempor.ut, FontsColoredXmlWithColors.dark(testFont08));
    expect(ui.fontsColoredXml.manrope.labore, FontsColoredXmlWithColors.dark(testFont09));

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

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors.light(testFont11));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors.light(testFont12));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur, FontsColoredXmlWithColors.light(testFont13));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.elit, FontsColoredXmlWithColors.light(testFont14));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.sed, FontsColoredXmlWithColors.light(testFont15));
    expect(ui.fontsColoredXml.roboto.lorem.eiusmod, FontsColoredXmlWithColors.light(testFont16));
    expect(ui.fontsColoredXml.roboto.tempor.incididunt, FontsColoredXmlWithColors.light(testFont17));
    expect(ui.fontsColoredXml.roboto.tempor.ut, FontsColoredXmlWithColors.light(testFont18));
    expect(ui.fontsColoredXml.roboto.labore, FontsColoredXmlWithColors.light(testFont19));

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

    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.sit, FontsColoredXmlWithColors.dark(testFont11));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.dolor.amet, FontsColoredXmlWithColors.dark(testFont12));
    expect(ui.fontsColoredXml.roboto.lorem.ipsum.consectetur, FontsColoredXmlWithColors.dark(testFont13));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.elit, FontsColoredXmlWithColors.dark(testFont14));
    expect(ui.fontsColoredXml.roboto.lorem.adipiscing.sed, FontsColoredXmlWithColors.dark(testFont15));
    expect(ui.fontsColoredXml.roboto.lorem.eiusmod, FontsColoredXmlWithColors.dark(testFont16));
    expect(ui.fontsColoredXml.roboto.tempor.incididunt, FontsColoredXmlWithColors.dark(testFont17));
    expect(ui.fontsColoredXml.roboto.tempor.ut, FontsColoredXmlWithColors.dark(testFont18));
    expect(ui.fontsColoredXml.roboto.labore, FontsColoredXmlWithColors.dark(testFont19));

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
