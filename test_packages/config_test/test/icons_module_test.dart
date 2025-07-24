import 'package:config_test/test_ui/uitest.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Module: icons_module_test (light)', () {
    final uiTest = UITest.lightTest;

    expect(uiTest.iconsModuleTest.aliqua, ColorClassNameTest.lightTest(TokenModuleClassNameTest.aliqua));
    expect(uiTest.iconsModuleTest.eiusmod.dolore, ColorClassNameTest.lightTest(TokenModuleClassNameTest.eiusmodDolore));
    expect(uiTest.iconsModuleTest.eiusmod.tempor, ColorClassNameTest.lightTest(TokenModuleClassNameTest.eiusmodTemporLightTest));

    expect(uiTest.iconsModuleTest.aliqua.valueTest, TokenModuleClassNameTest.aliqua);
    expect(uiTest.iconsModuleTest.eiusmod.dolore.valueTest, TokenModuleClassNameTest.eiusmodDolore);
    expect(uiTest.iconsModuleTest.eiusmod.tempor.valueTest, TokenModuleClassNameTest.eiusmodTemporLightTest);

    const testAliqua = RecordClassNameTest(TokenModuleClassNameTest.aliqua, testColor02);
    const testDolore = RecordClassNameTest(TokenModuleClassNameTest.eiusmodDolore, testColor02);
    const testTempor = RecordClassNameTest(TokenModuleClassNameTest.eiusmodTemporLightTest, testColor02);

    expect(uiTest.iconsModuleTest.aliqua.voluptate.color, testAliqua.color);
    expect(uiTest.iconsModuleTest.eiusmod.dolore.voluptate.color, testDolore.color);
    expect(uiTest.iconsModuleTest.eiusmod.tempor.voluptate.color, testTempor.color);

    expect(uiTest.iconsModuleTest.aliqua.voluptate.valueTest, testAliqua.valueTest);
    expect(uiTest.iconsModuleTest.eiusmod.dolore.voluptate.valueTest, testDolore.valueTest);
    expect(uiTest.iconsModuleTest.eiusmod.tempor.voluptate.valueTest, testTempor.valueTest);
  });

  test('Module: icons_module_test (dark)', () {
    final uiTest = UITest.darkTest;

    expect(uiTest.iconsModuleTest.aliqua, ColorClassNameTest.darkTest(TokenModuleClassNameTest.aliqua));
    expect(uiTest.iconsModuleTest.eiusmod.dolore, ColorClassNameTest.darkTest(TokenModuleClassNameTest.eiusmodDolore));
    expect(uiTest.iconsModuleTest.eiusmod.tempor, ColorClassNameTest.darkTest(TokenModuleClassNameTest.eiusmodTemporDarkTest));

    expect(uiTest.iconsModuleTest.aliqua.valueTest, TokenModuleClassNameTest.aliqua);
    expect(uiTest.iconsModuleTest.eiusmod.dolore.valueTest, TokenModuleClassNameTest.eiusmodDolore);
    expect(uiTest.iconsModuleTest.eiusmod.tempor.valueTest, TokenModuleClassNameTest.eiusmodTemporDarkTest);

    const testAliqua = RecordClassNameTest(TokenModuleClassNameTest.aliqua, testColor01);
    const testDolore = RecordClassNameTest(TokenModuleClassNameTest.eiusmodDolore, testColor01);
    const testTempor = RecordClassNameTest(TokenModuleClassNameTest.eiusmodTemporDarkTest, testColor01);

    expect(uiTest.iconsModuleTest.aliqua.voluptate.color, testAliqua.color);
    expect(uiTest.iconsModuleTest.eiusmod.dolore.voluptate.color, testDolore.color);
    expect(uiTest.iconsModuleTest.eiusmod.tempor.voluptate.color, testTempor.color);

    expect(uiTest.iconsModuleTest.aliqua.voluptate.valueTest, testAliqua.valueTest);
    expect(uiTest.iconsModuleTest.eiusmod.dolore.voluptate.valueTest, testDolore.valueTest);
    expect(uiTest.iconsModuleTest.eiusmod.tempor.voluptate.valueTest, testTempor.valueTest);
  });

  test('Token: icons_module_test', () {
    expect(TokenModuleClassNameTest.aliqua.valueTest, testIcons01);
    expect(TokenModuleClassNameTest.eiusmodDolore.valueTest, testIcons02);
    expect(TokenModuleClassNameTest.eiusmodTemporDarkTest.valueTest, testIcons03);
    expect(TokenModuleClassNameTest.eiusmodTemporLightTest.valueTest, testIcons04);
  });
}
