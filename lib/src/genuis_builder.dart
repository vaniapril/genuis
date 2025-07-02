import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:path/path.dart';
import 'package:source_gen/source_gen.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GenuisBuilder extends Builder {
  final GenuisConfig config;
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
// Generator: GenUIs - ${generator.fileName.upperFirst} generator
// **************************************************************************
''');
      buffer.writeln('// ignore_for_file: unused_import');
      buffer.writeln();
      buffer.write(generator.generate());

      buildStep.writeAsString(
        _output(
          buildStep,
          join(config.output, '${generator.fileName.snakeCase}.ui.dart'),
        ),
        DartFormatter(
          pageWidth: config.lineLength,
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
          join(config.output, name).forwardSlash,
      ],
    };
  }
}
