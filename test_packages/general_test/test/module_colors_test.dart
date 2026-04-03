import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testColors();
  testColorsFile();
}

void testColors() {
  test('Module: colors - keywords (light)', () {
    final ui = UI.light;

    expect(ui.colors.keywords.abstract, testColor01);
    expect(ui.colors.keywords.as, testColor02);
    expect(ui.colors.keywords.assert_, testColor03);
    expect(ui.colors.keywords.async, testColor04);
    expect(ui.colors.keywords.await_, testColor05);
    expect(ui.colors.keywords.base, testColor06);
    expect(ui.colors.keywords.break_, testColor07);
    expect(ui.colors.keywords.case_, testColor08);
    expect(ui.colors.keywords.catch_, testColor09);
    expect(ui.colors.keywords.class_, testColor10);
    expect(ui.colors.keywords.const_, testColor11);
    expect(ui.colors.keywords.continue_, testColor12);
    expect(ui.colors.keywords.covariant, testColor13);
    expect(ui.colors.keywords.default_, testColor14);
    expect(ui.colors.keywords.deferred, testColor15);
    expect(ui.colors.keywords.do_, testColor16);
    expect(ui.colors.keywords.dynamic, testColor17);
    expect(ui.colors.keywords.else_, testColor18);
    expect(ui.colors.keywords.enum_, testColor19);
    expect(ui.colors.keywords.export, testColor20);
    expect(ui.colors.keywords.extends_, testColor21);
    expect(ui.colors.keywords.extension, testColor22);
    expect(ui.colors.keywords.external, testColor23);
    expect(ui.colors.keywords.factory, testColor24);
    expect(ui.colors.keywords.false_, testColor25);
    expect(ui.colors.keywords.final_, testColor26);
    expect(ui.colors.keywords.finally_, testColor27);
    expect(ui.colors.keywords.for_, testColor28);
    expect(ui.colors.keywords.function, testColor29);
    expect(ui.colors.keywords.get, testColor30);
    expect(ui.colors.keywords.hide, testColor31);
    expect(ui.colors.keywords.if_, testColor32);
    expect(ui.colors.keywords.implements, testColor33);
    expect(ui.colors.keywords.import, testColor34);
    expect(ui.colors.keywords.in_, testColor35);
    expect(ui.colors.keywords.interface, testColor36);
    expect(ui.colors.keywords.is_, testColor37);
    expect(ui.colors.keywords.late, testColor38);
    expect(ui.colors.keywords.library, testColor39);
    expect(ui.colors.keywords.mixin, testColor40);
    expect(ui.colors.keywords.new_, testColor41);
    expect(ui.colors.keywords.null_, testColor42);
    expect(ui.colors.keywords.of, testColor43);
    expect(ui.colors.keywords.on, testColor44);
    expect(ui.colors.keywords.operator, testColor45);
    expect(ui.colors.keywords.part, testColor46);
    expect(ui.colors.keywords.required, testColor47);
    expect(ui.colors.keywords.rethrow_, testColor48);
    expect(ui.colors.keywords.return_, testColor49);
    expect(ui.colors.keywords.sealed, testColor50);
    expect(ui.colors.keywords.set, testColor51);
    expect(ui.colors.keywords.show, testColor52);
    expect(ui.colors.keywords.static, testColor53);
    expect(ui.colors.keywords.super_, testColor54);
    expect(ui.colors.keywords.switch_, testColor55);
    expect(ui.colors.keywords.sync, testColor56);
    expect(ui.colors.keywords.this_, testColor57);
    expect(ui.colors.keywords.throw_, testColor58);
    expect(ui.colors.keywords.true_, testColor59);
    expect(ui.colors.keywords.try_, testColor60);
    expect(ui.colors.keywords.type, testColor61);
    expect(ui.colors.keywords.typedef, testColor62);
    expect(ui.colors.keywords.var_, testColor63);
    expect(ui.colors.keywords.void_, testColor64);
    expect(ui.colors.keywords.when, testColor65);
    expect(ui.colors.keywords.with_, testColor66);
    expect(ui.colors.keywords.while_, testColor67);
    expect(ui.colors.keywords.yield_, testColor68);
  });

  test('Module: colors - keywords (dark)', () {
    final ui = UI.dark;

    expect(ui.colors.keywords.abstract, testColor01);
    expect(ui.colors.keywords.as, testColor02);
    expect(ui.colors.keywords.assert_, testColor03);
    expect(ui.colors.keywords.async, testColor04);
    expect(ui.colors.keywords.await_, testColor05);
    expect(ui.colors.keywords.base, testColor06);
    expect(ui.colors.keywords.break_, testColor07);
    expect(ui.colors.keywords.case_, testColor08);
    expect(ui.colors.keywords.catch_, testColor09);
    expect(ui.colors.keywords.class_, testColor10);
    expect(ui.colors.keywords.const_, testColor11);
    expect(ui.colors.keywords.continue_, testColor12);
    expect(ui.colors.keywords.covariant, testColor13);
    expect(ui.colors.keywords.default_, testColor14);
    expect(ui.colors.keywords.deferred, testColor15);
    expect(ui.colors.keywords.do_, testColor16);
    expect(ui.colors.keywords.dynamic, testColor17);
    expect(ui.colors.keywords.else_, testColor18);
    expect(ui.colors.keywords.enum_, testColor19);
    expect(ui.colors.keywords.export, testColor20);
    expect(ui.colors.keywords.extends_, testColor21);
    expect(ui.colors.keywords.extension, testColor22);
    expect(ui.colors.keywords.external, testColor23);
    expect(ui.colors.keywords.factory, testColor24);
    expect(ui.colors.keywords.false_, testColor25);
    expect(ui.colors.keywords.final_, testColor26);
    expect(ui.colors.keywords.finally_, testColor27);
    expect(ui.colors.keywords.for_, testColor28);
    expect(ui.colors.keywords.function, testColor29);
    expect(ui.colors.keywords.get, testColor30);
    expect(ui.colors.keywords.hide, testColor31);
    expect(ui.colors.keywords.if_, testColor32);
    expect(ui.colors.keywords.implements, testColor33);
    expect(ui.colors.keywords.import, testColor34);
    expect(ui.colors.keywords.in_, testColor35);
    expect(ui.colors.keywords.interface, testColor36);
    expect(ui.colors.keywords.is_, testColor37);
    expect(ui.colors.keywords.late, testColor38);
    expect(ui.colors.keywords.library, testColor39);
    expect(ui.colors.keywords.mixin, testColor40);
    expect(ui.colors.keywords.new_, testColor41);
    expect(ui.colors.keywords.null_, testColor42);
    expect(ui.colors.keywords.of, testColor43);
    expect(ui.colors.keywords.on, testColor44);
    expect(ui.colors.keywords.operator, testColor45);
    expect(ui.colors.keywords.part, testColor46);
    expect(ui.colors.keywords.required, testColor47);
    expect(ui.colors.keywords.rethrow_, testColor48);
    expect(ui.colors.keywords.return_, testColor49);
    expect(ui.colors.keywords.sealed, testColor50);
    expect(ui.colors.keywords.set, testColor51);
    expect(ui.colors.keywords.show, testColor52);
    expect(ui.colors.keywords.static, testColor53);
    expect(ui.colors.keywords.super_, testColor54);
    expect(ui.colors.keywords.switch_, testColor55);
    expect(ui.colors.keywords.sync, testColor56);
    expect(ui.colors.keywords.this_, testColor57);
    expect(ui.colors.keywords.throw_, testColor58);
    expect(ui.colors.keywords.true_, testColor59);
    expect(ui.colors.keywords.try_, testColor60);
    expect(ui.colors.keywords.type, testColor61);
    expect(ui.colors.keywords.typedef, testColor62);
    expect(ui.colors.keywords.var_, testColor63);
    expect(ui.colors.keywords.void_, testColor64);
    expect(ui.colors.keywords.when, testColor65);
    expect(ui.colors.keywords.with_, testColor66);
    expect(ui.colors.keywords.while_, testColor67);
    expect(ui.colors.keywords.yield_, testColor68);
  });

  test('Module: colors - moduleColors (light)', () {
    final ui = UI.light;

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
    final ui = UI.dark;

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
    final ui = UI.light;

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
    final ui = UI.dark;

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
    final ui = UI.light;

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
    final ui = UI.dark;

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

void testColorsFile() {
  test('Module: colors_file (light)', () {
    final ui = UI.light;

    expect(ui.colorsFile.lorem.ipsum.sit.amet, testColor22);
    expect(ui.colorsFile.lorem.ipsum.sit.consectetur, testColor23);
    expect(ui.colorsFile.lorem.ipsum.adipiscing, testColor25);
    expect(ui.colorsFile.lorem.ipsum.elit, testColor26);
    expect(ui.colorsFile.lorem.sed, testColor28);
    expect(ui.colorsFile.lorem.do_, testColor29);
    expect(ui.colorsFile.tempor, testColor31);
    expect(ui.colorsFile.ut, testColor32);
  });

  test('Module: colors_file (dark)', () {
    final ui = UI.dark;

    expect(ui.colorsFile.lorem.ipsum.sit.amet, testColor21);
    expect(ui.colorsFile.lorem.ipsum.sit.consectetur, testColor23);
    expect(ui.colorsFile.lorem.ipsum.adipiscing, testColor24);
    expect(ui.colorsFile.lorem.ipsum.elit, testColor26);
    expect(ui.colorsFile.lorem.sed, testColor27);
    expect(ui.colorsFile.lorem.do_, testColor29);
    expect(ui.colorsFile.tempor, testColor30);
    expect(ui.colorsFile.ut, testColor32);
  });
}
