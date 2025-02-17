import 'package:x_gens/src/core/data/field.dart';
import 'package:x_gens/src/utils/string_extension.dart';

class GradientField extends Field {
  final String begin;
  final String end;
  // final String stops;
  final List<String> colors;

  GradientField({
    required this.begin,
    required this.end,
    required this.colors,
  });

  @override
  String get code =>
      "const LinearGradient(begin: $begin, end: $end, colors: [${colors.map((e) => 'Color($e),').join()}],)";

  @override
  String get type => 'Gradient';

  static Field? tryParse(String value) {
    final list = value.split(' ');

    return GradientField(
      begin: 'Alignment.topLeft',
      end: 'Alignment.bottomRight',
      colors: list.sublist(2).map((e) => e.hexToBitInt).toList(),
    );
  }
}
