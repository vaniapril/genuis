import 'dart:io';

import 'package:genuis/src/pubspec/pubspec_default.dart';
import 'package:yaml/yaml.dart';

Pubspec loadPubspec(File file) {
  final content = file.readAsStringSync();
  final map = loadYaml(content) as Map;
  return Pubspec.fromYaml(map);
}

class Pubspec {
  final String packageName;
  final Gens xGens;

  const Pubspec({
    required this.packageName,
    required this.xGens,
  });

  factory Pubspec.fromYaml(Map yaml) => Pubspec(
        packageName: yaml['name'],
        xGens: yaml['x_gens'] != null ? Gens.fromYaml(yaml['x_gens']) : defaultConfig,
      );
}

class Gens {
  final String output;
  final String folder;
  final String file;
  final String assets;
  final int lineLength;
  final List<String> themes;

  const Gens({
    required this.output,
    required this.assets,
    required this.folder,
    required this.file,
    required this.lineLength,
    required this.themes,
  });

  factory Gens.fromYaml(Map yaml) => Gens(
        output: yaml['output'] ?? defaultConfig.output,
        assets: yaml['assets'] ?? defaultConfig.assets,
        folder: yaml['folder'] ?? defaultConfig.folder,
        file: yaml['file'] ?? defaultConfig.file,
        lineLength: yaml['line_length'] ?? defaultConfig.lineLength,
        themes: yaml['themes'] ?? defaultConfig.themes,
      );
}
