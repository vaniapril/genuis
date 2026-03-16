import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testShadows();
  testShadowsXml();
  testShadowsColored();
  testShadowsColoredXml();
}

void testShadows() {
  test('Module: shadows (light)', () {
    final ui = UI.light;

    expect(ui.shadows.lorem.ipsum.amet, testShadow02);
    expect(ui.shadows.lorem.ipsum.elit, testShadow03);
    expect(ui.shadows.lorem.sed, testShadow05);
    expect(ui.shadows.lorem.do_, testShadow06);
    expect(ui.shadows.tempor, testShadow08);
    expect(ui.shadows.ut, testShadow09);
  });

  test('Module: shadows (dark)', () {
    final ui = UI.dark;

    expect(ui.shadows.lorem.ipsum.amet, testShadow01);
    expect(ui.shadows.lorem.ipsum.elit, testShadow03);
    expect(ui.shadows.lorem.sed, testShadow04);
    expect(ui.shadows.lorem.do_, testShadow06);
    expect(ui.shadows.tempor, testShadow07);
    expect(ui.shadows.ut, testShadow09);
  });
}

void testShadowsXml() {
  test('Module: shadows_xml (light)', () {
    final ui = UI.light;

    expect(ui.shadowsXml.lorem.ipsum.amet, testShadow02);
    expect(ui.shadowsXml.lorem.ipsum.elit, testShadow03);
    expect(ui.shadowsXml.lorem.sed, testShadow05);
    expect(ui.shadowsXml.lorem.do_, testShadow06);
    expect(ui.shadowsXml.tempor, testShadow08);
    expect(ui.shadowsXml.ut, testShadow09);
  });

  test('Module: shadows_xml (dark)', () {
    final ui = UI.dark;

    expect(ui.shadowsXml.lorem.ipsum.amet, testShadow01);
    expect(ui.shadowsXml.lorem.ipsum.elit, testShadow03);
    expect(ui.shadowsXml.lorem.sed, testShadow04);
    expect(ui.shadowsXml.lorem.do_, testShadow06);
    expect(ui.shadowsXml.tempor, testShadow07);
    expect(ui.shadowsXml.ut, testShadow09);
  });
}

void testShadowsColored() {
  test('Module: shadows_colored (light)', () {
    final ui = UI.light;

    expect(ui.shadowsColored.lorem.ipsum.amet, ShadowsColoredWithColors(testShadow02, ui));
    expect(ui.shadowsColored.lorem.ipsum.elit, ShadowsColoredWithColors(testShadow03, ui));
    expect(ui.shadowsColored.lorem.sed, ShadowsColoredWithColors(testShadow05, ui));
    expect(ui.shadowsColored.lorem.do_, ShadowsColoredWithColors(testShadow06, ui));
    expect(ui.shadowsColored.tempor, ShadowsColoredWithColors(testShadow08, ui));
    expect(ui.shadowsColored.ut, ShadowsColoredWithColors(testShadow09, ui));

    expect(ui.shadowsColored.lorem.ipsum.amet.magna, (testShadow02, testColor11));
    expect(ui.shadowsColored.lorem.ipsum.elit.magna, (testShadow03, testColor11));
    expect(ui.shadowsColored.lorem.sed.magna, (testShadow05, testColor11));

    expect(ui.shadowsColored.lorem.ipsum.amet.ut, (testShadow02, testColor12));
    expect(ui.shadowsColored.lorem.ipsum.elit.ut, (testShadow03, testColor12));
    expect(ui.shadowsColored.lorem.sed.ut, (testShadow05, testColor12));

    expect(ui.shadowsColored.lorem.ipsum.amet.et, (testShadow02, testColor13));
    expect(ui.shadowsColored.lorem.ipsum.elit.et, (testShadow03, testColor13));
    expect(ui.shadowsColored.lorem.sed.et, (testShadow05, testColor13));

    expect(ui.shadowsColored.lorem.ipsum.amet.veniam, (testShadow02, testColor14));
    expect(ui.shadowsColored.lorem.ipsum.elit.veniam, (testShadow03, testColor14));
    expect(ui.shadowsColored.lorem.sed.veniam, (testShadow05, testColor14));

    expect(ui.shadowsColored.lorem.ipsum.amet.colored(testColor01), (testShadow02, testColor01));
    expect(ui.shadowsColored.lorem.ipsum.elit.colored(testColor01), (testShadow03, testColor01));
    expect(ui.shadowsColored.lorem.sed.colored(testColor01), (testShadow05, testColor01));
  });

  test('Module: shadows_colored (dark)', () {
    final ui = UI.dark;

    expect(ui.shadowsColored.lorem.ipsum.amet, ShadowsColoredWithColors(testShadow01, ui));
    expect(ui.shadowsColored.lorem.ipsum.elit, ShadowsColoredWithColors(testShadow03, ui));
    expect(ui.shadowsColored.lorem.sed, ShadowsColoredWithColors(testShadow04, ui));
    expect(ui.shadowsColored.lorem.do_, ShadowsColoredWithColors(testShadow06, ui));
    expect(ui.shadowsColored.tempor, ShadowsColoredWithColors(testShadow07, ui));
    expect(ui.shadowsColored.ut, ShadowsColoredWithColors(testShadow09, ui));

    expect(ui.shadowsColored.lorem.ipsum.amet.magna, (testShadow01, testColor10));
    expect(ui.shadowsColored.lorem.ipsum.elit.magna, (testShadow03, testColor10));
    expect(ui.shadowsColored.lorem.sed.magna, (testShadow04, testColor10));

    expect(ui.shadowsColored.lorem.ipsum.amet.ut, (testShadow01, testColor12));
    expect(ui.shadowsColored.lorem.ipsum.elit.ut, (testShadow03, testColor12));
    expect(ui.shadowsColored.lorem.sed.ut, (testShadow04, testColor12));

    expect(ui.shadowsColored.lorem.ipsum.amet.et, (testShadow01, testColor13));
    expect(ui.shadowsColored.lorem.ipsum.elit.et, (testShadow03, testColor13));
    expect(ui.shadowsColored.lorem.sed.et, (testShadow04, testColor13));

    expect(ui.shadowsColored.lorem.ipsum.amet.veniam, (testShadow01, testColor14));
    expect(ui.shadowsColored.lorem.ipsum.elit.veniam, (testShadow03, testColor14));
    expect(ui.shadowsColored.lorem.sed.veniam, (testShadow04, testColor14));

    expect(ui.shadowsColored.lorem.ipsum.amet.colored(testColor01), (testShadow01, testColor01));
    expect(ui.shadowsColored.lorem.ipsum.elit.colored(testColor01), (testShadow03, testColor01));
    expect(ui.shadowsColored.lorem.sed.colored(testColor01), (testShadow04, testColor01));
  });
}

