import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Token: numbers', () {
    expect(Numbers.numbers1, testNumber01);
    expect(Numbers.numbers2, testNumber02);
    expect(Numbers.numbers3, testNumber03);
    expect(Numbers.numbers4, testNumber04);
    expect(Numbers.numbers5, testNumber05);
    expect(Numbers.numbers10, testNumber10);
    expect(Numbers.numbers10_1, testNumber10_1);
    expect(Numbers.numbers10_2, testNumber10_2);
    expect(Numbers.numbers10_3, testNumber10_3);
    expect(Numbers.numbers10_4, testNumber10_4);
    expect(Numbers.numbers10_5, testNumber10_5);
  });
}
