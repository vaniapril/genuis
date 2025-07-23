import 'package:genuis/src/utils/string_extension.dart';

extension ListExtension<T> on List<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    return where(test).firstOrNull;
  }
}

extension StringListExtension on List<String> {
  String get joinCamelCase => map((e) => e.upperFirst).join();
}