void testShadowsColoredXml() {
  test('Module: shadows_colored_xml (light)', () {
    final ui = UI.light;

    expect(ui.shadowsColoredXml.lorem.ipsum.amet, ShadowsColoredXmlWithColors(testShadow02, ui));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit, ShadowsColoredXmlWithColors(testShadow03, ui));
    expect(ui.shadowsColoredXml.lorem.sed, ShadowsColoredXmlWithColors(testShadow05, ui));
    expect(ui.shadowsColoredXml.lorem.do_, ShadowsColoredXmlWithColors(testShadow06, ui));
    expect(ui.shadowsColoredXml.tempor, ShadowsColoredXmlWithColors(testShadow08, ui));
    expect(ui.shadowsColoredXml.ut, ShadowsColoredXmlWithColors(testShadow09, ui));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.magna, (testShadow02, testColor11));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.magna, (testShadow03, testColor11));
    expect(ui.shadowsColoredXml.lorem.sed.magna, (testShadow05, testColor11));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.ut, (testShadow02, testColor12));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.ut, (testShadow03, testColor12));
    expect(ui.shadowsColoredXml.lorem.sed.ut, (testShadow05, testColor12));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.et, (testShadow02, testColor13));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.et, (testShadow03, testColor13));
    expect(ui.shadowsColoredXml.lorem.sed.et, (testShadow05, testColor13));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.veniamXml, (testShadow02, testColor14));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.veniamXml, (testShadow03, testColor14));
    expect(ui.shadowsColoredXml.lorem.sed.veniamXml, (testShadow05, testColor14));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.colored(testColor01), (testShadow02, testColor01));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.colored(testColor01), (testShadow03, testColor01));
    expect(ui.shadowsColoredXml.lorem.sed.colored(testColor01), (testShadow05, testColor01));
  });

  test('Module: shadows_colored_xml (dark)', () {
    final ui = UI.dark;

    expect(ui.shadowsColoredXml.lorem.ipsum.amet, ShadowsColoredXmlWithColors(testShadow01, ui));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit, ShadowsColoredXmlWithColors(testShadow03, ui));
    expect(ui.shadowsColoredXml.lorem.sed, ShadowsColoredXmlWithColors(testShadow04, ui));
    expect(ui.shadowsColoredXml.lorem.do_, ShadowsColoredXmlWithColors(testShadow06, ui));
    expect(ui.shadowsColoredXml.tempor, ShadowsColoredXmlWithColors(testShadow07, ui));
    expect(ui.shadowsColoredXml.ut, ShadowsColoredXmlWithColors(testShadow09, ui));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.magna, (testShadow01, testColor10));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.magna, (testShadow03, testColor10));
    expect(ui.shadowsColoredXml.lorem.sed.magna, (testShadow04, testColor10));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.ut, (testShadow01, testColor12));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.ut, (testShadow03, testColor12));
    expect(ui.shadowsColoredXml.lorem.sed.ut, (testShadow04, testColor12));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.et, (testShadow01, testColor13));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.et, (testShadow03, testColor13));
    expect(ui.shadowsColoredXml.lorem.sed.et, (testShadow04, testColor13));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.veniamXml, (testShadow01, testColor14));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.veniamXml, (testShadow03, testColor14));
    expect(ui.shadowsColoredXml.lorem.sed.veniamXml, (testShadow04, testColor14));

    expect(ui.shadowsColoredXml.lorem.ipsum.amet.colored(testColor01), (testShadow01, testColor01));
    expect(ui.shadowsColoredXml.lorem.ipsum.elit.colored(testColor01), (testShadow03, testColor01));
    expect(ui.shadowsColoredXml.lorem.sed.colored(testColor01), (testShadow04, testColor01));
  });
}
