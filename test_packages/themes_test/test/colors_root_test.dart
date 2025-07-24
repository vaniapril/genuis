import 'package:test/test.dart';
import 'package:themes_test/ui/ui.ui.dart';

import 'values.dart';

void main() {
  test('Module: colors_root (theme_dolor)', () {
    final ui = UI.themeDolor;

    expect(ui.colorsRoot.lorem, testColor01);
  });

  test('Module: colors_root (theme_ipsum)', () {
    final ui = UI.themeIpsum;

    expect(ui.colorsRoot.lorem, testColor02);
  });

  test('Module: colors_root (theme_lorem)', () {
    final ui = UI.themeLorem;

    expect(ui.colorsRoot.lorem, testColor03);
  });

  test('Module: colors_root (theme_sit)', () {
    final ui = UI.themeSit;

    expect(ui.colorsRoot.lorem, testColor04);
  });
}
