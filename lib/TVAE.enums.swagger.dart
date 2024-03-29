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
  otro,
  @JsonValue('Perdida')
  perdida
}

const $CancellationOfVisitEnumMap = {
  CancellationOfVisitEnum.ninguno: 'Ninguno',
  CancellationOfVisitEnum.imprevisto: 'Imprevisto',
  CancellationOfVisitEnum.confusion: 'Confusion',
  CancellationOfVisitEnum.resolucion: 'Resolucion',
  CancellationOfVisitEnum.otro: 'Otro',
  CancellationOfVisitEnum.perdida: 'Perdida'
};

enum EntitiesEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Visit')
  visit,
  @JsonValue('Visit_Canceled')
  visitCanceled,
  @JsonValue('Review')
  review
}

const $EntitiesEnumMap = {
  EntitiesEnum.visit: 'Visit',
  EntitiesEnum.visitCanceled: 'Visit_Canceled',
  EntitiesEnum.review: 'Review'
};

enum GenderEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Masculino')
  masculino,
  @JsonValue('Femenino')
  femenino,
  @JsonValue('Otro')
  otro
}

const $GenderEnumMap = {
  GenderEnum.masculino: 'Masculino',
  GenderEnum.femenino: 'Femenino',
  GenderEnum.otro: 'Otro'
};

enum NotificationPriority {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Urgent')
  urgent,
  @JsonValue('High')
  high,
  @JsonValue('Medium')
  medium,
  @JsonValue('Low')
  low
}

const $NotificationPriorityMap = {
  NotificationPriority.urgent: 'Urgent',
  NotificationPriority.high: 'High',
  NotificationPriority.medium: 'Medium',
  NotificationPriority.low: 'Low'
};

enum PlatFormEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Android')
  android,
  @JsonValue('IOS')
  ios,
  @JsonValue('Web')
  web
}

const $PlatFormEnumMap = {
  PlatFormEnum.android: 'Android',
  PlatFormEnum.ios: 'IOS',
  PlatFormEnum.web: 'Web'
};
