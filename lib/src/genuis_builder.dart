import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:genuis/src/config/config.dart';
import 'package:path/path.dart';
import 'package:source_gen/source_gen.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GenuisBuilder extends Builder {
  final Config config;
  final List<FileGenerator> generators;

  GenuisBuilder({
    required this.config,
    required this.generators,
  });

  @override
  Future<void> build(BuildStep buildStep) async {
    for (final generator in generators) {
      final buffer = StringBuffer();

      buffer.writeln(defaultFileHeader);
      buffer.writeln('''
// **************************************************************************
// Generator: GenUIs - ${generator.fileName} generator
// **************************************************************************
''');
      buffer.writeln('// ignore_for_file: unused_import');
      buffer.writeln();
      buffer.write(generator.generate());

      buildStep.writeAsString(
        _output(
          buildStep,
          join(config.outputPath, '${generator.fileName.snakeCase}.ui.dart'),
        ),
        DartFormatter(
          pageWidth: config.dartLineLength,
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
    return {
      r'$package$': [
        for (final name in [
          for (final generator in generators) '${generator.fileName.snakeCase}.ui.dart',
        ])
          join(config.outputPath, name).forwardSlash,
      ],
    };
  }
}
