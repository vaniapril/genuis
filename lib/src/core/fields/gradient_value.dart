import 'package:genuis/src/core/data/value.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GradientValue extends Value {
  final String begin;
  final String end;
  // final String stops;
  final List<String> colors;

  GradientValue({
    required this.begin,
    required this.end,
    required this.colors,
  });

  @override
  String get code =>
      "const LinearGradient(begin: $begin, end: $end, colors: [${colors.map((e) => 'Color($e),').join()}],)";

  @override
  String get type => 'Gradient';

  static Value? tryParse(String value) {
    final list = value.split(' ');

    return GradientValue(
      begin: 'Alignment.topLeft',
      end: 'Alignment.bottomRight',
      colors: list.sublist(2).map((e) => e.hexToBitInt).toList(),
    );
  }
}
