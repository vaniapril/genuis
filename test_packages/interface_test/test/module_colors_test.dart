import 'package:interface_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Module: colors - moduleColors (light)', () {
    const ui = UI.light;

    expect(ui.colors.moduleColors.lorem.ipsum.sit.amet, testColor02);
    expect(ui.colors.moduleColors.lorem.ipsum.sit.consectetur, testColor03);
    expect(ui.colors.moduleColors.lorem.ipsum.adipiscing, testColor05);
    expect(ui.colors.moduleColors.lorem.ipsum.elit, testColor06);
    expect(ui.colors.moduleColors.lorem.sed, testColor08);
    expect(ui.colors.moduleColors.lorem.do_, testColor09);
    expect(ui.colors.moduleColors.tempor, testColor11);
    expect(ui.colors.moduleColors.ut, testColor12);
  });

  test('Module: colors - moduleColors (dark)', () {
    const ui = UI.dark;

    expect(ui.colors.moduleColors.lorem.ipsum.sit.amet, testColor01);
    expect(ui.colors.moduleColors.lorem.ipsum.sit.consectetur, testColor03);
    expect(ui.colors.moduleColors.lorem.ipsum.adipiscing, testColor04);
    expect(ui.colors.moduleColors.lorem.ipsum.elit, testColor06);
    expect(ui.colors.moduleColors.lorem.sed, testColor07);
    expect(ui.colors.moduleColors.lorem.do_, testColor09);
    expect(ui.colors.moduleColors.tempor, testColor10);
    expect(ui.colors.moduleColors.ut, testColor12);
  });

  test('Module: colors - primary (light)', () {
    const ui = UI.light;

    expect(ui.colors.primary.lorem.ipsum.sit.amet, testColor22);
    expect(ui.colors.primary.lorem.ipsum.sit.consectetur, testColor23);
    expect(ui.colors.primary.lorem.ipsum.adipiscing, testColor25);
    expect(ui.colors.primary.lorem.ipsum.elit, testColor26);
    expect(ui.colors.primary.lorem.sed, testColor28);
    expect(ui.colors.primary.lorem.do_, testColor29);
    expect(ui.colors.primary.tempor, testColor31);
    expect(ui.colors.primary.ut, testColor32);
  });

  test('Module: colors - primary (dark)', () {
    const ui = UI.dark;

    expect(ui.colors.primary.lorem.ipsum.sit.amet, testColor21);
    expect(ui.colors.primary.lorem.ipsum.sit.consectetur, testColor23);
    expect(ui.colors.primary.lorem.ipsum.adipiscing, testColor24);
    expect(ui.colors.primary.lorem.ipsum.elit, testColor26);
    expect(ui.colors.primary.lorem.sed, testColor27);
    expect(ui.colors.primary.lorem.do_, testColor29);
    expect(ui.colors.primary.tempor, testColor30);
    expect(ui.colors.primary.ut, testColor32);
  });

  test('Module: colors - references (light)', () {
    const ui = UI.light;

    expect(ui.colors.references.lorem.ipsum.sit.amet, testColor42);
    expect(ui.colors.references.lorem.ipsum.sit.consectetur, testColor43);
    expect(ui.colors.references.lorem.ipsum.adipiscing, testColor45);
    expect(ui.colors.references.lorem.ipsum.elit, testColor46);
    expect(ui.colors.references.lorem.sed, testColor48);
    expect(ui.colors.references.lorem.do_, testColor49);
    expect(ui.colors.references.tempor, testColor51);
    expect(ui.colors.references.ut, testColor52);
  });

  test('Module: colors - references (dark)', () {
    const ui = UI.dark;

    expect(ui.colors.references.lorem.ipsum.sit.amet, testColor41);
    expect(ui.colors.references.lorem.ipsum.sit.consectetur, testColor43);
    expect(ui.colors.references.lorem.ipsum.adipiscing, testColor44);
    expect(ui.colors.references.lorem.ipsum.elit, testColor46);
    expect(ui.colors.references.lorem.sed, testColor47);
    expect(ui.colors.references.lorem.do_, testColor49);
    expect(ui.colors.references.tempor, testColor50);
    expect(ui.colors.references.ut, testColor52);
  });
}
