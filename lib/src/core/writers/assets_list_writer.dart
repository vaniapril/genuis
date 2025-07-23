import 'package:genuis/src/core/models/module.dart';

class AssetsListWriter {
  AssetsListWriter();

  void write(StringBuffer buffer, List<Module> modules) {
    buffer.writeln('/*');
    buffer.writeln('  assets:');
    for (final module in modules) {
      for (final asset in module.assetsList) {
        buffer.writeln('    - $asset');
      }
    }
    buffer.writeln('*/');
    buffer.writeln();
  }
}
