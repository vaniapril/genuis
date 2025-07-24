import 'package:genuis_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Module: gradients (light)', () {
    final ui = UI.light;

    expect(ui.gradients.lorem.ipsum, testGradient02);
    expect(ui.gradients.lorem.sed, testGradient03);
    expect(ui.gradients.tempor, testGradient05);
    expect(ui.gradients.ut, testGradient06);
  });

  test('Module: gradients (dark)', () {
    final ui = UI.dark;

    expect(ui.gradients.lorem.ipsum, testGradient01);
    expect(ui.gradients.lorem.sed, testGradient03);
    expect(ui.gradients.tempor, testGradient04);
    expect(ui.gradients.ut, testGradient06);
  });
}
