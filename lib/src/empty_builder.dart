import 'package:build/build.dart';

class EmptyBuilder extends Builder {
  EmptyBuilder();

  @override
  Future<void> build(BuildStep buildStep) async {}

  @override
  Map<String, List<String>> get buildExtensions {
    return {};
  }
}
