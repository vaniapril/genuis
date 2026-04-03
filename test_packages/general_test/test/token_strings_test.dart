import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  test('Token: strings', () {
    expect(Strings.lorem, testString01);
    expect(Strings.ipsumDolor, testString02);
    expect(Strings.sitAmet, testString03);
    expect(Strings.consecteturAdipiscingElit, testString04);
    expect(Strings.sedDoEiusmodTemporIncididunt, testString05);
    expect(Strings.utLaboreEtDolore, testString06);
    expect(Strings.magnaAliqua, testString07);
    expect(Strings.utEnimAdMinimVeniam, testString08);
    expect(Strings.quisNostrudExercitationUllamco, testString09);
  });
}
