import 'package:config_test/test_ui/uitest.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Module: color_module_test (light)', () {
    final uiTest = UITest.lightTest;

    final UITestColorModuleTestPostfixTest colorModule = uiTest.colorModuleTest;

    expect(colorModule.voluptate, testColor02);
    expect(colorModule.velit, testColor04);
    expect(colorModule.esse, testColor06);
  });

  test('Module: color_module_test (dark)', () {
    final uiTest = UITest.darkTest;

    final UITestColorModuleTestPostfixTest colorModule = uiTest.colorModuleTest;

    expect(colorModule.voluptate, testColor01);
    expect(colorModule.velit, testColor03);
    expect(colorModule.esse, testColor05);
  });

  test('Token: color_module_test', () {
    expect(ColorModuleTokenTest.voluptateDarkTest, testColor01);
    expect(ColorModuleTokenTest.voluptateLightTest, testColor02);
    expect(ColorModuleTokenTest.velitDarkTest, testColor03);
    expect(ColorModuleTokenTest.velitLightTest, testColor04);
    expect(ColorModuleTokenTest.esseDarkTest, testColor05);
    expect(ColorModuleTokenTest.esseLightTest, testColor06);
  });
}
