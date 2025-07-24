import 'package:config_test/test_ui/uitest.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Token: sit_amet_consectetur', () {
    expect(TokenClassNameTest.nisi.valueTest, testColor01);
    expect(TokenClassNameTest.ut.valueTest, testColor02);
    expect(TokenClassNameTest.aliquip.valueTest, testColor03);
  });
}
