// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TVAE.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicStudiesDto _$AcademicStudiesDtoFromJson(Map<String, dynamic> json) =>
    AcademicStudiesDto(
      academicStudiesId: json['academicStudiesId'] as String?,
      userId: json['userId'] as String?,
      degree: json['degree'] as String?,
      school: json['school'] as String?,
    );

Map<String, dynamic> _$AcademicStudiesDtoToJson(AcademicStudiesDto instance) =>
    <String, dynamic>{
      'academicStudiesId': instance.academicStudiesId,
      'userId': instance.userId,
      'degree': instance.degree,
      'school': instance.school,
    };

AcademicStudiesDtoPagedResult _$AcademicStudiesDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    AcademicStudiesDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => AcademicStudiesDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AcademicStudiesDtoPagedResultToJson(
        AcademicStudiesDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) => AppUserDto(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      gender: genderEnumFromJson(json['gender']),
      url: json['url'] as String?,
      countryCode: json['countryCode'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      active: json['active'] as bool?,
      costPerAppointment: (json['costPerAppointment'] as num?)?.toDouble(),
      department: (json['department'] as List<dynamic>?)
              ?.map((e) => SelectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppUserDtoToJson(AppUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'image': instance.image,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'titleAbbreviation': instance.titleAbbreviation,
      'gender': genderEnumToJson(instance.gender),
      'url': instance.url,
      'countryCode': instance.countryCode,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'rating': instance.rating,
      'birthDate': instance.birthDate?.toIso8601String(),
      'active': instance.active,
      'costPerAppointment': instance.costPerAppointment,
      'department': instance.department?.map((e) => e.toJson()).toList(),
    };

AppUserDtoPagedResult _$AppUserDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    AppUserDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AppUserDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppUserDtoPagedResultToJson(
        AppUserDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    AuthResponseDto(
      userId: json['userId'] as String?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      url: json['url'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$AuthResponseDtoToJson(AuthResponseDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'name': instance.name,
      'image': instance.image,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'url': instance.url,
      'phone': instance.phone,
      'active': instance.active,
      'roles': instance.roles,
    };

BusyDatesDto _$BusyDatesDtoFromJson(Map<String, dynamic> json) => BusyDatesDto(
      date: json['date'] as String?,
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
    );

Map<String, dynamic> _$BusyDatesDtoToJson(BusyDatesDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'startHour': instance.startHour,
      'endHour': instance.endHour,
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

ColorDtoPagedResult _$ColorDtoPagedResultFromJson(Map<String, dynamic> json) =>
    ColorDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ColorDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ColorDtoPagedResultToJson(
        ColorDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
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

ContactDtoPagedResult _$ContactDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    ContactDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ContactDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ContactDtoPagedResultToJson(
        ContactDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

DepartmentDto _$DepartmentDtoFromJson(Map<String, dynamic> json) =>
    DepartmentDto(
      departmentId: json['departmentId'] as String?,
      sectionId: json['sectionId'] as String?,
      imageFile: json['imageFile'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DepartmentDtoToJson(DepartmentDto instance) =>
    <String, dynamic>{
      'departmentId': instance.departmentId,
      'sectionId': instance.sectionId,
      'imageFile': instance.imageFile,
      'name': instance.name,
      'image': instance.image,
      'code': instance.code,
      'description': instance.description,
    };

DepartmentDtoPagedResult _$DepartmentDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    DepartmentDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => DepartmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DepartmentDtoPagedResultToJson(
        DepartmentDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

EditUserResponse _$EditUserResponseFromJson(Map<String, dynamic> json) =>
    EditUserResponse(
      saved: json['saved'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$EditUserResponseToJson(EditUserResponse instance) =>
    <String, dynamic>{
      'saved': instance.saved,
      'image': instance.image,
    };

HistoricDto _$HistoricDtoFromJson(Map<String, dynamic> json) => HistoricDto(
      visitId: json['visitId'] as String?,
      localId: json['localId'] as String?,
      localName: json['localName'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userFirstName: json['userFirstName'] as String?,
      userLastName: json['userLastName'] as String?,
      userTitleAbbreviation: json['userTitleAbbreviation'] as String?,
      doctorImage: json['doctorImage'] as String?,
      doctorId: json['doctorId'] as String?,
      doctorName: json['doctorName'] as String?,
      doctorFirstName: json['doctorFirstName'] as String?,
      doctorLastName: json['doctorLastName'] as String?,
      doctorTitleAbbreviation: json['doctorTitleAbbreviation'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reason: json['reason'] as String?,
      comments: json['comments'] as String?,
      visitDate: json['visitDate'] == null
          ? null
          : DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
      visitStatusId: json['visitStatusId'] as String?,
      visitStatus: json['visitStatus'] as String?,
    );

Map<String, dynamic> _$HistoricDtoToJson(HistoricDto instance) =>
    <String, dynamic>{
      'visitId': instance.visitId,
      'localId': instance.localId,
      'localName': instance.localName,
      'userId': instance.userId,
      'userName': instance.userName,
      'userFirstName': instance.userFirstName,
      'userLastName': instance.userLastName,
      'userTitleAbbreviation': instance.userTitleAbbreviation,
      'doctorImage': instance.doctorImage,
      'doctorId': instance.doctorId,
      'doctorName': instance.doctorName,
      'doctorFirstName': instance.doctorFirstName,
      'doctorLastName': instance.doctorLastName,
      'doctorTitleAbbreviation': instance.doctorTitleAbbreviation,
      'rating': instance.rating,
      'reason': instance.reason,
      'comments': instance.comments,
      'visitDate': instance.visitDate?.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
      'visitStatusId': instance.visitStatusId,
      'visitStatus': instance.visitStatus,
    };

HistoricDtoPagedResult _$HistoricDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    HistoricDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => HistoricDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HistoricDtoPagedResultToJson(
        HistoricDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

HistoricResidentDto _$HistoricResidentDtoFromJson(Map<String, dynamic> json) =>
    HistoricResidentDto(
      visitId: json['visitId'] as String?,
      localId: json['localId'] as String?,
      localName: json['localName'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userImage: json['userImage'] as String?,
      userFirstName: json['userFirstName'] as String?,
      userLastName: json['userLastName'] as String?,
      userTitleAbbreviation: json['userTitleAbbreviation'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reason: json['reason'] as String?,
      comments: json['comments'] as String?,
      visitDate: json['visitDate'] == null
          ? null
          : DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
      visitStatusId: json['visitStatusId'] as String?,
      visitStatus: json['visitStatus'] as String?,
    );

Map<String, dynamic> _$HistoricResidentDtoToJson(
        HistoricResidentDto instance) =>
    <String, dynamic>{
      'visitId': instance.visitId,
      'localId': instance.localId,
      'localName': instance.localName,
      'userId': instance.userId,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'userFirstName': instance.userFirstName,
      'userLastName': instance.userLastName,
      'userTitleAbbreviation': instance.userTitleAbbreviation,
      'phone': instance.phone,
      'email': instance.email,
      'rating': instance.rating,
      'reason': instance.reason,
      'comments': instance.comments,
      'visitDate': instance.visitDate?.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
      'visitStatusId': instance.visitStatusId,
      'visitStatus': instance.visitStatus,
    };

HistoricResidentDtoPagedResult _$HistoricResidentDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    HistoricResidentDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  HistoricResidentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HistoricResidentDtoPagedResultToJson(
        HistoricResidentDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

KioskoResponseDto _$KioskoResponseDtoFromJson(Map<String, dynamic> json) =>
    KioskoResponseDto(
      visitId: json['visitId'] as String?,
      visitDate: json['visitDate'] == null
          ? null
          : DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
      reason: json['reason'] as String?,
      comments: json['comments'] as String?,
      user: json['user'] == null
          ? null
          : UserAttributesDto.fromJson(json['user'] as Map<String, dynamic>),
      resident: json['resident'] == null
          ? null
          : UserAttributesDto.fromJson(
              json['resident'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KioskoResponseDtoToJson(KioskoResponseDto instance) =>
    <String, dynamic>{
      'visitId': instance.visitId,
      'visitDate': instance.visitDate?.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
      'reason': instance.reason,
      'comments': instance.comments,
      'user': instance.user?.toJson(),
      'resident': instance.resident?.toJson(),
    };

KioskoResponseDtoPagedResult _$KioskoResponseDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    KioskoResponseDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => KioskoResponseDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$KioskoResponseDtoPagedResultToJson(
        KioskoResponseDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
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

LevelDtoPagedResult _$LevelDtoPagedResultFromJson(Map<String, dynamic> json) =>
    LevelDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LevelDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LevelDtoPagedResultToJson(
        LevelDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

LocalDto _$LocalDtoFromJson(Map<String, dynamic> json) => LocalDto(
      localId: json['localId'] as String?,
      levelId: json['levelId'] as String?,
      statusId: json['statusId'] as String?,
      typeId: json['typeId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      address: json['address'] as String?,
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
      'address': instance.address,
      'description': instance.description,
      'meters2': instance.meters2,
    };

LocalDtoPagedResult _$LocalDtoPagedResultFromJson(Map<String, dynamic> json) =>
    LocalDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LocalDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LocalDtoPagedResultToJson(
        LocalDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
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

LocalStatusDtoPagedResult _$LocalStatusDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    LocalStatusDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LocalStatusDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LocalStatusDtoPagedResultToJson(
        LocalStatusDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
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

LocalTypeDtoPagedResult _$LocalTypeDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    LocalTypeDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LocalTypeDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LocalTypeDtoPagedResultToJson(
        LocalTypeDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

MostVisitedDto _$MostVisitedDtoFromJson(Map<String, dynamic> json) =>
    MostVisitedDto(
      id: json['id'] as String?,
      picture: json['picture'] as String?,
      name: json['name'] as String?,
      abbreviation: json['abbreviation'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      department: (json['department'] as List<dynamic>?)
              ?.map((e) => SelectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      subDepartments: (json['subDepartments'] as List<dynamic>?)
              ?.map((e) => SelectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MostVisitedDtoToJson(MostVisitedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'rating': instance.rating,
      'department': instance.department?.map((e) => e.toJson()).toList(),
      'subDepartments':
          instance.subDepartments?.map((e) => e.toJson()).toList(),
    };

NotificationsDto _$NotificationsDtoFromJson(Map<String, dynamic> json) =>
    NotificationsDto(
      notificationId: json['notificationId'] as String?,
      receiverId: json['receiverId'] as String,
      transmitterId: json['transmitterId'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      isRead: json['isRead'] as bool?,
      ignore: json['ignore'] as bool?,
    );

Map<String, dynamic> _$NotificationsDtoToJson(NotificationsDto instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'receiverId': instance.receiverId,
      'transmitterId': instance.transmitterId,
      'title': instance.title,
      'message': instance.message,
      'isRead': instance.isRead,
      'ignore': instance.ignore,
    };

NotificationsDtoPagedResult _$NotificationsDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    NotificationsDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => NotificationsDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NotificationsDtoPagedResultToJson(
        NotificationsDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

NotificationsResponseDto _$NotificationsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    NotificationsResponseDto(
      notificationId: json['notificationId'] as String?,
      receiverId: json['receiverId'] as String,
      transmitterId: json['transmitterId'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      isRead: json['isRead'] as bool?,
      ignore: json['ignore'] as bool?,
      userId: json['userId'] as String?,
      image: json['image'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      priority: notificationPriorityFromJson(json['priority']),
      viewed: json['viewed'] == null
          ? null
          : DateTime.parse(json['viewed'] as String),
    );

Map<String, dynamic> _$NotificationsResponseDtoToJson(
        NotificationsResponseDto instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'receiverId': instance.receiverId,
      'transmitterId': instance.transmitterId,
      'title': instance.title,
      'message': instance.message,
      'isRead': instance.isRead,
      'ignore': instance.ignore,
      'userId': instance.userId,
      'image': instance.image,
      'email': instance.email,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'titleAbbreviation': instance.titleAbbreviation,
      'priority': notificationPriorityToJson(instance.priority),
      'viewed': instance.viewed?.toIso8601String(),
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

ProjectDtoPagedResult _$ProjectDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    ProjectDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ProjectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProjectDtoPagedResultToJson(
        ProjectDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ProviderProfileDto _$ProviderProfileDtoFromJson(Map<String, dynamic> json) =>
    ProviderProfileDto(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      url: json['url'] as String?,
      gender: genderEnumFromJson(json['gender']),
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      costPerAppointment: (json['costPerAppointment'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      levelLocal: (json['levelLocal'] as List<dynamic>?)
              ?.map((e) => SelectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      academicStudies: (json['academicStudies'] as List<dynamic>?)
              ?.map(
                  (e) => AcademicStudiesDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      department: (json['department'] as List<dynamic>?)
              ?.map((e) => SelectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      subDepartments: (json['subDepartments'] as List<dynamic>?)
              ?.map((e) => SelectDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      schedules: (json['schedules'] as List<dynamic>?)
              ?.map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      busyDates: (json['busyDates'] as List<dynamic>?)
              ?.map((e) => BusyDatesDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProviderProfileDtoToJson(ProviderProfileDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'titleAbbreviation': instance.titleAbbreviation,
      'url': instance.url,
      'gender': genderEnumToJson(instance.gender),
      'phone': instance.phone,
      'address': instance.address,
      'costPerAppointment': instance.costPerAppointment,
      'rating': instance.rating,
      'levelLocal': instance.levelLocal?.map((e) => e.toJson()).toList(),
      'academicStudies':
          instance.academicStudies?.map((e) => e.toJson()).toList(),
      'department': instance.department?.map((e) => e.toJson()).toList(),
      'subDepartments':
          instance.subDepartments?.map((e) => e.toJson()).toList(),
      'schedules': instance.schedules?.map((e) => e.toJson()).toList(),
      'busyDates': instance.busyDates?.map((e) => e.toJson()).toList(),
    };

ProviderPutDto _$ProviderPutDtoFromJson(Map<String, dynamic> json) =>
    ProviderPutDto(
      imageFile: json['imageFile'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      url: json['url'] as String?,
      countryCode: json['countryCode'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      gender: genderEnumFromJson(json['gender']),
      phone: json['phone'] as String,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      costPerAppointment: (json['costPerAppointment'] as num?)?.toDouble(),
      localId: json['localId'] as String?,
      subDepartments: (json['subDepartments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      academicStudies: (json['academicStudies'] as List<dynamic>?)
              ?.map(
                  (e) => AcademicStudiesDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      schedules: (json['schedules'] as List<dynamic>?)
              ?.map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProviderPutDtoToJson(ProviderPutDto instance) =>
    <String, dynamic>{
      'imageFile': instance.imageFile,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'url': instance.url,
      'countryCode': instance.countryCode,
      'titleAbbreviation': instance.titleAbbreviation,
      'gender': genderEnumToJson(instance.gender),
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'birthDate': instance.birthDate?.toIso8601String(),
      'costPerAppointment': instance.costPerAppointment,
      'localId': instance.localId,
      'subDepartments': instance.subDepartments,
      'academicStudies':
          instance.academicStudies?.map((e) => e.toJson()).toList(),
      'schedules': instance.schedules?.map((e) => e.toJson()).toList(),
    };

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) => RatingDto(
      ratingId: json['ratingId'] as String?,
      userId: json['userId'] as String?,
      doctorId: json['doctorId'] as String?,
      score: json['score'] as int?,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$RatingDtoToJson(RatingDto instance) => <String, dynamic>{
      'ratingId': instance.ratingId,
      'userId': instance.userId,
      'doctorId': instance.doctorId,
      'score': instance.score,
      'comments': instance.comments,
    };

RatingDtoPagedResult _$RatingDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    RatingDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => RatingDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RatingDtoPagedResultToJson(
        RatingDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

RatingResponseDto _$RatingResponseDtoFromJson(Map<String, dynamic> json) =>
    RatingResponseDto(
      ratingId: json['ratingId'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      score: (json['score'] as num?)?.toDouble(),
      comments: json['comments'] as String?,
      user: json['user'] == null
          ? null
          : UserAttributesDto.fromJson(json['user'] as Map<String, dynamic>),
      resident: json['resident'] == null
          ? null
          : UserAttributesDto.fromJson(
              json['resident'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingResponseDtoToJson(RatingResponseDto instance) =>
    <String, dynamic>{
      'ratingId': instance.ratingId,
      'createDate': instance.createDate?.toIso8601String(),
      'score': instance.score,
      'comments': instance.comments,
      'user': instance.user?.toJson(),
      'resident': instance.resident?.toJson(),
    };

RatingResponseDtoPagedResult _$RatingResponseDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    RatingResponseDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => RatingResponseDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RatingResponseDtoPagedResultToJson(
        RatingResponseDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ResetPasswordModel _$ResetPasswordModelFromJson(Map<String, dynamic> json) =>
    ResetPasswordModel(
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$ResetPasswordModelToJson(ResetPasswordModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'email': instance.email,
      'token': instance.token,
    };

ResultUserDto _$ResultUserDtoFromJson(Map<String, dynamic> json) =>
    ResultUserDto(
      id: json['id'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      gender: genderEnumFromJson(json['gender']),
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      visitDate: json['visitDate'] == null
          ? null
          : DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
    );

Map<String, dynamic> _$ResultUserDtoToJson(ResultUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'image': instance.image,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'titleAbbreviation': instance.titleAbbreviation,
      'gender': genderEnumToJson(instance.gender),
      'phone': instance.phone,
      'address': instance.address,
      'rating': instance.rating,
      'visitDate': instance.visitDate?.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
    };

ResultUserDtoPagedResult _$ResultUserDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    ResultUserDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ResultUserDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ResultUserDtoPagedResultToJson(
        ResultUserDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) => RoleDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$RoleDtoToJson(RoleDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };

RoleDtoPagedResult _$RoleDtoPagedResultFromJson(Map<String, dynamic> json) =>
    RoleDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleDtoPagedResultToJson(RoleDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ScheduleDto _$ScheduleDtoFromJson(Map<String, dynamic> json) => ScheduleDto(
      scheduleId: json['scheduleId'] as String?,
      day: json['day'] as String?,
      hourOpen: json['hourOpen'] as String,
      hourClose: json['hourClose'] as String,
      secondHourOpen: json['secondHourOpen'] as String?,
      secondHourClose: json['secondHourClose'] as String?,
      orderDay: json['orderDay'] as int?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$ScheduleDtoToJson(ScheduleDto instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'day': instance.day,
      'hourOpen': instance.hourOpen,
      'hourClose': instance.hourClose,
      'secondHourOpen': instance.secondHourOpen,
      'secondHourClose': instance.secondHourClose,
      'orderDay': instance.orderDay,
      'active': instance.active,
    };

ScheduleDtoPagedResult _$ScheduleDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    ScheduleDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScheduleDtoPagedResultToJson(
        ScheduleDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

SchedulePostDto _$SchedulePostDtoFromJson(Map<String, dynamic> json) =>
    SchedulePostDto(
      scheduleId: json['scheduleId'] as String?,
      day: json['day'] as String?,
      hourOpen: json['hourOpen'] as String,
      hourClose: json['hourClose'] as String,
      secondHourOpen: json['secondHourOpen'] as String?,
      secondHourClose: json['secondHourClose'] as String?,
      orderDay: json['orderDay'] as int?,
      active: json['active'] as bool?,
      userId: json['userId'] as String,
      localId: json['localId'] as String,
    );

Map<String, dynamic> _$SchedulePostDtoToJson(SchedulePostDto instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'day': instance.day,
      'hourOpen': instance.hourOpen,
      'hourClose': instance.hourClose,
      'secondHourOpen': instance.secondHourOpen,
      'secondHourClose': instance.secondHourClose,
      'orderDay': instance.orderDay,
      'active': instance.active,
      'userId': instance.userId,
      'localId': instance.localId,
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

ScreenDtoPagedResult _$ScreenDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    ScreenDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ScreenDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ScreenDtoPagedResultToJson(
        ScreenDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

SectionDto _$SectionDtoFromJson(Map<String, dynamic> json) => SectionDto(
      sectionId: json['sectionId'] as String?,
      localId: json['localId'] as String,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SectionDtoToJson(SectionDto instance) =>
    <String, dynamic>{
      'sectionId': instance.sectionId,
      'localId': instance.localId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

SectionDtoPagedResult _$SectionDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    SectionDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => SectionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SectionDtoPagedResultToJson(
        SectionDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

SelectDto _$SelectDtoFromJson(Map<String, dynamic> json) => SelectDto(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$SelectDtoToJson(SelectDto instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
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

SubdepartmentDtoPagedResult _$SubdepartmentDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    SubdepartmentDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => SubdepartmentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SubdepartmentDtoPagedResultToJson(
        SubdepartmentDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

UserAttributesDto _$UserAttributesDtoFromJson(Map<String, dynamic> json) =>
    UserAttributesDto(
      id: json['id'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
    );

Map<String, dynamic> _$UserAttributesDtoToJson(UserAttributesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'image': instance.image,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'titleAbbreviation': instance.titleAbbreviation,
    };

UserPostDto _$UserPostDtoFromJson(Map<String, dynamic> json) => UserPostDto(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      roleName: json['roleName'] as String?,
    );

Map<String, dynamic> _$UserPostDtoToJson(UserPostDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roleName': instance.roleName,
    };

UserPutDto _$UserPutDtoFromJson(Map<String, dynamic> json) => UserPutDto(
      imageFile: json['imageFile'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      url: json['url'] as String?,
      countryCode: json['countryCode'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      gender: genderEnumFromJson(json['gender']),
      phone: json['phone'] as String,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      costPerAppointment: (json['costPerAppointment'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserPutDtoToJson(UserPutDto instance) =>
    <String, dynamic>{
      'imageFile': instance.imageFile,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'url': instance.url,
      'countryCode': instance.countryCode,
      'titleAbbreviation': instance.titleAbbreviation,
      'gender': genderEnumToJson(instance.gender),
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'birthDate': instance.birthDate?.toIso8601String(),
      'costPerAppointment': instance.costPerAppointment,
    };

VisitDetailsDto _$VisitDetailsDtoFromJson(Map<String, dynamic> json) =>
    VisitDetailsDto(
      visitId: json['visitId'] as String?,
      localId: json['localId'] as String?,
      doctorId: json['doctorId'] as String?,
      localName: json['localName'] as String?,
      doctorName: json['doctorName'] as String?,
      abbreviation: json['abbreviation'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      doctorImage: json['doctorImage'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      visitDate: json['visitDate'] == null
          ? null
          : DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
      address: json['address'] as String?,
      reason: json['reason'] as String?,
      comments: json['comments'] as String?,
      cancelled: cancellationOfVisitEnumFromJson(json['cancelled']),
      cancelOther: json['cancelOther'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userAbbreviation: json['userAbbreviation'] as String?,
      userFirstName: json['userFirstName'] as String?,
      userEmail: json['userEmail'] as String?,
      userLastName: json['userLastName'] as String?,
      userCel: json['userCel'] as String?,
      userImage: json['userImage'] as String?,
      userRating: (json['userRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$VisitDetailsDtoToJson(VisitDetailsDto instance) =>
    <String, dynamic>{
      'visitId': instance.visitId,
      'localId': instance.localId,
      'doctorId': instance.doctorId,
      'localName': instance.localName,
      'doctorName': instance.doctorName,
      'abbreviation': instance.abbreviation,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'doctorImage': instance.doctorImage,
      'rating': instance.rating,
      'visitDate': instance.visitDate?.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
      'address': instance.address,
      'reason': instance.reason,
      'comments': instance.comments,
      'cancelled': cancellationOfVisitEnumToJson(instance.cancelled),
      'cancelOther': instance.cancelOther,
      'userId': instance.userId,
      'userName': instance.userName,
      'userAbbreviation': instance.userAbbreviation,
      'userFirstName': instance.userFirstName,
      'userEmail': instance.userEmail,
      'userLastName': instance.userLastName,
      'userCel': instance.userCel,
      'userImage': instance.userImage,
      'userRating': instance.userRating,
    };

VisitDto _$VisitDtoFromJson(Map<String, dynamic> json) => VisitDto(
      visitId: json['visitId'] as String?,
      localId: json['localId'] as String,
      userId: json['userId'] as String,
      providerId: json['providerId'] as String,
      reason: json['reason'] as String,
      comments: json['comments'] as String?,
      cancelled: cancellationOfVisitEnumFromJson(json['cancelled']),
      cancelOther: json['cancelOther'] as String?,
      visitDate: DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String,
      endHour: json['endHour'] as String,
      visitStatusId: json['visitStatusId'] as String?,
    );

Map<String, dynamic> _$VisitDtoToJson(VisitDto instance) => <String, dynamic>{
      'visitId': instance.visitId,
      'localId': instance.localId,
      'userId': instance.userId,
      'providerId': instance.providerId,
      'reason': instance.reason,
      'comments': instance.comments,
      'cancelled': cancellationOfVisitEnumToJson(instance.cancelled),
      'cancelOther': instance.cancelOther,
      'visitDate': instance.visitDate.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
      'visitStatusId': instance.visitStatusId,
    };

VisitDtoPagedResult _$VisitDtoPagedResultFromJson(Map<String, dynamic> json) =>
    VisitDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
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
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

VisitNextPendingDto _$VisitNextPendingDtoFromJson(Map<String, dynamic> json) =>
    VisitNextPendingDto(
      visitId: json['visitId'] as String?,
      localId: json['localId'] as String?,
      doctorId: json['doctorId'] as String?,
      localName: json['localName'] as String?,
      doctorName: json['doctorName'] as String?,
      abbreviation: json['abbreviation'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      doctorImage: json['doctorImage'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      visitDate: json['visitDate'] == null
          ? null
          : DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
    );

Map<String, dynamic> _$VisitNextPendingDtoToJson(
        VisitNextPendingDto instance) =>
    <String, dynamic>{
      'visitId': instance.visitId,
      'localId': instance.localId,
      'doctorId': instance.doctorId,
      'localName': instance.localName,
      'doctorName': instance.doctorName,
      'abbreviation': instance.abbreviation,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'doctorImage': instance.doctorImage,
      'rating': instance.rating,
      'visitDate': instance.visitDate?.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
    };

VisitNextPendingResidentDto _$VisitNextPendingResidentDtoFromJson(
        Map<String, dynamic> json) =>
    VisitNextPendingResidentDto(
      visitId: json['visitId'] as String?,
      localId: json['localId'] as String?,
      userId: json['userId'] as String?,
      localName: json['localName'] as String?,
      userName: json['userName'] as String?,
      abbreviation: json['abbreviation'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userImage: json['userImage'] as String?,
      reason: json['reason'] as String?,
      comments: json['comments'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      visitDate: json['visitDate'] == null
          ? null
          : DateTime.parse(json['visitDate'] as String),
      startHour: json['startHour'] as String?,
      endHour: json['endHour'] as String?,
    );

Map<String, dynamic> _$VisitNextPendingResidentDtoToJson(
        VisitNextPendingResidentDto instance) =>
    <String, dynamic>{
      'visitId': instance.visitId,
      'localId': instance.localId,
      'userId': instance.userId,
      'localName': instance.localName,
      'userName': instance.userName,
      'abbreviation': instance.abbreviation,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userImage': instance.userImage,
      'reason': instance.reason,
      'comments': instance.comments,
      'rating': instance.rating,
      'visitDate': instance.visitDate?.toIso8601String(),
      'startHour': instance.startHour,
      'endHour': instance.endHour,
    };

VisitNextPendingResidentDtoPagedResult
    _$VisitNextPendingResidentDtoPagedResultFromJson(
            Map<String, dynamic> json) =>
        VisitNextPendingResidentDtoPagedResult(
          totalCount: json['totalCount'] as int?,
          pageNumber: json['pageNumber'] as int?,
          recordNumber: json['recordNumber'] as int?,
          totalPages: json['totalPages'] as int?,
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) => VisitNextPendingResidentDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$VisitNextPendingResidentDtoPagedResultToJson(
        VisitNextPendingResidentDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

VisitStatusDto _$VisitStatusDtoFromJson(Map<String, dynamic> json) =>
    VisitStatusDto(
      visitStatusId: json['visitStatusId'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$VisitStatusDtoToJson(VisitStatusDto instance) =>
    <String, dynamic>{
      'visitStatusId': instance.visitStatusId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

VisitStatusDtoPagedResult _$VisitStatusDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    VisitStatusDtoPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VisitStatusDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VisitStatusDtoPagedResultToJson(
        VisitStatusDtoPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

VisitorDto _$VisitorDtoFromJson(Map<String, dynamic> json) => VisitorDto(
      phone: json['phone'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      gender: genderEnumFromJson(json['gender']),
    );

Map<String, dynamic> _$VisitorDtoToJson(VisitorDto instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'birthDate': instance.birthDate?.toIso8601String(),
      'gender': genderEnumToJson(instance.gender),
    };

UserSearchDto _$UserSearchDtoFromJson(Map<String, dynamic> json) =>
    UserSearchDto(
      page: json['page'] as int,
      search: json['search'] as String?,
      pageSize: json['pageSize'] as int,
      departments: (json['departments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      subDepartments: (json['subDepartments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      role: json['role'] as String?,
    );

Map<String, dynamic> _$UserSearchDtoToJson(UserSearchDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'search': instance.search,
      'pageSize': instance.pageSize,
      'departments': instance.departments,
      'subDepartments': instance.subDepartments,
      'role': instance.role,
    };
