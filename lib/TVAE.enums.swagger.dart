import 'package:json_annotation/json_annotation.dart';

enum GenderEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Hombre')
  hombre,
  @JsonValue('Mujer')
  mujer,
  @JsonValue('Ninguno')
  ninguno
}

const $GenderEnumMap = {
  GenderEnum.hombre: 'Hombre',
  GenderEnum.mujer: 'Mujer',
  GenderEnum.ninguno: 'Ninguno'
};
