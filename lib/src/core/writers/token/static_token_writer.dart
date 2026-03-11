import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/writers/code/class_code.dart';
import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/field_code.dart';
import 'package:genuis/src/utils/map_extension.dart';

class StaticTokenWriter {
  final String className;

  const StaticTokenWriter({
    required this.className,
  });

  void write(StringBuffer buffer, List<Field> fields) {
    ClassCode(
      name: className,
      abstract_: true,
      body: [
        for (final field in fields)
          for (final (theme, value) in field.values.iterable)
            FieldCode(
              static: true,
              const_: true,
              type: field.type,
              name: field.enumName(theme),
              value: '$value'.code,
            ),
      ],
    ).encode(buffer);
  }
}
