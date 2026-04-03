import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Module: blurs (light)', () {
    final ui = UI.light;

    expect(ui.blurs.blur1, testBlur1);
    expect(ui.blurs.blur2, testBlur2);
    expect(ui.blurs.blur3, testBlur3);
    expect(ui.blurs.blur4, testBlur4);
    expect(ui.blurs.blur5, testBlur5);
    expect(ui.blurs.blur6, testBlur1);
    expect(ui.blurs.blur7, testBlur2);
    expect(ui.blurs.blur8, testBlur3);
    expect(ui.blurs.blur9, testBlur4);
    expect(ui.blurs.blur10, testBlur5);
  });

  test('Module: blurs (dark)', () {
    final ui = UI.dark;

    expect(ui.blurs.blur1, testBlur1);
    expect(ui.blurs.blur2, testBlur2);
    expect(ui.blurs.blur3, testBlur3);
    expect(ui.blurs.blur4, testBlur4);
    expect(ui.blurs.blur5, testBlur5);
    expect(ui.blurs.blur6, testBlur1);
    expect(ui.blurs.blur7, testBlur2);
    expect(ui.blurs.blur8, testBlur3);
    expect(ui.blurs.blur9, testBlur4);
    expect(ui.blurs.blur10, testBlur5);
  });
}
