// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TVAE.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) => AppUserDto(
      email: json['email'] as String,
      password: json['password'] as String,
      id: json['id'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      url: json['url'] as String?,
      countryCode: json['countryCode'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$AppUserDtoToJson(AppUserDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'url': instance.url,
      'countryCode': instance.countryCode,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'birthDate': instance.birthDate?.toIso8601String(),
      'active': instance.active,
    };

AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    AuthResponseDto(
      userId: json['userId'] as String?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$AuthResponseDtoToJson(AuthResponseDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };

ColorDto _$ColorDtoFromJson(Map<String, dynamic> json) => ColorDto(
      colorId: json['colorId'] as String?,
      projectId: json['projectId'] as String,
      accentPrirmario: json['accentPrirmario'] as String?,
      accentSecondary: json['accentSecondary'] as String?,
      backgroundColors: json['backgroundColors'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ColorDtoToJson(ColorDto instance) => <String, dynamic>{
      'colorId': instance.colorId,
      'projectId': instance.projectId,
      'accentPrirmario': instance.accentPrirmario,
      'accentSecondary': instance.accentSecondary,
      'backgroundColors': instance.backgroundColors,
      'description': instance.description,
    };

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) => ContactDto(
      contactId: json['contactId'] as String?,
      projectId: json['projectId'] as String,
      code: json['code'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      cp: json['cp'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      rfc: json['rfc'] as String?,
    );

Map<String, dynamic> _$ContactDtoToJson(ContactDto instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'projectId': instance.projectId,
      'code': instance.code,
      'description': instance.description,
      'name': instance.name,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'cp': instance.cp,
      'state': instance.state,
      'city': instance.city,
      'rfc': instance.rfc,
    };

DepartmentDto _$DepartmentDtoFromJson(Map<String, dynamic> json) =>
    DepartmentDto(
      departmentId: json['departmentId'] as String?,
      moduleId: json['moduleId'] as String,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DepartmentDtoToJson(DepartmentDto instance) =>
    <String, dynamic>{
      'departmentId': instance.departmentId,
      'moduleId': instance.moduleId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

LevelDto _$LevelDtoFromJson(Map<String, dynamic> json) => LevelDto(
      levelId: json['levelId'] as String?,
      projectId: json['projectId'] as String,
      contactId: json['contactId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$LevelDtoToJson(LevelDto instance) => <String, dynamic>{
      'levelId': instance.levelId,
      'projectId': instance.projectId,
      'contactId': instance.contactId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

LocalDto _$LocalDtoFromJson(Map<String, dynamic> json) => LocalDto(
      localId: json['localId'] as String?,
      levelId: json['levelId'] as String?,
      statusId: json['statusId'] as String?,
      typeId: json['typeId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      meters2: (json['meters2'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocalDtoToJson(LocalDto instance) => <String, dynamic>{
      'localId': instance.localId,
      'levelId': instance.levelId,
      'statusId': instance.statusId,
      'typeId': instance.typeId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'meters2': instance.meters2,
    };

LocalStatusDto _$LocalStatusDtoFromJson(Map<String, dynamic> json) =>
    LocalStatusDto(
      localStatusId: json['localStatusId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$LocalStatusDtoToJson(LocalStatusDto instance) =>
    <String, dynamic>{
      'localStatusId': instance.localStatusId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

LocalTypeDto _$LocalTypeDtoFromJson(Map<String, dynamic> json) => LocalTypeDto(
      localTypeId: json['localTypeId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$LocalTypeDtoToJson(LocalTypeDto instance) =>
    <String, dynamic>{
      'localTypeId': instance.localTypeId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

ModuleDto _$ModuleDtoFromJson(Map<String, dynamic> json) => ModuleDto(
      moduleId: json['moduleId'] as String?,
      localId: json['localId'] as String,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ModuleDtoToJson(ModuleDto instance) => <String, dynamic>{
      'moduleId': instance.moduleId,
      'localId': instance.localId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    ProblemDetails(
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: json['status'] as int?,
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
    };

ProjectDto _$ProjectDtoFromJson(Map<String, dynamic> json) => ProjectDto(
      projectId: json['projectId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      address: json['address'] as String?,
      cp: json['cp'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      rfc: json['rfc'] as String?,
      logo: json['logo'] as String?,
      logoApp: json['logoApp'] as String?,
    );

Map<String, dynamic> _$ProjectDtoToJson(ProjectDto instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'address': instance.address,
      'cp': instance.cp,
      'state': instance.state,
      'city': instance.city,
      'rfc': instance.rfc,
      'logo': instance.logo,
      'logoApp': instance.logoApp,
    };

ScreenDto _$ScreenDtoFromJson(Map<String, dynamic> json) => ScreenDto(
      screenId: json['screenId'] as String?,
      moduleId: json['moduleId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ScreenDtoToJson(ScreenDto instance) => <String, dynamic>{
      'screenId': instance.screenId,
      'moduleId': instance.moduleId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

SubdepartmentDto _$SubdepartmentDtoFromJson(Map<String, dynamic> json) =>
    SubdepartmentDto(
      subdepartmentId: json['subdepartmentId'] as String?,
      departmentId: json['departmentId'] as String,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SubdepartmentDtoToJson(SubdepartmentDto instance) =>
    <String, dynamic>{
      'subdepartmentId': instance.subdepartmentId,
      'departmentId': instance.departmentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

TimeOnly _$TimeOnlyFromJson(Map<String, dynamic> json) => TimeOnly(
      hour: json['hour'] as int?,
      minute: json['minute'] as int?,
      second: json['second'] as int?,
      millisecond: json['millisecond'] as int?,
      ticks: json['ticks'] as num?,
    );

Map<String, dynamic> _$TimeOnlyToJson(TimeOnly instance) => <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
      'millisecond': instance.millisecond,
      'ticks': instance.ticks,
    };

VisitDto _$VisitDtoFromJson(Map<String, dynamic> json) => VisitDto(
      visitId: json['visitId'] as String?,
      id: json['id'] as String,
      localId: json['localId'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startHour: json['startHour'] == null
          ? null
          : TimeOnly.fromJson(json['startHour'] as Map<String, dynamic>),
      endHour: json['endHour'] == null
          ? null
          : TimeOnly.fromJson(json['endHour'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VisitDtoToJson(VisitDto instance) => <String, dynamic>{
      'visitId': instance.visitId,
      'id': instance.id,
      'localId': instance.localId,
      'date': instance.date?.toIso8601String(),
      'startHour': instance.startHour?.toJson(),
      'endHour': instance.endHour?.toJson(),
    };

VisitDtoPagedResult _$VisitDtoPagedResultFromJson(Map<String, dynamic> json) =>
    VisitDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VisitDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VisitDtoPagedResultToJson(
        VisitDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };
