import 'package:json_annotation/json_annotation.dart';

enum GenderEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(1)
  value_1,
  @JsonValue(2)
  value_2,
  @JsonValue(3)
  value_3
}

const $GenderEnumMap = {
  GenderEnum.value_1: 1,
  GenderEnum.value_2: 2,
  GenderEnum.value_3: 3
};
