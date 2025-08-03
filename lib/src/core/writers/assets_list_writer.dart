import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/models/token.dart';

class AssetsListWriter {
  AssetsListWriter();

  void write(StringBuffer buffer, List<Module> modules, List<Token> tokens) {
    final assets = {
      ...tokens.expand((e) => e.assetsList),
      ...modules.expand((e) => e.assetsList),
    }.toList()..sort();

    if (assets.isNotEmpty) {
      buffer.writeln('/*');
      buffer.writeln('  assets:');
      for (final asset in assets) {
        buffer.writeln('    - $asset');
      }
      buffer.writeln('*/');
      buffer.writeln();
    }
  }
}
