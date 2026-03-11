import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/writers/code/constructor_code.dart';
import 'package:genuis/src/core/writers/code/enum_code.dart';
import 'package:genuis/src/core/writers/code/field_code.dart';
import 'package:genuis/src/core/writers/code/param_code.dart';
import 'package:genuis/src/core/writers/code/params_code.dart';
import 'package:genuis/src/utils/map_extension.dart';

class EnumTokenWriter {
  final String className;
  final String valueType;
  final String valueName;

  const EnumTokenWriter({
    required this.className,
    required this.valueName,
    required this.valueType,
  });

  void write(StringBuffer buffer, List<Field> fields) {
    if (fields.isEmpty) return;

    EnumCode(
      name: className,
      items: [
        for (final field in fields)
          for (final (theme, value) in field.values.iterable) '${field.enumName(theme)}($value)',
      ],
      body: [
        ConstructorCode(
          const_: true,
          type: className,
          params: ParamsCode(
            params: [
              ParamCode(
                this_: true,
                name: valueName,
              ),
            ],
          ),
        ),
        FieldCode.final_(valueType, valueName),
      ],
    ).encode(buffer);
  }
}
