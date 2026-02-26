abstract class Code {
  const Code();

  void encode(StringBuffer buffer);
}

class _CustomCode extends Code {
  final List<String> lines;

  _CustomCode(this.lines);

  @override
  void encode(StringBuffer buffer) {
    buffer.writeAll(lines, '\n');
  }
}

extension StringCodeExt on String {
  Code get code => _CustomCode([this]);
}

extension ListCodeExt on List<String> {
  Code get code => _CustomCode(this);
}
