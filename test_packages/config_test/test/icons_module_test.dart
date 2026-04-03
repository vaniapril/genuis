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

    expect(iconsModule.aliqua.voluptate, (TokenModuleClassNameTest.aliqua, testColor02));
    expect(iconsModuleEiusmod.dolore.voluptate, (TokenModuleClassNameTest.eiusmodDolore, testColor02));
    expect(iconsModuleEiusmod.tempor.voluptate, (TokenModuleClassNameTest.eiusmodTemporLightTest, testColor02));
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

    expect(iconsModule.aliqua.voluptate, (TokenModuleClassNameTest.aliqua, testColor01));
    expect(iconsModuleEiusmod.dolore.voluptate, (TokenModuleClassNameTest.eiusmodDolore, testColor01));
    expect(iconsModuleEiusmod.tempor.voluptate, (TokenModuleClassNameTest.eiusmodTemporDarkTest, testColor01));
  });

  test('Token: icons_module_test', () {
    expect(TokenModuleClassNameTest.aliqua.valueTest, testIcons01);
    expect(TokenModuleClassNameTest.eiusmodDolore.valueTest, testIcons02);
    expect(TokenModuleClassNameTest.eiusmodTemporDarkTest.valueTest, testIcons03);
    expect(TokenModuleClassNameTest.eiusmodTemporLightTest.valueTest, testIcons04);
  });
}
