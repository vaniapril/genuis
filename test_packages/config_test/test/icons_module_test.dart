import 'package:config_test/test_ui/uitest.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Module: icons_module_test (light)', () {
    final uiTest = UITest.lightTest;

    final UITestIconsModuleTestPostfixTest iconsModule = uiTest.iconsModuleTest;
    final UITestIconsModuleTestEiusmodPostfixTest iconsModuleEiusmod = iconsModule.eiusmod;

    expect(iconsModule.aliqua, ColorClassNameTest.lightTest(TokenModuleClassNameTest.aliqua));
    expect(iconsModuleEiusmod.dolore, ColorClassNameTest.lightTest(TokenModuleClassNameTest.eiusmodDolore));
    expect(iconsModuleEiusmod.tempor, ColorClassNameTest.lightTest(TokenModuleClassNameTest.eiusmodTemporLightTest));

    expect(iconsModule.aliqua.valueTest, TokenModuleClassNameTest.aliqua);
    expect(iconsModuleEiusmod.dolore.valueTest, TokenModuleClassNameTest.eiusmodDolore);
    expect(iconsModuleEiusmod.tempor.valueTest, TokenModuleClassNameTest.eiusmodTemporLightTest);

    const testAliqua = RecordClassNameTest(TokenModuleClassNameTest.aliqua, testColor02);
    const testDolore = RecordClassNameTest(TokenModuleClassNameTest.eiusmodDolore, testColor02);
    const testTempor = RecordClassNameTest(TokenModuleClassNameTest.eiusmodTemporLightTest, testColor02);

    expect(iconsModule.aliqua.voluptate.color, testAliqua.color);
    expect(iconsModuleEiusmod.dolore.voluptate.color, testDolore.color);
    expect(iconsModuleEiusmod.tempor.voluptate.color, testTempor.color);

    expect(iconsModule.aliqua.voluptate.valueTest, testAliqua.valueTest);
    expect(iconsModuleEiusmod.dolore.voluptate.valueTest, testDolore.valueTest);
    expect(iconsModuleEiusmod.tempor.voluptate.valueTest, testTempor.valueTest);
  });

  test('Module: icons_module_test (dark)', () {
    final uiTest = UITest.darkTest;

    final UITestIconsModuleTestPostfixTest iconsModule = uiTest.iconsModuleTest;
    final UITestIconsModuleTestEiusmodPostfixTest iconsModuleEiusmod = iconsModule.eiusmod;

    expect(iconsModule.aliqua, ColorClassNameTest.darkTest(TokenModuleClassNameTest.aliqua));
    expect(iconsModuleEiusmod.dolore, ColorClassNameTest.darkTest(TokenModuleClassNameTest.eiusmodDolore));
    expect(iconsModuleEiusmod.tempor, ColorClassNameTest.darkTest(TokenModuleClassNameTest.eiusmodTemporDarkTest));

    expect(iconsModule.aliqua.valueTest, TokenModuleClassNameTest.aliqua);
    expect(iconsModuleEiusmod.dolore.valueTest, TokenModuleClassNameTest.eiusmodDolore);
    expect(iconsModuleEiusmod.tempor.valueTest, TokenModuleClassNameTest.eiusmodTemporDarkTest);

    const testAliqua = RecordClassNameTest(TokenModuleClassNameTest.aliqua, testColor01);
    const testDolore = RecordClassNameTest(TokenModuleClassNameTest.eiusmodDolore, testColor01);
    const testTempor = RecordClassNameTest(TokenModuleClassNameTest.eiusmodTemporDarkTest, testColor01);

    expect(iconsModule.aliqua.voluptate.color, testAliqua.color);
    expect(iconsModuleEiusmod.dolore.voluptate.color, testDolore.color);
    expect(iconsModuleEiusmod.tempor.voluptate.color, testTempor.color);

    expect(iconsModule.aliqua.voluptate.valueTest, testAliqua.valueTest);
    expect(iconsModuleEiusmod.dolore.voluptate.valueTest, testDolore.valueTest);
    expect(iconsModuleEiusmod.tempor.voluptate.valueTest, testTempor.valueTest);
  });

  test('Token: icons_module_test', () {
    expect(TokenModuleClassNameTest.aliqua.valueTest, testIcons01);
    expect(TokenModuleClassNameTest.eiusmodDolore.valueTest, testIcons02);
    expect(TokenModuleClassNameTest.eiusmodTemporDarkTest.valueTest, testIcons03);
    expect(TokenModuleClassNameTest.eiusmodTemporLightTest.valueTest, testIcons04);
  });
}
