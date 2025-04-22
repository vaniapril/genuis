import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart';
import 'package:source_gen/source_gen.dart';
import 'package:genuis/src/core/x_generator.dart';
import 'package:genuis/src/pubspec/pubspec.dart';
import 'package:genuis/src/utils/string_extension.dart';

class XBuilder extends Builder {
  final List<XGenerator> generators;
  final Pubspec config;

  XBuilder(
    this.generators,
    this.config,
  );

  String header(String name) {
    return '''

// **************************************************************************
// Generator: Gens - ${name.upperFirst} generator
// **************************************************************************

''';
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    for (final generator in generators) {
      final buffer = StringBuffer();

      buffer.write(defaultFileHeader + header(generator.name));
      buffer.writeln();
      buffer.write(generator.ignores);
      buffer.writeln();
      buffer.write(generator.imports);
      buffer.writeln();
      buffer.write(generator.generate());

      buildStep.writeAsString(
        _output(
          buildStep,
          join(config.xGens.output, config.xGens.folder, '${generator.name}.ui.dart'),
        ),
        DartFormatter(
          pageWidth: config.xGens.lineLength,
          languageVersion: DartFormatter.latestLanguageVersion,
        ).format(buffer.toString()),
      );
    }
  }

  static AssetId _output(BuildStep buildStep, String path) {
    return AssetId(
      buildStep.inputId.package,
      path,
    );
  }

  @override
  Map<String, List<String>> get buildExtensions {
    final output = config.xGens.output.forwardSlash;
    final subFolder = config.xGens.folder.forwardSlash;
    final file = config.xGens.file;
    return {
      r'$package$': [
        for (final name in [
          '$file.ui.dart',
          for (final generator in generators) join(subFolder, '${generator.name}.ui.dart'),
        ])
          join(output, name),
      ],
    };
  }
}
