// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TVAE.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUsuarioDto _$AppUsuarioDtoFromJson(Map<String, dynamic> json) =>
    AppUsuarioDto(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      normalizedUserName: json['normalizedUserName'] as String?,
      email: json['email'] as String?,
      normalizedEmail: json['normalizedEmail'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      passwordHash: json['passwordHash'] as String?,
      securityStamp: json['securityStamp'] as String?,
      concurrencyStamp: json['concurrencyStamp'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
      twoFactorEnabled: json['twoFactorEnabled'] as bool?,
      lockoutEnd: json['lockoutEnd'] == null
          ? null
          : DateTime.parse(json['lockoutEnd'] as String),
      lockoutEnabled: json['lockoutEnabled'] as bool?,
      accessFailedCount: json['accessFailedCount'] as int?,
      name: json['name'] as String?,
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

Map<String, dynamic> _$AppUsuarioDtoToJson(AppUsuarioDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'normalizedUserName': instance.normalizedUserName,
      'email': instance.email,
      'normalizedEmail': instance.normalizedEmail,
      'emailConfirmed': instance.emailConfirmed,
      'passwordHash': instance.passwordHash,
      'securityStamp': instance.securityStamp,
      'concurrencyStamp': instance.concurrencyStamp,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberConfirmed': instance.phoneNumberConfirmed,
      'twoFactorEnabled': instance.twoFactorEnabled,
      'lockoutEnd': instance.lockoutEnd?.toIso8601String(),
      'lockoutEnabled': instance.lockoutEnabled,
      'accessFailedCount': instance.accessFailedCount,
      'name': instance.name,
      'url': instance.url,
      'countryCode': instance.countryCode,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'birthDate': instance.birthDate?.toIso8601String(),
      'active': instance.active,
    };

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) => ContactDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      contactId: json['contactId'] as String?,
      projectId: json['projectId'] as String?,
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
      project: json['project'] == null
          ? null
          : ProjectDto.fromJson(json['project'] as Map<String, dynamic>),
      levels: (json['levels'] as List<dynamic>?)
              ?.map((e) => LevelDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      locals: (json['locals'] as List<dynamic>?)
              ?.map((e) => LocalDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ContactDtoToJson(ContactDto instance) =>
    <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
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
      'project': instance.project?.toJson(),
      'levels': instance.levels?.map((e) => e.toJson()).toList(),
      'locals': instance.locals?.map((e) => e.toJson()).toList(),
    };

DepartmentDto _$DepartmentDtoFromJson(Map<String, dynamic> json) =>
    DepartmentDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      departmentId: json['departmentId'] as String?,
      moduleId: json['moduleId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      module: json['module'] == null
          ? null
          : ModuleDto.fromJson(json['module'] as Map<String, dynamic>),
      subdepartments: (json['subdepartments'] as List<dynamic>?)
              ?.map((e) => SubdepartmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DepartmentDtoToJson(DepartmentDto instance) =>
    <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'departmentId': instance.departmentId,
      'moduleId': instance.moduleId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'module': instance.module?.toJson(),
      'subdepartments':
          instance.subdepartments?.map((e) => e.toJson()).toList(),
    };

LevelDto _$LevelDtoFromJson(Map<String, dynamic> json) => LevelDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      levelId: json['levelId'] as String?,
      projectId: json['projectId'] as String?,
      contactId: json['contactId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      project: json['project'] == null
          ? null
          : ProjectDto.fromJson(json['project'] as Map<String, dynamic>),
      contact: json['contact'] == null
          ? null
          : ContactDto.fromJson(json['contact'] as Map<String, dynamic>),
      locals: (json['locals'] as List<dynamic>?)
              ?.map((e) => LocalDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      modules: (json['modules'] as List<dynamic>?)
              ?.map((e) => ModuleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LevelDtoToJson(LevelDto instance) => <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'levelId': instance.levelId,
      'projectId': instance.projectId,
      'contactId': instance.contactId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'project': instance.project?.toJson(),
      'contact': instance.contact?.toJson(),
      'locals': instance.locals?.map((e) => e.toJson()).toList(),
      'modules': instance.modules?.map((e) => e.toJson()).toList(),
    };

LocalDto _$LocalDtoFromJson(Map<String, dynamic> json) => LocalDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      localId: json['localId'] as String?,
      levelId: json['levelId'] as String?,
      statusId: json['statusId'] as String?,
      typeId: json['typeId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      meters2: (json['meters2'] as num?)?.toDouble(),
      level: json['level'] == null
          ? null
          : LevelDto.fromJson(json['level'] as Map<String, dynamic>),
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => ContactDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      modules: (json['modules'] as List<dynamic>?)
              ?.map((e) => ModuleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      status: json['status'] == null
          ? null
          : LocalStatusDto.fromJson(json['status'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : LocalTypeDto.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocalDtoToJson(LocalDto instance) => <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'localId': instance.localId,
      'levelId': instance.levelId,
      'statusId': instance.statusId,
      'typeId': instance.typeId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'meters2': instance.meters2,
      'level': instance.level?.toJson(),
      'contacts': instance.contacts?.map((e) => e.toJson()).toList(),
      'modules': instance.modules?.map((e) => e.toJson()).toList(),
      'status': instance.status?.toJson(),
      'type': instance.type?.toJson(),
    };

LocalStatusDto _$LocalStatusDtoFromJson(Map<String, dynamic> json) =>
    LocalStatusDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      localStatusId: json['localStatusId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      locals: (json['locals'] as List<dynamic>?)
              ?.map((e) => LocalDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LocalStatusDtoToJson(LocalStatusDto instance) =>
    <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'localStatusId': instance.localStatusId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'locals': instance.locals?.map((e) => e.toJson()).toList(),
    };

LocalTypeDto _$LocalTypeDtoFromJson(Map<String, dynamic> json) => LocalTypeDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      localTypeId: json['localTypeId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      locals: (json['locals'] as List<dynamic>?)
              ?.map((e) => LocalDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LocalTypeDtoToJson(LocalTypeDto instance) =>
    <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'localTypeId': instance.localTypeId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'locals': instance.locals?.map((e) => e.toJson()).toList(),
    };

ModuleDto _$ModuleDtoFromJson(Map<String, dynamic> json) => ModuleDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      moduleId: json['moduleId'] as String?,
      localId: json['localId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      departments: (json['departments'] as List<dynamic>?)
              ?.map((e) => DepartmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      screens: (json['screens'] as List<dynamic>?)
              ?.map((e) => ScreenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      local: json['local'] == null
          ? null
          : LocalDto.fromJson(json['local'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModuleDtoToJson(ModuleDto instance) => <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'moduleId': instance.moduleId,
      'localId': instance.localId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'departments': instance.departments?.map((e) => e.toJson()).toList(),
      'screens': instance.screens?.map((e) => e.toJson()).toList(),
      'local': instance.local?.toJson(),
    };

ProjectDto _$ProjectDtoFromJson(Map<String, dynamic> json) => ProjectDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
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
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => ContactDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      level: (json['level'] as List<dynamic>?)
              ?.map((e) => LevelDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProjectDtoToJson(ProjectDto instance) =>
    <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
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
      'contacts': instance.contacts?.map((e) => e.toJson()).toList(),
      'level': instance.level?.map((e) => e.toJson()).toList(),
    };

ScreenDto _$ScreenDtoFromJson(Map<String, dynamic> json) => ScreenDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      screenId: json['screenId'] as String?,
      moduleId: json['moduleId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      module: json['module'] == null
          ? null
          : ModuleDto.fromJson(json['module'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScreenDtoToJson(ScreenDto instance) => <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'screenId': instance.screenId,
      'moduleId': instance.moduleId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'module': instance.module?.toJson(),
    };

SubdepartmentDto _$SubdepartmentDtoFromJson(Map<String, dynamic> json) =>
    SubdepartmentDto(
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      subdepartmentId: json['subdepartmentId'] as String?,
      departmentId: json['departmentId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      department: json['department'] == null
          ? null
          : DepartmentDto.fromJson(json['department'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubdepartmentDtoToJson(SubdepartmentDto instance) =>
    <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'subdepartmentId': instance.subdepartmentId,
      'departmentId': instance.departmentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'department': instance.department?.toJson(),
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
      createBy: json['createBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      visitId: json['visitId'] as String?,
      id: json['id'] as String?,
      localId: json['localId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startHour: json['startHour'] == null
          ? null
          : TimeOnly.fromJson(json['startHour'] as Map<String, dynamic>),
      endHour: json['endHour'] == null
          ? null
          : TimeOnly.fromJson(json['endHour'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : AppUsuarioDto.fromJson(json['user'] as Map<String, dynamic>),
      local: json['local'] == null
          ? null
          : LocalDto.fromJson(json['local'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VisitDtoToJson(VisitDto instance) => <String, dynamic>{
      'createBy': instance.createBy,
      'createDate': instance.createDate?.toIso8601String(),
      'active': instance.active,
      'isActive': instance.isActive,
      'visitId': instance.visitId,
      'id': instance.id,
      'localId': instance.localId,
      'date': instance.date?.toIso8601String(),
      'startHour': instance.startHour?.toJson(),
      'endHour': instance.endHour?.toJson(),
      'user': instance.user?.toJson(),
      'local': instance.local?.toJson(),
    };
