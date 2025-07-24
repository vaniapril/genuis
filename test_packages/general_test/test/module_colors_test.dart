import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
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

  test('Module: colors_xml - keywords (light)', () {
    final ui = UI.light;

    expect(ui.colorsXml.keywords.abstract, testColor01);
    expect(ui.colorsXml.keywords.as, testColor02);
    expect(ui.colorsXml.keywords.assert_, testColor03);
    expect(ui.colorsXml.keywords.async, testColor04);
    expect(ui.colorsXml.keywords.await_, testColor05);
    expect(ui.colorsXml.keywords.base, testColor06);
    expect(ui.colorsXml.keywords.break_, testColor07);
    expect(ui.colorsXml.keywords.case_, testColor08);
    expect(ui.colorsXml.keywords.catch_, testColor09);
    expect(ui.colorsXml.keywords.class_, testColor10);
    expect(ui.colorsXml.keywords.const_, testColor11);
    expect(ui.colorsXml.keywords.continue_, testColor12);
    expect(ui.colorsXml.keywords.covariant, testColor13);
    expect(ui.colorsXml.keywords.default_, testColor14);
    expect(ui.colorsXml.keywords.deferred, testColor15);
    expect(ui.colorsXml.keywords.do_, testColor16);
    expect(ui.colorsXml.keywords.dynamic, testColor17);
    expect(ui.colorsXml.keywords.else_, testColor18);
    expect(ui.colorsXml.keywords.enum_, testColor19);
    expect(ui.colorsXml.keywords.export, testColor20);
    expect(ui.colorsXml.keywords.extends_, testColor21);
    expect(ui.colorsXml.keywords.extension, testColor22);
    expect(ui.colorsXml.keywords.external, testColor23);
    expect(ui.colorsXml.keywords.factory, testColor24);
    expect(ui.colorsXml.keywords.false_, testColor25);
    expect(ui.colorsXml.keywords.final_, testColor26);
    expect(ui.colorsXml.keywords.finally_, testColor27);
    expect(ui.colorsXml.keywords.for_, testColor28);
    expect(ui.colorsXml.keywords.function, testColor29);
    expect(ui.colorsXml.keywords.get, testColor30);
    expect(ui.colorsXml.keywords.hide, testColor31);
    expect(ui.colorsXml.keywords.if_, testColor32);
    expect(ui.colorsXml.keywords.implements, testColor33);
    expect(ui.colorsXml.keywords.import, testColor34);
    expect(ui.colorsXml.keywords.in_, testColor35);
    expect(ui.colorsXml.keywords.interface, testColor36);
    expect(ui.colorsXml.keywords.is_, testColor37);
    expect(ui.colorsXml.keywords.late, testColor38);
    expect(ui.colorsXml.keywords.library, testColor39);
    expect(ui.colorsXml.keywords.mixin, testColor40);
    expect(ui.colorsXml.keywords.new_, testColor41);
    expect(ui.colorsXml.keywords.null_, testColor42);
    expect(ui.colorsXml.keywords.of, testColor43);
    expect(ui.colorsXml.keywords.on, testColor44);
    expect(ui.colorsXml.keywords.operator, testColor45);
    expect(ui.colorsXml.keywords.part, testColor46);
    expect(ui.colorsXml.keywords.required, testColor47);
    expect(ui.colorsXml.keywords.rethrow_, testColor48);
    expect(ui.colorsXml.keywords.return_, testColor49);
    expect(ui.colorsXml.keywords.sealed, testColor50);
    expect(ui.colorsXml.keywords.set, testColor51);
    expect(ui.colorsXml.keywords.show, testColor52);
    expect(ui.colorsXml.keywords.static, testColor53);
    expect(ui.colorsXml.keywords.super_, testColor54);
    expect(ui.colorsXml.keywords.switch_, testColor55);
    expect(ui.colorsXml.keywords.sync, testColor56);
    expect(ui.colorsXml.keywords.this_, testColor57);
    expect(ui.colorsXml.keywords.throw_, testColor58);
    expect(ui.colorsXml.keywords.true_, testColor59);
    expect(ui.colorsXml.keywords.try_, testColor60);
    expect(ui.colorsXml.keywords.type, testColor61);
    expect(ui.colorsXml.keywords.typedef, testColor62);
    expect(ui.colorsXml.keywords.var_, testColor63);
    expect(ui.colorsXml.keywords.void_, testColor64);
    expect(ui.colorsXml.keywords.when, testColor65);
    expect(ui.colorsXml.keywords.with_, testColor66);
    expect(ui.colorsXml.keywords.while_, testColor67);
    expect(ui.colorsXml.keywords.yield_, testColor68);
  });

  test('Module: colors_xml - keywords (dark)', () {
    final ui = UI.dark;

    expect(ui.colorsXml.keywords.abstract, testColor01);
    expect(ui.colorsXml.keywords.as, testColor02);
    expect(ui.colorsXml.keywords.assert_, testColor03);
    expect(ui.colorsXml.keywords.async, testColor04);
    expect(ui.colorsXml.keywords.await_, testColor05);
    expect(ui.colorsXml.keywords.base, testColor06);
    expect(ui.colorsXml.keywords.break_, testColor07);
    expect(ui.colorsXml.keywords.case_, testColor08);
    expect(ui.colorsXml.keywords.catch_, testColor09);
    expect(ui.colorsXml.keywords.class_, testColor10);
    expect(ui.colorsXml.keywords.const_, testColor11);
    expect(ui.colorsXml.keywords.continue_, testColor12);
    expect(ui.colorsXml.keywords.covariant, testColor13);
    expect(ui.colorsXml.keywords.default_, testColor14);
    expect(ui.colorsXml.keywords.deferred, testColor15);
    expect(ui.colorsXml.keywords.do_, testColor16);
    expect(ui.colorsXml.keywords.dynamic, testColor17);
    expect(ui.colorsXml.keywords.else_, testColor18);
    expect(ui.colorsXml.keywords.enum_, testColor19);
    expect(ui.colorsXml.keywords.export, testColor20);
    expect(ui.colorsXml.keywords.extends_, testColor21);
    expect(ui.colorsXml.keywords.extension, testColor22);
    expect(ui.colorsXml.keywords.external, testColor23);
    expect(ui.colorsXml.keywords.factory, testColor24);
    expect(ui.colorsXml.keywords.false_, testColor25);
    expect(ui.colorsXml.keywords.final_, testColor26);
    expect(ui.colorsXml.keywords.finally_, testColor27);
    expect(ui.colorsXml.keywords.for_, testColor28);
    expect(ui.colorsXml.keywords.function, testColor29);
    expect(ui.colorsXml.keywords.get, testColor30);
    expect(ui.colorsXml.keywords.hide, testColor31);
    expect(ui.colorsXml.keywords.if_, testColor32);
    expect(ui.colorsXml.keywords.implements, testColor33);
    expect(ui.colorsXml.keywords.import, testColor34);
    expect(ui.colorsXml.keywords.in_, testColor35);
    expect(ui.colorsXml.keywords.interface, testColor36);
    expect(ui.colorsXml.keywords.is_, testColor37);
    expect(ui.colorsXml.keywords.late, testColor38);
    expect(ui.colorsXml.keywords.library, testColor39);
    expect(ui.colorsXml.keywords.mixin, testColor40);
    expect(ui.colorsXml.keywords.new_, testColor41);
    expect(ui.colorsXml.keywords.null_, testColor42);
    expect(ui.colorsXml.keywords.of, testColor43);
    expect(ui.colorsXml.keywords.on, testColor44);
    expect(ui.colorsXml.keywords.operator, testColor45);
    expect(ui.colorsXml.keywords.part, testColor46);
    expect(ui.colorsXml.keywords.required, testColor47);
    expect(ui.colorsXml.keywords.rethrow_, testColor48);
    expect(ui.colorsXml.keywords.return_, testColor49);
    expect(ui.colorsXml.keywords.sealed, testColor50);
    expect(ui.colorsXml.keywords.set, testColor51);
    expect(ui.colorsXml.keywords.show, testColor52);
    expect(ui.colorsXml.keywords.static, testColor53);
    expect(ui.colorsXml.keywords.super_, testColor54);
    expect(ui.colorsXml.keywords.switch_, testColor55);
    expect(ui.colorsXml.keywords.sync, testColor56);
    expect(ui.colorsXml.keywords.this_, testColor57);
    expect(ui.colorsXml.keywords.throw_, testColor58);
    expect(ui.colorsXml.keywords.true_, testColor59);
    expect(ui.colorsXml.keywords.try_, testColor60);
    expect(ui.colorsXml.keywords.type, testColor61);
    expect(ui.colorsXml.keywords.typedef, testColor62);
    expect(ui.colorsXml.keywords.var_, testColor63);
    expect(ui.colorsXml.keywords.void_, testColor64);
    expect(ui.colorsXml.keywords.when, testColor65);
    expect(ui.colorsXml.keywords.with_, testColor66);
    expect(ui.colorsXml.keywords.while_, testColor67);
    expect(ui.colorsXml.keywords.yield_, testColor68);
  });

  test('Module: colors_xml - moduleColors (light)', () {
    final ui = UI.light;

    expect(ui.colorsXml.moduleColors.lorem.ipsum.sit.amet, testColor02);
    expect(ui.colorsXml.moduleColors.lorem.ipsum.sit.consectetur, testColor03);
    expect(ui.colorsXml.moduleColors.lorem.ipsum.adipiscing, testColor05);
    expect(ui.colorsXml.moduleColors.lorem.ipsum.elit, testColor06);
    expect(ui.colorsXml.moduleColors.lorem.sed, testColor08);
    expect(ui.colorsXml.moduleColors.lorem.do_, testColor09);
    expect(ui.colorsXml.moduleColors.tempor, testColor11);
    expect(ui.colorsXml.moduleColors.ut, testColor12);
  });

  test('Module: colors_xml - moduleColors (dark)', () {
    final ui = UI.dark;

    expect(ui.colorsXml.moduleColors.lorem.ipsum.sit.amet, testColor01);
    expect(ui.colorsXml.moduleColors.lorem.ipsum.sit.consectetur, testColor03);
    expect(ui.colorsXml.moduleColors.lorem.ipsum.adipiscing, testColor04);
    expect(ui.colorsXml.moduleColors.lorem.ipsum.elit, testColor06);
    expect(ui.colorsXml.moduleColors.lorem.sed, testColor07);
    expect(ui.colorsXml.moduleColors.lorem.do_, testColor09);
    expect(ui.colorsXml.moduleColors.tempor, testColor10);
    expect(ui.colorsXml.moduleColors.ut, testColor12);
  });

  test('Module: colors_xml - primary (light)', () {
    final ui = UI.light;

    expect(ui.colorsXml.primary.lorem.ipsum.sit.amet, testColor22);
    expect(ui.colorsXml.primary.lorem.ipsum.sit.consectetur, testColor23);
    expect(ui.colorsXml.primary.lorem.ipsum.adipiscing, testColor25);
    expect(ui.colorsXml.primary.lorem.ipsum.elit, testColor26);
    expect(ui.colorsXml.primary.lorem.sed, testColor28);
    expect(ui.colorsXml.primary.lorem.do_, testColor29);
    expect(ui.colorsXml.primary.tempor, testColor31);
    expect(ui.colorsXml.primary.ut, testColor32);
  });

  test('Module: colors_xml - primary (dark)', () {
    final ui = UI.dark;

    expect(ui.colorsXml.primary.lorem.ipsum.sit.amet, testColor21);
    expect(ui.colorsXml.primary.lorem.ipsum.sit.consectetur, testColor23);
    expect(ui.colorsXml.primary.lorem.ipsum.adipiscing, testColor24);
    expect(ui.colorsXml.primary.lorem.ipsum.elit, testColor26);
    expect(ui.colorsXml.primary.lorem.sed, testColor27);
    expect(ui.colorsXml.primary.lorem.do_, testColor29);
    expect(ui.colorsXml.primary.tempor, testColor30);
    expect(ui.colorsXml.primary.ut, testColor32);
  });

  test('Module: colors_xml - references (light)', () {
    final ui = UI.light;

    expect(ui.colorsXml.references.lorem.ipsum.sit.amet, testColor42);
    expect(ui.colorsXml.references.lorem.ipsum.sit.consectetur, testColor43);
    expect(ui.colorsXml.references.lorem.ipsum.adipiscing, testColor45);
    expect(ui.colorsXml.references.lorem.ipsum.elit, testColor46);
    expect(ui.colorsXml.references.lorem.sed, testColor48);
    expect(ui.colorsXml.references.lorem.do_, testColor49);
    expect(ui.colorsXml.references.tempor, testColor51);
    expect(ui.colorsXml.references.ut, testColor52);
  });

  test('Module: colors_xml - references (dark)', () {
    final ui = UI.dark;

    expect(ui.colorsXml.references.lorem.ipsum.sit.amet, testColor41);
    expect(ui.colorsXml.references.lorem.ipsum.sit.consectetur, testColor43);
    expect(ui.colorsXml.references.lorem.ipsum.adipiscing, testColor44);
    expect(ui.colorsXml.references.lorem.ipsum.elit, testColor46);
    expect(ui.colorsXml.references.lorem.sed, testColor47);
    expect(ui.colorsXml.references.lorem.do_, testColor49);
    expect(ui.colorsXml.references.tempor, testColor50);
    expect(ui.colorsXml.references.ut, testColor52);
  });
}
