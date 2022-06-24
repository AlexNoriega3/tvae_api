import 'package:json_annotation/json_annotation.dart';

enum CancellationOfVisitEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Ninguno')
  ninguno,
  @JsonValue('Imprevisto')
  imprevisto,
  @JsonValue('Confusion')
  confusion,
  @JsonValue('Resolucion')
  resolucion,
  @JsonValue('Otro')
  otro
}

const $CancellationOfVisitEnumMap = {
  CancellationOfVisitEnum.ninguno: 'Ninguno',
  CancellationOfVisitEnum.imprevisto: 'Imprevisto',
  CancellationOfVisitEnum.confusion: 'Confusion',
  CancellationOfVisitEnum.resolucion: 'Resolucion',
  CancellationOfVisitEnum.otro: 'Otro'
};

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
