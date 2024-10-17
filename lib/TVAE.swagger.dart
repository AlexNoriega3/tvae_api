// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'TVAE.enums.swagger.dart' as enums;
export 'TVAE.enums.swagger.dart';

part 'TVAE.swagger.chopper.dart';
part 'TVAE.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class TVAE extends ChopperService {
  static TVAE create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$TVAE(client);
    }

    final newClient = ChopperClient(
        services: [_$TVAE()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$TVAE(newClient);
  }

  ///Get all AcademicStudies..
  Future<chopper.Response<List<AcademicStudiesDto>>> apiAcademicStudiesGet() {
    generatedMapping.putIfAbsent(
        AcademicStudiesDto, () => AcademicStudiesDto.fromJsonFactory);

    return _apiAcademicStudiesGet();
  }

  ///Get all AcademicStudies..
  @Get(path: '/api/AcademicStudies')
  Future<chopper.Response<List<AcademicStudiesDto>>> _apiAcademicStudiesGet();

  ///
  Future<chopper.Response<String>> apiAcademicStudiesPost(
      {required AcademicStudiesDto? body}) {
    return _apiAcademicStudiesPost(body: body);
  }

  ///
  @Post(path: '/api/AcademicStudies')
  Future<chopper.Response<String>> _apiAcademicStudiesPost(
      {@Body() required AcademicStudiesDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<AcademicStudiesDtoPagedResult>>
      apiAcademicStudiesSearchGet(
          {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(AcademicStudiesDtoPagedResult,
        () => AcademicStudiesDtoPagedResult.fromJsonFactory);

    return _apiAcademicStudiesSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/AcademicStudies/Search')
  Future<chopper.Response<AcademicStudiesDtoPagedResult>>
      _apiAcademicStudiesSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<AcademicStudiesDto>> apiAcademicStudiesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AcademicStudiesDto, () => AcademicStudiesDto.fromJsonFactory);

    return _apiAcademicStudiesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/AcademicStudies/{id}')
  Future<chopper.Response<AcademicStudiesDto>> _apiAcademicStudiesIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiAcademicStudiesIdPut(
      {required String? id, required AcademicStudiesDto? body}) {
    return _apiAcademicStudiesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/AcademicStudies/{id}')
  Future<chopper.Response<bool>> _apiAcademicStudiesIdPut(
      {@Path('id') required String? id,
      @Body() required AcademicStudiesDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiAcademicStudiesIdDelete(
      {required String? id}) {
    return _apiAcademicStudiesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/AcademicStudies/{id}')
  Future<chopper.Response<bool>> _apiAcademicStudiesIdDelete(
      {@Path('id') required String? id});

  ///Endpoint para realizar el login del usuario de los usuarios.
  Future<chopper.Response> apiAccountLoginPost({required LoginDto? body}) {
    return _apiAccountLoginPost(body: body);
  }

  ///Endpoint para realizar el login del usuario de los usuarios.
  @Post(path: '/api/Account/login')
  Future<chopper.Response> _apiAccountLoginPost(
      {@Body() required LoginDto? body});

  ///Endpoint para realizar el login del usuario de los usuarios
  Future<chopper.Response> apiAccountRefreshtokenPost(
      {required AuthResponseDto? body}) {
    return _apiAccountRefreshtokenPost(body: body);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
  @Post(path: '/api/Account/refreshtoken')
  Future<chopper.Response> _apiAccountRefreshtokenPost(
      {@Body() required AuthResponseDto? body});

  ///
  Future<chopper.Response<bool>> apiAccountLogoutPost() {
    return _apiAccountLogoutPost();
  }

  ///
  @Post(path: '/api/Account/logout', optionalBody: true)
  Future<chopper.Response<bool>> _apiAccountLogoutPost();

  ///
  ///@param userEmail
  ///@param currentPassword
  ///@param newPassword
  ///@param confirmPassword
  Future<chopper.Response>
      apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {required String? userEmail,
          required String? currentPassword,
          required String? newPassword,
          required String? confirmPassword}) {
    return _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
        userEmail: userEmail,
        currentPassword: currentPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword);
  }

  ///
  ///@param userEmail
  ///@param currentPassword
  ///@param newPassword
  ///@param confirmPassword
  @Post(
      path:
          '/api/Account/changepassword/{userEmail},{currentPassword},{newPassword},{confirmPassword}',
      optionalBody: true)
  Future<chopper.Response>
      _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {@Path('userEmail') required String? userEmail,
          @Path('currentPassword') required String? currentPassword,
          @Path('newPassword') required String? newPassword,
          @Path('confirmPassword') required String? confirmPassword});

  ///
  ///@param email
  Future<chopper.Response> apiAccountForgotpasswordPost({String? email}) {
    return _apiAccountForgotpasswordPost(email: email);
  }

  ///
  ///@param email
  @Post(path: '/api/Account/forgotpassword', optionalBody: true)
  Future<chopper.Response> _apiAccountForgotpasswordPost(
      {@Query('email') String? email});

  ///
  Future<chopper.Response<bool>> apiAccountResetpasswordPost(
      {required ResetPasswordModel? body}) {
    return _apiAccountResetpasswordPost(body: body);
  }

  ///
  @Post(path: '/api/Account/resetpassword')
  Future<chopper.Response<bool>> _apiAccountResetpasswordPost(
      {@Body() required ResetPasswordModel? body});

  ///
  Future<chopper.Response<List<ColorDto>>> apiColorGet() {
    generatedMapping.putIfAbsent(ColorDto, () => ColorDto.fromJsonFactory);

    return _apiColorGet();
  }

  ///
  @Get(path: '/api/Color')
  Future<chopper.Response<List<ColorDto>>> _apiColorGet();

  ///
  Future<chopper.Response<String>> apiColorPost({required ColorDto? body}) {
    return _apiColorPost(body: body);
  }

  ///
  @Post(path: '/api/Color')
  Future<chopper.Response<String>> _apiColorPost(
      {@Body() required ColorDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ColorDtoPagedResult>> apiColorSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ColorDtoPagedResult, () => ColorDtoPagedResult.fromJsonFactory);

    return _apiColorSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Color/Search')
  Future<chopper.Response<ColorDtoPagedResult>> _apiColorSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ColorDto>> apiColorIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ColorDto, () => ColorDto.fromJsonFactory);

    return _apiColorIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Color/{id}')
  Future<chopper.Response<ColorDto>> _apiColorIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiColorIdPut(
      {required String? id, required ColorDto? body}) {
    return _apiColorIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Color/{id}')
  Future<chopper.Response<bool>> _apiColorIdPut(
      {@Path('id') required String? id, @Body() required ColorDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiColorIdDelete({required String? id}) {
    return _apiColorIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Color/{id}')
  Future<chopper.Response<bool>> _apiColorIdDelete(
      {@Path('id') required String? id});

  ///Obtiene la lista de contactos
  Future<chopper.Response<List<ContactDto>>> apiContactGet() {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _apiContactGet();
  }

  ///Obtiene la lista de contactos
  @Get(path: '/api/Contact')
  Future<chopper.Response<List<ContactDto>>> _apiContactGet();

  ///
  Future<chopper.Response<String>> apiContactPost({required ContactDto? body}) {
    return _apiContactPost(body: body);
  }

  ///
  @Post(path: '/api/Contact')
  Future<chopper.Response<String>> _apiContactPost(
      {@Body() required ContactDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ContactDtoPagedResult>> apiContactSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ContactDtoPagedResult, () => ContactDtoPagedResult.fromJsonFactory);

    return _apiContactSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Contact/Search')
  Future<chopper.Response<ContactDtoPagedResult>> _apiContactSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ContactDto>> apiContactIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _apiContactIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Contact/{id}')
  Future<chopper.Response<ContactDto>> _apiContactIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiContactIdPut(
      {required String? id, required ContactDto? body}) {
    return _apiContactIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Contact/{id}')
  Future<chopper.Response<bool>> _apiContactIdPut(
      {@Path('id') required String? id, @Body() required ContactDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiContactIdDelete({required String? id}) {
    return _apiContactIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Contact/{id}')
  Future<chopper.Response<bool>> _apiContactIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<DepartmentDto>>> apiDepartmentGet() {
    generatedMapping.putIfAbsent(
        DepartmentDto, () => DepartmentDto.fromJsonFactory);

    return _apiDepartmentGet();
  }

  ///
  @Get(path: '/api/Department')
  Future<chopper.Response<List<DepartmentDto>>> _apiDepartmentGet();

  ///
  Future<chopper.Response<String>> apiDepartmentPost(
      {required List<int> partFile}) {
    return _apiDepartmentPost(partFile: partFile);
  }

  ///
  @Post(path: '/api/Department')
  @Multipart()
  Future<chopper.Response<String>> _apiDepartmentPost(
      {@PartFile() required List<int> partFile});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<DepartmentDtoPagedResult>> apiDepartmentSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(DepartmentDtoPagedResult,
        () => DepartmentDtoPagedResult.fromJsonFactory);

    return _apiDepartmentSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Department/Search')
  Future<chopper.Response<DepartmentDtoPagedResult>> _apiDepartmentSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<DepartmentDto>> apiDepartmentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        DepartmentDto, () => DepartmentDto.fromJsonFactory);

    return _apiDepartmentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Department/{id}')
  Future<chopper.Response<DepartmentDto>> _apiDepartmentIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDepartmentIdPut(
      {required String? id, required List<int> partFile}) {
    return _apiDepartmentIdPut(id: id, partFile: partFile);
  }

  ///
  ///@param id
  @Put(path: '/api/Department/{id}')
  @Multipart()
  Future<chopper.Response<bool>> _apiDepartmentIdPut(
      {@Path('id') required String? id,
      @PartFile() required List<int> partFile});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDepartmentIdDelete({required String? id}) {
    return _apiDepartmentIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Department/{id}')
  Future<chopper.Response<bool>> _apiDepartmentIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<DeviceDto>>> apiDeviceGet() {
    generatedMapping.putIfAbsent(DeviceDto, () => DeviceDto.fromJsonFactory);

    return _apiDeviceGet();
  }

  ///
  @Get(path: '/api/Device')
  Future<chopper.Response<List<DeviceDto>>> _apiDeviceGet();

  ///
  Future<chopper.Response<String>> apiDevicePost({required DeviceDto? body}) {
    return _apiDevicePost(body: body);
  }

  ///
  @Post(path: '/api/Device')
  Future<chopper.Response<String>> _apiDevicePost(
      {@Body() required DeviceDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<DeviceDtoPagedResult>> apiDeviceSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        DeviceDtoPagedResult, () => DeviceDtoPagedResult.fromJsonFactory);

    return _apiDeviceSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Device/Search')
  Future<chopper.Response<DeviceDtoPagedResult>> _apiDeviceSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<DeviceDto>> apiDeviceIdGet({required String? id}) {
    generatedMapping.putIfAbsent(DeviceDto, () => DeviceDto.fromJsonFactory);

    return _apiDeviceIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Device/{id}')
  Future<chopper.Response<DeviceDto>> _apiDeviceIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDeviceIdPut(
      {required String? id, required DeviceDto? body}) {
    return _apiDeviceIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Device/{id}')
  Future<chopper.Response<bool>> _apiDeviceIdPut(
      {@Path('id') required String? id, @Body() required DeviceDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDeviceIdDelete({required String? id}) {
    return _apiDeviceIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Device/{id}')
  Future<chopper.Response<bool>> _apiDeviceIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param LocalId
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<KioskoResponseDtoPagedResult>> apiKioskoSearchGet(
      {required String? localId,
      String? dateVisit,
      required int? page,
      String? search,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(KioskoResponseDtoPagedResult,
        () => KioskoResponseDtoPagedResult.fromJsonFactory);

    return _apiKioskoSearchGet(
        localId: localId,
        dateVisit: dateVisit,
        page: page,
        search: search,
        pageSize: pageSize);
  }

  ///
  ///@param LocalId
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Kiosko/Search')
  Future<chopper.Response<KioskoResponseDtoPagedResult>> _apiKioskoSearchGet(
      {@Query('LocalId') required String? localId,
      @Query('DateVisit') String? dateVisit,
      @Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  Future<chopper.Response<List<LevelDto>>> apiLevelGet() {
    generatedMapping.putIfAbsent(LevelDto, () => LevelDto.fromJsonFactory);

    return _apiLevelGet();
  }

  ///
  @Get(path: '/api/Level')
  Future<chopper.Response<List<LevelDto>>> _apiLevelGet();

  ///
  Future<chopper.Response<String>> apiLevelPost({required LevelDto? body}) {
    return _apiLevelPost(body: body);
  }

  ///
  @Post(path: '/api/Level')
  Future<chopper.Response<String>> _apiLevelPost(
      {@Body() required LevelDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<LevelDtoPagedResult>> apiLevelSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        LevelDtoPagedResult, () => LevelDtoPagedResult.fromJsonFactory);

    return _apiLevelSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Level/Search')
  Future<chopper.Response<LevelDtoPagedResult>> _apiLevelSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<LevelDto>> apiLevelIdGet({required String? id}) {
    generatedMapping.putIfAbsent(LevelDto, () => LevelDto.fromJsonFactory);

    return _apiLevelIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Level/{id}')
  Future<chopper.Response<LevelDto>> _apiLevelIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLevelIdPut(
      {required String? id, required LevelDto? body}) {
    return _apiLevelIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Level/{id}')
  Future<chopper.Response<bool>> _apiLevelIdPut(
      {@Path('id') required String? id, @Body() required LevelDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLevelIdDelete({required String? id}) {
    return _apiLevelIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Level/{id}')
  Future<chopper.Response<bool>> _apiLevelIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<LocalDto>>> apiLocalGet() {
    generatedMapping.putIfAbsent(LocalDto, () => LocalDto.fromJsonFactory);

    return _apiLocalGet();
  }

  ///
  @Get(path: '/api/Local')
  Future<chopper.Response<List<LocalDto>>> _apiLocalGet();

  ///
  Future<chopper.Response<String>> apiLocalPost({required LocalDto? body}) {
    return _apiLocalPost(body: body);
  }

  ///
  @Post(path: '/api/Local')
  Future<chopper.Response<String>> _apiLocalPost(
      {@Body() required LocalDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<LocalDtoPagedResult>> apiLocalSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        LocalDtoPagedResult, () => LocalDtoPagedResult.fromJsonFactory);

    return _apiLocalSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Local/Search')
  Future<chopper.Response<LocalDtoPagedResult>> _apiLocalSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<LocalDto>> apiLocalIdGet({required String? id}) {
    generatedMapping.putIfAbsent(LocalDto, () => LocalDto.fromJsonFactory);

    return _apiLocalIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Local/{id}')
  Future<chopper.Response<LocalDto>> _apiLocalIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLocalIdPut(
      {required String? id, required LocalDto? body}) {
    return _apiLocalIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Local/{id}')
  Future<chopper.Response<bool>> _apiLocalIdPut(
      {@Path('id') required String? id, @Body() required LocalDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLocalIdDelete({required String? id}) {
    return _apiLocalIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Local/{id}')
  Future<chopper.Response<bool>> _apiLocalIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<LocalStatusDto>>> apiLocalStatusGet() {
    generatedMapping.putIfAbsent(
        LocalStatusDto, () => LocalStatusDto.fromJsonFactory);

    return _apiLocalStatusGet();
  }

  ///
  @Get(path: '/api/LocalStatus')
  Future<chopper.Response<List<LocalStatusDto>>> _apiLocalStatusGet();

  ///
  Future<chopper.Response<String>> apiLocalStatusPost(
      {required LocalStatusDto? body}) {
    return _apiLocalStatusPost(body: body);
  }

  ///
  @Post(path: '/api/LocalStatus')
  Future<chopper.Response<String>> _apiLocalStatusPost(
      {@Body() required LocalStatusDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<LocalStatusDtoPagedResult>> apiLocalStatusSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(LocalStatusDtoPagedResult,
        () => LocalStatusDtoPagedResult.fromJsonFactory);

    return _apiLocalStatusSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/LocalStatus/Search')
  Future<chopper.Response<LocalStatusDtoPagedResult>> _apiLocalStatusSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<LocalStatusDto>> apiLocalStatusIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        LocalStatusDto, () => LocalStatusDto.fromJsonFactory);

    return _apiLocalStatusIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/LocalStatus/{id}')
  Future<chopper.Response<LocalStatusDto>> _apiLocalStatusIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLocalStatusIdPut(
      {required String? id, required LocalStatusDto? body}) {
    return _apiLocalStatusIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/LocalStatus/{id}')
  Future<chopper.Response<bool>> _apiLocalStatusIdPut(
      {@Path('id') required String? id, @Body() required LocalStatusDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLocalStatusIdDelete({required String? id}) {
    return _apiLocalStatusIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/LocalStatus/{id}')
  Future<chopper.Response<bool>> _apiLocalStatusIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<LocalTypeDto>>> apiLocalTypeGet() {
    generatedMapping.putIfAbsent(
        LocalTypeDto, () => LocalTypeDto.fromJsonFactory);

    return _apiLocalTypeGet();
  }

  ///
  @Get(path: '/api/LocalType')
  Future<chopper.Response<List<LocalTypeDto>>> _apiLocalTypeGet();

  ///
  Future<chopper.Response<String>> apiLocalTypePost(
      {required LocalTypeDto? body}) {
    return _apiLocalTypePost(body: body);
  }

  ///
  @Post(path: '/api/LocalType')
  Future<chopper.Response<String>> _apiLocalTypePost(
      {@Body() required LocalTypeDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<LocalTypeDtoPagedResult>> apiLocalTypeSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        LocalTypeDtoPagedResult, () => LocalTypeDtoPagedResult.fromJsonFactory);

    return _apiLocalTypeSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/LocalType/Search')
  Future<chopper.Response<LocalTypeDtoPagedResult>> _apiLocalTypeSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<LocalTypeDto>> apiLocalTypeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        LocalTypeDto, () => LocalTypeDto.fromJsonFactory);

    return _apiLocalTypeIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/LocalType/{id}')
  Future<chopper.Response<LocalTypeDto>> _apiLocalTypeIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLocalTypeIdPut(
      {required String? id, required LocalTypeDto? body}) {
    return _apiLocalTypeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/LocalType/{id}')
  Future<chopper.Response<bool>> _apiLocalTypeIdPut(
      {@Path('id') required String? id, @Body() required LocalTypeDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiLocalTypeIdDelete({required String? id}) {
    return _apiLocalTypeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/LocalType/{id}')
  Future<chopper.Response<bool>> _apiLocalTypeIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<NotificationsDto>>> apiNotificationsGet() {
    generatedMapping.putIfAbsent(
        NotificationsDto, () => NotificationsDto.fromJsonFactory);

    return _apiNotificationsGet();
  }

  ///
  @Get(path: '/api/Notifications')
  Future<chopper.Response<List<NotificationsDto>>> _apiNotificationsGet();

  ///
  Future<chopper.Response<String>> apiNotificationsPost(
      {required NotificationsDto? body}) {
    return _apiNotificationsPost(body: body);
  }

  ///
  @Post(path: '/api/Notifications')
  Future<chopper.Response<String>> _apiNotificationsPost(
      {@Body() required NotificationsDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<NotificationsDtoPagedResult>>
      apiNotificationsSearchGet(
          {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(NotificationsDtoPagedResult,
        () => NotificationsDtoPagedResult.fromJsonFactory);

    return _apiNotificationsSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Notifications/Search')
  Future<chopper.Response<NotificationsDtoPagedResult>>
      _apiNotificationsSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<NotificationsDto>> apiNotificationsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        NotificationsDto, () => NotificationsDto.fromJsonFactory);

    return _apiNotificationsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Notifications/{id}')
  Future<chopper.Response<NotificationsDto>> _apiNotificationsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiNotificationsIdDelete(
      {required String? id}) {
    return _apiNotificationsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Notifications/{id}')
  Future<chopper.Response<bool>> _apiNotificationsIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param notiId
  Future<chopper.Response<bool>> apiNotificationsViewedNotiIdPut(
      {required String? notiId}) {
    return _apiNotificationsViewedNotiIdPut(notiId: notiId);
  }

  ///
  ///@param notiId
  @Put(path: '/api/Notifications/Viewed/{notiId}', optionalBody: true)
  Future<chopper.Response<bool>> _apiNotificationsViewedNotiIdPut(
      {@Path('notiId') required String? notiId});

  ///
  ///@param notiId
  Future<chopper.Response<bool>> apiNotificationsIgnoreNotiIdPut(
      {required String? notiId}) {
    return _apiNotificationsIgnoreNotiIdPut(notiId: notiId);
  }

  ///
  ///@param notiId
  @Put(path: '/api/Notifications/Ignore/{notiId}', optionalBody: true)
  Future<chopper.Response<bool>> _apiNotificationsIgnoreNotiIdPut(
      {@Path('notiId') required String? notiId});

  ///
  ///@param id
  Future<chopper.Response<List<NotificationsResponseDto>>>
      apiNotificationsByUserIdGet({required String? id}) {
    generatedMapping.putIfAbsent(NotificationsResponseDto,
        () => NotificationsResponseDto.fromJsonFactory);

    return _apiNotificationsByUserIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Notifications/ByUser/{id}')
  Future<chopper.Response<List<NotificationsResponseDto>>>
      _apiNotificationsByUserIdGet({@Path('id') required String? id});

  ///
  Future<chopper.Response> apiNotificationsSendNotificationPost(
      {required PushNotificationDto? body}) {
    return _apiNotificationsSendNotificationPost(body: body);
  }

  ///
  @Post(path: '/api/Notifications/SendNotification')
  Future<chopper.Response> _apiNotificationsSendNotificationPost(
      {@Body() required PushNotificationDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ProjectDtoPagedResult>> apiProjectSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ProjectDtoPagedResult, () => ProjectDtoPagedResult.fromJsonFactory);

    return _apiProjectSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Project/Search')
  Future<chopper.Response<ProjectDtoPagedResult>> _apiProjectSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  Future<chopper.Response<List<ProjectDto>>> apiProjectGet() {
    generatedMapping.putIfAbsent(ProjectDto, () => ProjectDto.fromJsonFactory);

    return _apiProjectGet();
  }

  ///
  @Get(path: '/api/Project')
  Future<chopper.Response<List<ProjectDto>>> _apiProjectGet();

  ///
  Future<chopper.Response<String>> apiProjectPost({required ProjectDto? body}) {
    return _apiProjectPost(body: body);
  }

  ///
  @Post(path: '/api/Project')
  Future<chopper.Response<String>> _apiProjectPost(
      {@Body() required ProjectDto? body});

  ///
  ///@param id
  Future<chopper.Response<ProjectDto>> apiProjectIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ProjectDto, () => ProjectDto.fromJsonFactory);

    return _apiProjectIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Project/{id}')
  Future<chopper.Response<ProjectDto>> _apiProjectIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiProjectIdPut(
      {required String? id, required ProjectDto? body}) {
    return _apiProjectIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Project/{id}')
  Future<chopper.Response<bool>> _apiProjectIdPut(
      {@Path('id') required String? id, @Body() required ProjectDto? body});

  ///
  Future<chopper.Response<List<RatingDto>>> apiRatingGet() {
    generatedMapping.putIfAbsent(RatingDto, () => RatingDto.fromJsonFactory);

    return _apiRatingGet();
  }

  ///
  @Get(path: '/api/Rating')
  Future<chopper.Response<List<RatingDto>>> _apiRatingGet();

  ///
  Future<chopper.Response<String>> apiRatingPost({required RatingDto? body}) {
    return _apiRatingPost(body: body);
  }

  ///
  @Post(path: '/api/Rating')
  Future<chopper.Response<String>> _apiRatingPost(
      {@Body() required RatingDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<RatingDtoPagedResult>> apiRatingSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        RatingDtoPagedResult, () => RatingDtoPagedResult.fromJsonFactory);

    return _apiRatingSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Rating/Search')
  Future<chopper.Response<RatingDtoPagedResult>> _apiRatingSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<RatingDto>> apiRatingIdGet({required String? id}) {
    generatedMapping.putIfAbsent(RatingDto, () => RatingDto.fromJsonFactory);

    return _apiRatingIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Rating/{id}')
  Future<chopper.Response<RatingDto>> _apiRatingIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiRatingIdPut(
      {required String? id, required RatingDto? body}) {
    return _apiRatingIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Rating/{id}')
  Future<chopper.Response<bool>> _apiRatingIdPut(
      {@Path('id') required String? id, @Body() required RatingDto? body});

  ///
  ///@param userId
  Future<chopper.Response<RatingDto>> apiRatingByUserUserIdGet(
      {required String? userId}) {
    generatedMapping.putIfAbsent(RatingDto, () => RatingDto.fromJsonFactory);

    return _apiRatingByUserUserIdGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/api/Rating/byUser/{userId}')
  Future<chopper.Response<RatingDto>> _apiRatingByUserUserIdGet(
      {@Path('userId') required String? userId});

  ///
  ///@param UserId
  ///@param OrderDescending
  ///@param DescendingRating
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<RatingResponseDtoPagedResult>> apiRatingReviewsGet(
      {required String? userId,
      bool? orderDescending,
      bool? descendingRating,
      required int? page,
      String? search,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(RatingResponseDtoPagedResult,
        () => RatingResponseDtoPagedResult.fromJsonFactory);

    return _apiRatingReviewsGet(
        userId: userId,
        orderDescending: orderDescending,
        descendingRating: descendingRating,
        page: page,
        search: search,
        pageSize: pageSize);
  }

  ///
  ///@param UserId
  ///@param OrderDescending
  ///@param DescendingRating
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Rating/Reviews')
  Future<chopper.Response<RatingResponseDtoPagedResult>> _apiRatingReviewsGet(
      {@Query('UserId') required String? userId,
      @Query('OrderDescending') bool? orderDescending,
      @Query('DescendingRating') bool? descendingRating,
      @Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  Future<chopper.Response<MissingReviewDto>> apiRatingLastMissingRateGet() {
    generatedMapping.putIfAbsent(
        MissingReviewDto, () => MissingReviewDto.fromJsonFactory);

    return _apiRatingLastMissingRateGet();
  }

  ///
  @Get(path: '/api/Rating/LastMissingRate')
  Future<chopper.Response<MissingReviewDto>> _apiRatingLastMissingRateGet();

  ///
  Future<chopper.Response<List<RoleDto>>> apiRoleGet() {
    generatedMapping.putIfAbsent(RoleDto, () => RoleDto.fromJsonFactory);

    return _apiRoleGet();
  }

  ///
  @Get(path: '/api/Role')
  Future<chopper.Response<List<RoleDto>>> _apiRoleGet();

  ///
  Future<chopper.Response<String>> apiRolePost({required RoleDto? body}) {
    return _apiRolePost(body: body);
  }

  ///
  @Post(path: '/api/Role')
  Future<chopper.Response<String>> _apiRolePost(
      {@Body() required RoleDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<RoleDtoPagedResult>> apiRoleSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        RoleDtoPagedResult, () => RoleDtoPagedResult.fromJsonFactory);

    return _apiRoleSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Role/Search')
  Future<chopper.Response<RoleDtoPagedResult>> _apiRoleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<RoleDto>> apiRoleIdGet({required String? id}) {
    generatedMapping.putIfAbsent(RoleDto, () => RoleDto.fromJsonFactory);

    return _apiRoleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Role/{id}')
  Future<chopper.Response<RoleDto>> _apiRoleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiRoleIdPut(
      {required String? id, required RoleDto? body}) {
    return _apiRoleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Role/{id}')
  Future<chopper.Response<bool>> _apiRoleIdPut(
      {@Path('id') required String? id, @Body() required RoleDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiRoleIdDelete({required String? id}) {
    return _apiRoleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Role/{id}')
  Future<chopper.Response<bool>> _apiRoleIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ScheduleDto>>> apiScheduleGet() {
    generatedMapping.putIfAbsent(
        ScheduleDto, () => ScheduleDto.fromJsonFactory);

    return _apiScheduleGet();
  }

  ///
  @Get(path: '/api/Schedule')
  Future<chopper.Response<List<ScheduleDto>>> _apiScheduleGet();

  ///
  Future<chopper.Response<String>> apiSchedulePost(
      {required SchedulePostDto? body}) {
    return _apiSchedulePost(body: body);
  }

  ///
  @Post(path: '/api/Schedule')
  Future<chopper.Response<String>> _apiSchedulePost(
      {@Body() required SchedulePostDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ScheduleDtoPagedResult>> apiScheduleSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ScheduleDtoPagedResult, () => ScheduleDtoPagedResult.fromJsonFactory);

    return _apiScheduleSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Schedule/Search')
  Future<chopper.Response<ScheduleDtoPagedResult>> _apiScheduleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  Future<chopper.Response<bool>> apiScheduleAddRangePost(
      {required List<SchedulePostDto>? body}) {
    return _apiScheduleAddRangePost(body: body);
  }

  ///
  @Post(path: '/api/Schedule/AddRange')
  Future<chopper.Response<bool>> _apiScheduleAddRangePost(
      {@Body() required List<SchedulePostDto>? body});

  ///
  ///@param id
  Future<chopper.Response<ScheduleDto>> apiScheduleIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ScheduleDto, () => ScheduleDto.fromJsonFactory);

    return _apiScheduleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Schedule/{id}')
  Future<chopper.Response<ScheduleDto>> _apiScheduleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiScheduleIdPut(
      {required String? id, required ScheduleDto? body}) {
    return _apiScheduleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Schedule/{id}')
  Future<chopper.Response<bool>> _apiScheduleIdPut(
      {@Path('id') required String? id, @Body() required ScheduleDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiScheduleIdDelete({required String? id}) {
    return _apiScheduleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Schedule/{id}')
  Future<chopper.Response<bool>> _apiScheduleIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param residentId
  Future<chopper.Response<ScheduleDto>> apiScheduleByResidentResidentIdGet(
      {required String? residentId}) {
    generatedMapping.putIfAbsent(
        ScheduleDto, () => ScheduleDto.fromJsonFactory);

    return _apiScheduleByResidentResidentIdGet(residentId: residentId);
  }

  ///
  ///@param residentId
  @Get(path: '/api/Schedule/ByResident/{residentId}')
  Future<chopper.Response<ScheduleDto>> _apiScheduleByResidentResidentIdGet(
      {@Path('residentId') required String? residentId});

  ///
  ///@param residentId
  Future<chopper.Response<BusyDatesDto>> apiScheduleBusyDatesResidentIdGet(
      {required String? residentId}) {
    generatedMapping.putIfAbsent(
        BusyDatesDto, () => BusyDatesDto.fromJsonFactory);

    return _apiScheduleBusyDatesResidentIdGet(residentId: residentId);
  }

  ///
  ///@param residentId
  @Get(path: '/api/Schedule/BusyDates/{residentId}')
  Future<chopper.Response<BusyDatesDto>> _apiScheduleBusyDatesResidentIdGet(
      {@Path('residentId') required String? residentId});

  ///
  Future<chopper.Response<List<ScreenDto>>> apiScreenGet() {
    generatedMapping.putIfAbsent(ScreenDto, () => ScreenDto.fromJsonFactory);

    return _apiScreenGet();
  }

  ///
  @Get(path: '/api/Screen')
  Future<chopper.Response<List<ScreenDto>>> _apiScreenGet();

  ///
  Future<chopper.Response<String>> apiScreenPost({required ScreenDto? body}) {
    return _apiScreenPost(body: body);
  }

  ///
  @Post(path: '/api/Screen')
  Future<chopper.Response<String>> _apiScreenPost(
      {@Body() required ScreenDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ScreenDtoPagedResult>> apiScreenSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ScreenDtoPagedResult, () => ScreenDtoPagedResult.fromJsonFactory);

    return _apiScreenSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Screen/Search')
  Future<chopper.Response<ScreenDtoPagedResult>> _apiScreenSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ScreenDto>> apiScreenIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ScreenDto, () => ScreenDto.fromJsonFactory);

    return _apiScreenIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Screen/{id}')
  Future<chopper.Response<ScreenDto>> _apiScreenIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiScreenIdPut(
      {required String? id, required ScreenDto? body}) {
    return _apiScreenIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Screen/{id}')
  Future<chopper.Response<bool>> _apiScreenIdPut(
      {@Path('id') required String? id, @Body() required ScreenDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiScreenIdDelete({required String? id}) {
    return _apiScreenIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Screen/{id}')
  Future<chopper.Response<bool>> _apiScreenIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<SectionDto>>> apiSectionGet() {
    generatedMapping.putIfAbsent(SectionDto, () => SectionDto.fromJsonFactory);

    return _apiSectionGet();
  }

  ///
  @Get(path: '/api/Section')
  Future<chopper.Response<List<SectionDto>>> _apiSectionGet();

  ///
  Future<chopper.Response<String>> apiSectionPost({required SectionDto? body}) {
    return _apiSectionPost(body: body);
  }

  ///
  @Post(path: '/api/Section')
  Future<chopper.Response<String>> _apiSectionPost(
      {@Body() required SectionDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<SectionDtoPagedResult>> apiSectionSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        SectionDtoPagedResult, () => SectionDtoPagedResult.fromJsonFactory);

    return _apiSectionSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Section/Search')
  Future<chopper.Response<SectionDtoPagedResult>> _apiSectionSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<SectionDto>> apiSectionIdGet({required String? id}) {
    generatedMapping.putIfAbsent(SectionDto, () => SectionDto.fromJsonFactory);

    return _apiSectionIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Section/{id}')
  Future<chopper.Response<SectionDto>> _apiSectionIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiSectionIdPut(
      {required String? id, required SectionDto? body}) {
    return _apiSectionIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Section/{id}')
  Future<chopper.Response<bool>> _apiSectionIdPut(
      {@Path('id') required String? id, @Body() required SectionDto? body});

  ///
  Future<chopper.Response<List<SubdepartmentDto>>> apiSubdepartmentGet() {
    generatedMapping.putIfAbsent(
        SubdepartmentDto, () => SubdepartmentDto.fromJsonFactory);

    return _apiSubdepartmentGet();
  }

  ///
  @Get(path: '/api/Subdepartment')
  Future<chopper.Response<List<SubdepartmentDto>>> _apiSubdepartmentGet();

  ///
  Future<chopper.Response<String>> apiSubdepartmentPost(
      {required SubdepartmentDto? body}) {
    return _apiSubdepartmentPost(body: body);
  }

  ///
  @Post(path: '/api/Subdepartment')
  Future<chopper.Response<String>> _apiSubdepartmentPost(
      {@Body() required SubdepartmentDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<SubdepartmentDtoPagedResult>>
      apiSubdepartmentSearchGet(
          {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(SubdepartmentDtoPagedResult,
        () => SubdepartmentDtoPagedResult.fromJsonFactory);

    return _apiSubdepartmentSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Subdepartment/Search')
  Future<chopper.Response<SubdepartmentDtoPagedResult>>
      _apiSubdepartmentSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<SubdepartmentDto>> apiSubdepartmentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        SubdepartmentDto, () => SubdepartmentDto.fromJsonFactory);

    return _apiSubdepartmentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Subdepartment/{id}')
  Future<chopper.Response<SubdepartmentDto>> _apiSubdepartmentIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiSubdepartmentIdPut(
      {required String? id, required SubdepartmentDto? body}) {
    return _apiSubdepartmentIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Subdepartment/{id}')
  Future<chopper.Response<bool>> _apiSubdepartmentIdPut(
      {@Path('id') required String? id,
      @Body() required SubdepartmentDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiSubdepartmentIdDelete(
      {required String? id}) {
    return _apiSubdepartmentIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Subdepartment/{id}')
  Future<chopper.Response<bool>> _apiSubdepartmentIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<List<SubdepartmentDto>>>
      apiSubdepartmentByDepartmentIdGet({required String? id}) {
    generatedMapping.putIfAbsent(
        SubdepartmentDto, () => SubdepartmentDto.fromJsonFactory);

    return _apiSubdepartmentByDepartmentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Subdepartment/byDepartment/{id}')
  Future<chopper.Response<List<SubdepartmentDto>>>
      _apiSubdepartmentByDepartmentIdGet({@Path('id') required String? id});

  ///
  Future<chopper.Response<List<AppUserDto>>> apiUserGet() {
    generatedMapping.putIfAbsent(AppUserDto, () => AppUserDto.fromJsonFactory);

    return _apiUserGet();
  }

  ///
  @Get(path: '/api/User')
  Future<chopper.Response<List<AppUserDto>>> _apiUserGet();

  ///Endpoint para el registro de los usuarios
  Future<chopper.Response<String>> apiUserPost({required UserPostDto? body}) {
    return _apiUserPost(body: body);
  }

  ///Endpoint para el registro de los usuarios
  @Post(path: '/api/User')
  Future<chopper.Response<String>> _apiUserPost(
      {@Body() required UserPostDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<AppUserDtoPagedResult>> apiUserSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        AppUserDtoPagedResult, () => AppUserDtoPagedResult.fromJsonFactory);

    return _apiUserSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/User/Search')
  Future<chopper.Response<AppUserDtoPagedResult>> _apiUserSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  Future<chopper.Response<String>> apiUserAddVisitorPost(
      {required VisitorDto? body}) {
    return _apiUserAddVisitorPost(body: body);
  }

  ///
  @Post(path: '/api/User/AddVisitor')
  Future<chopper.Response<String>> _apiUserAddVisitorPost(
      {@Body() required VisitorDto? body});

  ///
  ///@param id
  Future<chopper.Response<AppUserDto>> apiUserIdGet({required String? id}) {
    generatedMapping.putIfAbsent(AppUserDto, () => AppUserDto.fromJsonFactory);

    return _apiUserIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/User/{id}')
  Future<chopper.Response<AppUserDto>> _apiUserIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserIdPut(
      {required String? id, required List<int> partFile}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserIdPut(id: id, partFile: partFile);
  }

  ///
  ///@param id
  @Put(path: '/api/User/{id}')
  @Multipart()
  Future<chopper.Response<EditUserResponse>> _apiUserIdPut(
      {@Path('id') required String? id,
      @PartFile() required List<int> partFile});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserEditUserAppIdPut(
      {required String? id, required UserPutDto? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserEditUserAppIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/User/EditUserApp/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserEditUserAppIdPut(
      {@Path('id') required String? id, @Body() required UserPutDto? body});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserUploadImageIdPost(
      {required String? id, required List<int> partFile}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserUploadImageIdPost(id: id, partFile: partFile);
  }

  ///
  ///@param id
  @Post(path: '/api/User/UploadImage/{id}')
  @Multipart()
  Future<chopper.Response<EditUserResponse>> _apiUserUploadImageIdPost(
      {@Path('id') required String? id,
      @PartFile() required List<int> partFile});

  ///Obtiene el listado de usuarios filtrados
  Future<chopper.Response<AppUserDto>> apiUserByRoleAndDepartmentPost(
      {required UserSearchDto? body}) {
    generatedMapping.putIfAbsent(AppUserDto, () => AppUserDto.fromJsonFactory);

    return _apiUserByRoleAndDepartmentPost(body: body);
  }

  ///Obtiene el listado de usuarios filtrados
  @Post(path: '/api/User/byRoleAndDepartment')
  Future<chopper.Response<AppUserDto>> _apiUserByRoleAndDepartmentPost(
      {@Body() required UserSearchDto? body});

  ///
  ///@param userId
  Future<chopper.Response<List<MostVisitedDto>>> apiUserMostVisitedUserIdPost(
      {required String? userId}) {
    generatedMapping.putIfAbsent(
        MostVisitedDto, () => MostVisitedDto.fromJsonFactory);

    return _apiUserMostVisitedUserIdPost(userId: userId);
  }

  ///
  ///@param userId
  @Post(path: '/api/User/MostVisited/{userId}', optionalBody: true)
  Future<chopper.Response<List<MostVisitedDto>>> _apiUserMostVisitedUserIdPost(
      {@Path('userId') required String? userId});

  ///
  ///@param providerId
  Future<chopper.Response<ProviderProfileDto>>
      apiUserProviderProfileProviderIdPost({required String? providerId}) {
    generatedMapping.putIfAbsent(
        ProviderProfileDto, () => ProviderProfileDto.fromJsonFactory);

    return _apiUserProviderProfileProviderIdPost(providerId: providerId);
  }

  ///
  ///@param providerId
  @Post(path: '/api/User/ProviderProfile/{providerId}', optionalBody: true)
  Future<chopper.Response<ProviderProfileDto>>
      _apiUserProviderProfileProviderIdPost(
          {@Path('providerId') required String? providerId});

  ///
  ///@param providerId
  Future<chopper.Response<ProviderQRInfo>> apiUserProviderQRInfoProviderIdPost(
      {required String? providerId}) {
    generatedMapping.putIfAbsent(
        ProviderQRInfo, () => ProviderQRInfo.fromJsonFactory);

    return _apiUserProviderQRInfoProviderIdPost(providerId: providerId);
  }

  ///
  ///@param providerId
  @Post(path: '/api/User/ProviderQRInfo/{providerId}', optionalBody: true)
  Future<chopper.Response<ProviderQRInfo>> _apiUserProviderQRInfoProviderIdPost(
      {@Path('providerId') required String? providerId});

  ///
  ///@param providerId
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ResultUserDtoPagedResult>>
      apiUserSearchUserByProviderGet(
          {required String? providerId,
          required int? page,
          String? search,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(ResultUserDtoPagedResult,
        () => ResultUserDtoPagedResult.fromJsonFactory);

    return _apiUserSearchUserByProviderGet(
        providerId: providerId, page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param providerId
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/User/SearchUserByProvider')
  Future<chopper.Response<ResultUserDtoPagedResult>>
      _apiUserSearchUserByProviderGet(
          {@Query('providerId') required String? providerId,
          @Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserEditProviderIdPut(
      {required String? id, required ProviderPutDto? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserEditProviderIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/User/EditProvider/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserEditProviderIdPut(
      {@Path('id') required String? id, @Body() required ProviderPutDto? body});

  ///
  ///@param phone
  Future<chopper.Response<AppUserDto>> apiUserByPhonePhoneGet(
      {required String? phone}) {
    generatedMapping.putIfAbsent(AppUserDto, () => AppUserDto.fromJsonFactory);

    return _apiUserByPhonePhoneGet(phone: phone);
  }

  ///
  ///@param phone
  @Get(path: '/api/User/ByPhone/{phone}')
  Future<chopper.Response<AppUserDto>> _apiUserByPhonePhoneGet(
      {@Path('phone') required String? phone});

  ///
  ///@param subordinateUserId
  Future<chopper.Response<List<ProviderProfileDto>>>
      apiUserGetAssignedDoctorsSubordinateUserIdGet(
          {required String? subordinateUserId}) {
    generatedMapping.putIfAbsent(
        ProviderProfileDto, () => ProviderProfileDto.fromJsonFactory);

    return _apiUserGetAssignedDoctorsSubordinateUserIdGet(
        subordinateUserId: subordinateUserId);
  }

  ///
  ///@param subordinateUserId
  @Get(path: '/api/User/GetAssignedDoctors/{subordinateUserId}')
  Future<chopper.Response<List<ProviderProfileDto>>>
      _apiUserGetAssignedDoctorsSubordinateUserIdGet(
          {@Path('subordinateUserId') required String? subordinateUserId});

  ///
  Future<chopper.Response<List<VisitDto>>> apiVisitGet() {
    generatedMapping.putIfAbsent(VisitDto, () => VisitDto.fromJsonFactory);

    return _apiVisitGet();
  }

  ///
  @Get(path: '/api/Visit')
  Future<chopper.Response<List<VisitDto>>> _apiVisitGet();

  ///
  Future<chopper.Response<VisitCreateDto>> apiVisitPost(
      {required VisitDto? body}) {
    generatedMapping.putIfAbsent(
        VisitCreateDto, () => VisitCreateDto.fromJsonFactory);

    return _apiVisitPost(body: body);
  }

  ///
  @Post(path: '/api/Visit')
  Future<chopper.Response<VisitCreateDto>> _apiVisitPost(
      {@Body() required VisitDto? body});

  ///
  ///@param UserId
  ///@param Code
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<VisitDtoPagedResult>> apiVisitSearchGet(
      {required String? userId,
      String? code,
      String? dateVisit,
      required int? page,
      String? search,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        VisitDtoPagedResult, () => VisitDtoPagedResult.fromJsonFactory);

    return _apiVisitSearchGet(
        userId: userId,
        code: code,
        dateVisit: dateVisit,
        page: page,
        search: search,
        pageSize: pageSize);
  }

  ///
  ///@param UserId
  ///@param Code
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Visit/Search')
  Future<chopper.Response<VisitDtoPagedResult>> _apiVisitSearchGet(
      {@Query('UserId') required String? userId,
      @Query('Code') String? code,
      @Query('DateVisit') String? dateVisit,
      @Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param userId
  Future<chopper.Response<VisitNextPendingDto>> apiVisitNextPendingUserIdGet(
      {required String? userId}) {
    generatedMapping.putIfAbsent(
        VisitNextPendingDto, () => VisitNextPendingDto.fromJsonFactory);

    return _apiVisitNextPendingUserIdGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/api/Visit/NextPending/{userId}')
  Future<chopper.Response<VisitNextPendingDto>> _apiVisitNextPendingUserIdGet(
      {@Path('userId') required String? userId});

  ///
  ///@param id
  Future<chopper.Response<VisitDto>> apiVisitIdGet({required String? id}) {
    generatedMapping.putIfAbsent(VisitDto, () => VisitDto.fromJsonFactory);

    return _apiVisitIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Visit/{id}')
  Future<chopper.Response<VisitDto>> _apiVisitIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVisitIdPut(
      {required String? id, required VisitDto? body}) {
    return _apiVisitIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Visit/{id}')
  Future<chopper.Response<bool>> _apiVisitIdPut(
      {@Path('id') required String? id, @Body() required VisitDto? body});

  ///
  ///@param userId
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<HistoricDtoPagedResult>> apiVisitHistoricGet(
      {required String? userId,
      String? dateVisit,
      required int? page,
      String? search,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        HistoricDtoPagedResult, () => HistoricDtoPagedResult.fromJsonFactory);

    return _apiVisitHistoricGet(
        userId: userId,
        dateVisit: dateVisit,
        page: page,
        search: search,
        pageSize: pageSize);
  }

  ///
  ///@param userId
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Visit/Historic')
  Future<chopper.Response<HistoricDtoPagedResult>> _apiVisitHistoricGet(
      {@Query('userId') required String? userId,
      @Query('DateVisit') String? dateVisit,
      @Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param visitId
  Future<chopper.Response<VisitDetailsDto>> apiVisitDetailVisitIdGet(
      {required String? visitId}) {
    generatedMapping.putIfAbsent(
        VisitDetailsDto, () => VisitDetailsDto.fromJsonFactory);

    return _apiVisitDetailVisitIdGet(visitId: visitId);
  }

  ///
  ///@param visitId
  @Get(path: '/api/Visit/Detail/{visitId}')
  Future<chopper.Response<VisitDetailsDto>> _apiVisitDetailVisitIdGet(
      {@Path('visitId') required String? visitId});

  ///
  ///@param userId
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<HistoricResidentDtoPagedResult>>
      apiVisitHistoricResidentGet(
          {required String? userId,
          String? dateVisit,
          required int? page,
          String? search,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(HistoricResidentDtoPagedResult,
        () => HistoricResidentDtoPagedResult.fromJsonFactory);

    return _apiVisitHistoricResidentGet(
        userId: userId,
        dateVisit: dateVisit,
        page: page,
        search: search,
        pageSize: pageSize);
  }

  ///
  ///@param userId
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Visit/HistoricResident')
  Future<chopper.Response<HistoricResidentDtoPagedResult>>
      _apiVisitHistoricResidentGet(
          {@Query('userId') required String? userId,
          @Query('DateVisit') String? dateVisit,
          @Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param residentId
  Future<chopper.Response<VisitNextPendingResidentDto>>
      apiVisitNextPendingResidentResidentIdGet({required String? residentId}) {
    generatedMapping.putIfAbsent(VisitNextPendingResidentDto,
        () => VisitNextPendingResidentDto.fromJsonFactory);

    return _apiVisitNextPendingResidentResidentIdGet(residentId: residentId);
  }

  ///
  ///@param residentId
  @Get(path: '/api/Visit/NextPendingResident/{residentId}')
  Future<chopper.Response<VisitNextPendingResidentDto>>
      _apiVisitNextPendingResidentResidentIdGet(
          {@Path('residentId') required String? residentId});

  ///Obtiene el listado de visitas filtradas por fecha
  ///@param residentId
  ///@param date
  Future<chopper.Response<List<VisitNextPendingResidentDto>>>
      apiVisitResidentResidentIdVistDateDateGet(
          {required String? residentId, required String? date}) {
    generatedMapping.putIfAbsent(VisitNextPendingResidentDto,
        () => VisitNextPendingResidentDto.fromJsonFactory);

    return _apiVisitResidentResidentIdVistDateDateGet(
        residentId: residentId, date: date);
  }

  ///Obtiene el listado de visitas filtradas por fecha
  ///@param residentId
  ///@param date
  @Get(path: '/api/Visit/resident/{residentId}/vistDate/{date}')
  Future<chopper.Response<List<VisitNextPendingResidentDto>>>
      _apiVisitResidentResidentIdVistDateDateGet(
          {@Path('residentId') required String? residentId,
          @Path('date') required String? date});

  ///
  ///@param UserId
  ///@param Code
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<VisitNextPendingResidentDtoPagedResult>>
      apiVisitLatestGet(
          {required String? userId,
          String? code,
          String? dateVisit,
          required int? page,
          String? search,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(VisitNextPendingResidentDtoPagedResult,
        () => VisitNextPendingResidentDtoPagedResult.fromJsonFactory);

    return _apiVisitLatestGet(
        userId: userId,
        code: code,
        dateVisit: dateVisit,
        page: page,
        search: search,
        pageSize: pageSize);
  }

  ///
  ///@param UserId
  ///@param Code
  ///@param DateVisit
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Visit/Latest')
  Future<chopper.Response<VisitNextPendingResidentDtoPagedResult>>
      _apiVisitLatestGet(
          {@Query('UserId') required String? userId,
          @Query('Code') String? code,
          @Query('DateVisit') String? dateVisit,
          @Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param visitId
  Future<chopper.Response<bool>> apiVisitCompleteVisitIdPut(
      {required String? visitId}) {
    return _apiVisitCompleteVisitIdPut(visitId: visitId);
  }

  ///
  ///@param visitId
  @Put(path: '/api/Visit/Complete/{visitId}', optionalBody: true)
  Future<chopper.Response<bool>> _apiVisitCompleteVisitIdPut(
      {@Path('visitId') required String? visitId});

  ///
  ///@param visitId
  Future<chopper.Response<ResponseDto>> apiVisitUploadQRAppVisitIdPost(
      {required String? visitId, required List<int> partFile}) {
    generatedMapping.putIfAbsent(
        ResponseDto, () => ResponseDto.fromJsonFactory);

    return _apiVisitUploadQRAppVisitIdPost(
        visitId: visitId, partFile: partFile);
  }

  ///
  ///@param visitId
  @Post(path: '/api/Visit/UploadQRApp/{visitId}')
  @Multipart()
  Future<chopper.Response<ResponseDto>> _apiVisitUploadQRAppVisitIdPost(
      {@Path('visitId') required String? visitId,
      @PartFile() required List<int> partFile});

  ///
  Future<chopper.Response<ResponseDto>> apiVisitUploadQRPost(
      {required List<int> partFile}) {
    generatedMapping.putIfAbsent(
        ResponseDto, () => ResponseDto.fromJsonFactory);

    return _apiVisitUploadQRPost(partFile: partFile);
  }

  ///
  @Post(path: '/api/Visit/UploadQR')
  @Multipart()
  Future<chopper.Response<ResponseDto>> _apiVisitUploadQRPost(
      {@PartFile() required List<int> partFile});

  ///
  Future<chopper.Response<List<VisitStatusDto>>> apiVisitStatusGet() {
    generatedMapping.putIfAbsent(
        VisitStatusDto, () => VisitStatusDto.fromJsonFactory);

    return _apiVisitStatusGet();
  }

  ///
  @Get(path: '/api/VisitStatus')
  Future<chopper.Response<List<VisitStatusDto>>> _apiVisitStatusGet();

  ///
  Future<chopper.Response<String>> apiVisitStatusPost(
      {required VisitStatusDto? body}) {
    return _apiVisitStatusPost(body: body);
  }

  ///
  @Post(path: '/api/VisitStatus')
  Future<chopper.Response<String>> _apiVisitStatusPost(
      {@Body() required VisitStatusDto? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<VisitStatusDtoPagedResult>> apiVisitStatusSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(VisitStatusDtoPagedResult,
        () => VisitStatusDtoPagedResult.fromJsonFactory);

    return _apiVisitStatusSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/VisitStatus/Search')
  Future<chopper.Response<VisitStatusDtoPagedResult>> _apiVisitStatusSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<VisitStatusDto>> apiVisitStatusIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        VisitStatusDto, () => VisitStatusDto.fromJsonFactory);

    return _apiVisitStatusIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/VisitStatus/{id}')
  Future<chopper.Response<VisitStatusDto>> _apiVisitStatusIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVisitStatusIdPut(
      {required String? id, required VisitStatusDto? body}) {
    return _apiVisitStatusIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/VisitStatus/{id}')
  Future<chopper.Response<bool>> _apiVisitStatusIdPut(
      {@Path('id') required String? id, @Body() required VisitStatusDto? body});
}

@JsonSerializable(explicitToJson: true)
class AcademicStudiesDto {
  AcademicStudiesDto({
    this.academicStudiesId,
    this.userId,
    this.degree,
    this.school,
  });

  factory AcademicStudiesDto.fromJson(Map<String, dynamic> json) =>
      _$AcademicStudiesDtoFromJson(json);

  @JsonKey(name: 'academicStudiesId')
  final String? academicStudiesId;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'degree')
  final String? degree;
  @JsonKey(name: 'school')
  final String? school;
  static const fromJsonFactory = _$AcademicStudiesDtoFromJson;
  static const toJsonFactory = _$AcademicStudiesDtoToJson;
  Map<String, dynamic> toJson() => _$AcademicStudiesDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcademicStudiesDto &&
            (identical(other.academicStudiesId, academicStudiesId) ||
                const DeepCollectionEquality()
                    .equals(other.academicStudiesId, academicStudiesId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.degree, degree) ||
                const DeepCollectionEquality().equals(other.degree, degree)) &&
            (identical(other.school, school) ||
                const DeepCollectionEquality().equals(other.school, school)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(academicStudiesId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(degree) ^
      const DeepCollectionEquality().hash(school) ^
      runtimeType.hashCode;
}

extension $AcademicStudiesDtoExtension on AcademicStudiesDto {
  AcademicStudiesDto copyWith(
      {String? academicStudiesId,
      String? userId,
      String? degree,
      String? school}) {
    return AcademicStudiesDto(
        academicStudiesId: academicStudiesId ?? this.academicStudiesId,
        userId: userId ?? this.userId,
        degree: degree ?? this.degree,
        school: school ?? this.school);
  }
}

@JsonSerializable(explicitToJson: true)
class AcademicStudiesDtoPagedResult {
  AcademicStudiesDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory AcademicStudiesDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$AcademicStudiesDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <AcademicStudiesDto>[])
  final List<AcademicStudiesDto>? items;
  static const fromJsonFactory = _$AcademicStudiesDtoPagedResultFromJson;
  static const toJsonFactory = _$AcademicStudiesDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$AcademicStudiesDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcademicStudiesDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $AcademicStudiesDtoPagedResultExtension
    on AcademicStudiesDtoPagedResult {
  AcademicStudiesDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<AcademicStudiesDto>? items}) {
    return AcademicStudiesDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class AppUserDto {
  AppUserDto({
    this.id,
    this.email,
    this.name,
    this.image,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
    this.gender,
    this.url,
    this.countryCode,
    this.phone,
    this.country,
    this.city,
    this.address,
    this.rating,
    this.birthDate,
    this.active,
    this.costPerAppointment,
    this.department,
  });

  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  @JsonKey(name: 'department', defaultValue: <SelectDto>[])
  final List<SelectDto>? department;
  static const fromJsonFactory = _$AppUserDtoFromJson;
  static const toJsonFactory = _$AppUserDtoToJson;
  Map<String, dynamic> toJson() => _$AppUserDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      const DeepCollectionEquality().hash(department) ^
      runtimeType.hashCode;
}

extension $AppUserDtoExtension on AppUserDto {
  AppUserDto copyWith(
      {String? id,
      String? email,
      String? name,
      String? image,
      String? firstName,
      String? lastName,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? url,
      String? countryCode,
      String? phone,
      String? country,
      String? city,
      String? address,
      double? rating,
      DateTime? birthDate,
      bool? active,
      double? costPerAppointment,
      List<SelectDto>? department}) {
    return AppUserDto(
        id: id ?? this.id,
        email: email ?? this.email,
        name: name ?? this.name,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        rating: rating ?? this.rating,
        birthDate: birthDate ?? this.birthDate,
        active: active ?? this.active,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment,
        department: department ?? this.department);
  }
}

@JsonSerializable(explicitToJson: true)
class AppUserDtoPagedResult {
  AppUserDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory AppUserDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <AppUserDto>[])
  final List<AppUserDto>? items;
  static const fromJsonFactory = _$AppUserDtoPagedResultFromJson;
  static const toJsonFactory = _$AppUserDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$AppUserDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUserDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $AppUserDtoPagedResultExtension on AppUserDtoPagedResult {
  AppUserDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<AppUserDto>? items}) {
    return AppUserDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class AuthResponseDto {
  AuthResponseDto({
    this.userId,
    this.token,
    this.refreshToken,
    this.name,
    this.image,
    this.firstName,
    this.lastName,
    this.url,
    this.phone,
    this.active,
    this.roles,
  });

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'roles', defaultValue: <String>[])
  final List<String>? roles;
  static const fromJsonFactory = _$AuthResponseDtoFromJson;
  static const toJsonFactory = _$AuthResponseDtoToJson;
  Map<String, dynamic> toJson() => _$AuthResponseDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthResponseDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(roles) ^
      runtimeType.hashCode;
}

extension $AuthResponseDtoExtension on AuthResponseDto {
  AuthResponseDto copyWith(
      {String? userId,
      String? token,
      String? refreshToken,
      String? name,
      String? image,
      String? firstName,
      String? lastName,
      String? url,
      String? phone,
      bool? active,
      List<String>? roles}) {
    return AuthResponseDto(
        userId: userId ?? this.userId,
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken,
        name: name ?? this.name,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        phone: phone ?? this.phone,
        active: active ?? this.active,
        roles: roles ?? this.roles);
  }
}

@JsonSerializable(explicitToJson: true)
class BusyDatesDto {
  BusyDatesDto({
    this.date,
    this.startHour,
    this.endHour,
  });

  factory BusyDatesDto.fromJson(Map<String, dynamic> json) =>
      _$BusyDatesDtoFromJson(json);

  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  static const fromJsonFactory = _$BusyDatesDtoFromJson;
  static const toJsonFactory = _$BusyDatesDtoToJson;
  Map<String, dynamic> toJson() => _$BusyDatesDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusyDatesDto &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality().equals(other.endHour, endHour)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      runtimeType.hashCode;
}

extension $BusyDatesDtoExtension on BusyDatesDto {
  BusyDatesDto copyWith({String? date, String? startHour, String? endHour}) {
    return BusyDatesDto(
        date: date ?? this.date,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour);
  }
}

@JsonSerializable(explicitToJson: true)
class ColorDto {
  ColorDto({
    this.colorId,
    required this.projectId,
    this.accentPrirmario,
    this.accentSecondary,
    this.backgroundColors,
    this.description,
  });

  factory ColorDto.fromJson(Map<String, dynamic> json) =>
      _$ColorDtoFromJson(json);

  @JsonKey(name: 'colorId')
  final String? colorId;
  @JsonKey(name: 'projectId')
  final String projectId;
  @JsonKey(name: 'accentPrirmario')
  final String? accentPrirmario;
  @JsonKey(name: 'accentSecondary')
  final String? accentSecondary;
  @JsonKey(name: 'backgroundColors')
  final String? backgroundColors;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$ColorDtoFromJson;
  static const toJsonFactory = _$ColorDtoToJson;
  Map<String, dynamic> toJson() => _$ColorDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColorDto &&
            (identical(other.colorId, colorId) ||
                const DeepCollectionEquality()
                    .equals(other.colorId, colorId)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.accentPrirmario, accentPrirmario) ||
                const DeepCollectionEquality()
                    .equals(other.accentPrirmario, accentPrirmario)) &&
            (identical(other.accentSecondary, accentSecondary) ||
                const DeepCollectionEquality()
                    .equals(other.accentSecondary, accentSecondary)) &&
            (identical(other.backgroundColors, backgroundColors) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColors, backgroundColors)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(colorId) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(accentPrirmario) ^
      const DeepCollectionEquality().hash(accentSecondary) ^
      const DeepCollectionEquality().hash(backgroundColors) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ColorDtoExtension on ColorDto {
  ColorDto copyWith(
      {String? colorId,
      String? projectId,
      String? accentPrirmario,
      String? accentSecondary,
      String? backgroundColors,
      String? description}) {
    return ColorDto(
        colorId: colorId ?? this.colorId,
        projectId: projectId ?? this.projectId,
        accentPrirmario: accentPrirmario ?? this.accentPrirmario,
        accentSecondary: accentSecondary ?? this.accentSecondary,
        backgroundColors: backgroundColors ?? this.backgroundColors,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class ColorDtoPagedResult {
  ColorDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ColorDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ColorDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ColorDto>[])
  final List<ColorDto>? items;
  static const fromJsonFactory = _$ColorDtoPagedResultFromJson;
  static const toJsonFactory = _$ColorDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$ColorDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColorDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ColorDtoPagedResultExtension on ColorDtoPagedResult {
  ColorDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ColorDto>? items}) {
    return ColorDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ContactDto {
  ContactDto({
    this.contactId,
    required this.projectId,
    this.code,
    this.description,
    this.name,
    this.lastName,
    this.phone,
    this.email,
    this.address,
    this.cp,
    this.state,
    this.city,
    this.rfc,
  });

  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);

  @JsonKey(name: 'contactId')
  final String? contactId;
  @JsonKey(name: 'projectId')
  final String projectId;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'cp')
  final String? cp;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'rfc')
  final String? rfc;
  static const fromJsonFactory = _$ContactDtoFromJson;
  static const toJsonFactory = _$ContactDtoToJson;
  Map<String, dynamic> toJson() => _$ContactDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactDto &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.cp, cp) ||
                const DeepCollectionEquality().equals(other.cp, cp)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.rfc, rfc) ||
                const DeepCollectionEquality().equals(other.rfc, rfc)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contactId) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(cp) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(rfc) ^
      runtimeType.hashCode;
}

extension $ContactDtoExtension on ContactDto {
  ContactDto copyWith(
      {String? contactId,
      String? projectId,
      String? code,
      String? description,
      String? name,
      String? lastName,
      String? phone,
      String? email,
      String? address,
      String? cp,
      String? state,
      String? city,
      String? rfc}) {
    return ContactDto(
        contactId: contactId ?? this.contactId,
        projectId: projectId ?? this.projectId,
        code: code ?? this.code,
        description: description ?? this.description,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        address: address ?? this.address,
        cp: cp ?? this.cp,
        state: state ?? this.state,
        city: city ?? this.city,
        rfc: rfc ?? this.rfc);
  }
}

@JsonSerializable(explicitToJson: true)
class ContactDtoPagedResult {
  ContactDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ContactDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ContactDto>[])
  final List<ContactDto>? items;
  static const fromJsonFactory = _$ContactDtoPagedResultFromJson;
  static const toJsonFactory = _$ContactDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$ContactDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ContactDtoPagedResultExtension on ContactDtoPagedResult {
  ContactDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ContactDto>? items}) {
    return ContactDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class DepartmentDto {
  DepartmentDto({
    this.departmentId,
    this.sectionId,
    this.imageFile,
    this.name,
    this.image,
    this.code,
    this.description,
    this.active,
  });

  factory DepartmentDto.fromJson(Map<String, dynamic> json) =>
      _$DepartmentDtoFromJson(json);

  @JsonKey(name: 'departmentId')
  final String? departmentId;
  @JsonKey(name: 'sectionId')
  final String? sectionId;
  @JsonKey(name: 'imageFile')
  final String? imageFile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$DepartmentDtoFromJson;
  static const toJsonFactory = _$DepartmentDtoToJson;
  Map<String, dynamic> toJson() => _$DepartmentDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DepartmentDto &&
            (identical(other.departmentId, departmentId) ||
                const DeepCollectionEquality()
                    .equals(other.departmentId, departmentId)) &&
            (identical(other.sectionId, sectionId) ||
                const DeepCollectionEquality()
                    .equals(other.sectionId, sectionId)) &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(departmentId) ^
      const DeepCollectionEquality().hash(sectionId) ^
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $DepartmentDtoExtension on DepartmentDto {
  DepartmentDto copyWith(
      {String? departmentId,
      String? sectionId,
      String? imageFile,
      String? name,
      String? image,
      String? code,
      String? description,
      bool? active}) {
    return DepartmentDto(
        departmentId: departmentId ?? this.departmentId,
        sectionId: sectionId ?? this.sectionId,
        imageFile: imageFile ?? this.imageFile,
        name: name ?? this.name,
        image: image ?? this.image,
        code: code ?? this.code,
        description: description ?? this.description,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class DepartmentDtoPagedResult {
  DepartmentDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory DepartmentDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$DepartmentDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <DepartmentDto>[])
  final List<DepartmentDto>? items;
  static const fromJsonFactory = _$DepartmentDtoPagedResultFromJson;
  static const toJsonFactory = _$DepartmentDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$DepartmentDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DepartmentDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $DepartmentDtoPagedResultExtension on DepartmentDtoPagedResult {
  DepartmentDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<DepartmentDto>? items}) {
    return DepartmentDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceDto {
  DeviceDto({
    this.deviceId,
    this.tokenDevice,
    this.deviceName,
    this.subcribed,
    this.active,
    this.platForm,
    this.identifier,
  });

  factory DeviceDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceDtoFromJson(json);

  @JsonKey(name: 'deviceId')
  final String? deviceId;
  @JsonKey(name: 'tokenDevice')
  final String? tokenDevice;
  @JsonKey(name: 'deviceName')
  final String? deviceName;
  @JsonKey(name: 'subcribed')
  final String? subcribed;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(
      name: 'platForm',
      toJson: platFormEnumToJson,
      fromJson: platFormEnumFromJson)
  final enums.PlatFormEnum? platForm;
  @JsonKey(name: 'identifier')
  final String? identifier;
  static const fromJsonFactory = _$DeviceDtoFromJson;
  static const toJsonFactory = _$DeviceDtoToJson;
  Map<String, dynamic> toJson() => _$DeviceDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceDto &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.tokenDevice, tokenDevice) ||
                const DeepCollectionEquality()
                    .equals(other.tokenDevice, tokenDevice)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.subcribed, subcribed) ||
                const DeepCollectionEquality()
                    .equals(other.subcribed, subcribed)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.platForm, platForm) ||
                const DeepCollectionEquality()
                    .equals(other.platForm, platForm)) &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(tokenDevice) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(subcribed) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(platForm) ^
      const DeepCollectionEquality().hash(identifier) ^
      runtimeType.hashCode;
}

extension $DeviceDtoExtension on DeviceDto {
  DeviceDto copyWith(
      {String? deviceId,
      String? tokenDevice,
      String? deviceName,
      String? subcribed,
      bool? active,
      enums.PlatFormEnum? platForm,
      String? identifier}) {
    return DeviceDto(
        deviceId: deviceId ?? this.deviceId,
        tokenDevice: tokenDevice ?? this.tokenDevice,
        deviceName: deviceName ?? this.deviceName,
        subcribed: subcribed ?? this.subcribed,
        active: active ?? this.active,
        platForm: platForm ?? this.platForm,
        identifier: identifier ?? this.identifier);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceDtoPagedResult {
  DeviceDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory DeviceDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$DeviceDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <DeviceDto>[])
  final List<DeviceDto>? items;
  static const fromJsonFactory = _$DeviceDtoPagedResultFromJson;
  static const toJsonFactory = _$DeviceDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$DeviceDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $DeviceDtoPagedResultExtension on DeviceDtoPagedResult {
  DeviceDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<DeviceDto>? items}) {
    return DeviceDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class EditUserResponse {
  EditUserResponse({
    this.saved,
    this.image,
  });

  factory EditUserResponse.fromJson(Map<String, dynamic> json) =>
      _$EditUserResponseFromJson(json);

  @JsonKey(name: 'saved')
  final bool? saved;
  @JsonKey(name: 'image')
  final String? image;
  static const fromJsonFactory = _$EditUserResponseFromJson;
  static const toJsonFactory = _$EditUserResponseToJson;
  Map<String, dynamic> toJson() => _$EditUserResponseToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditUserResponse &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(image) ^
      runtimeType.hashCode;
}

extension $EditUserResponseExtension on EditUserResponse {
  EditUserResponse copyWith({bool? saved, String? image}) {
    return EditUserResponse(
        saved: saved ?? this.saved, image: image ?? this.image);
  }
}

@JsonSerializable(explicitToJson: true)
class HistoricDto {
  HistoricDto({
    this.visitId,
    this.localId,
    this.localName,
    this.userId,
    this.userName,
    this.userFirstName,
    this.userLastName,
    this.userTitleAbbreviation,
    this.doctorImage,
    this.doctorId,
    this.doctorName,
    this.doctorFirstName,
    this.doctorLastName,
    this.doctorTitleAbbreviation,
    this.rating,
    this.reason,
    this.comments,
    this.visitDate,
    this.startHour,
    this.endHour,
    this.visitStatusId,
    this.visitStatus,
    this.visitStatusCode,
  });

  factory HistoricDto.fromJson(Map<String, dynamic> json) =>
      _$HistoricDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'localId')
  final String? localId;
  @JsonKey(name: 'localName')
  final String? localName;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'userFirstName')
  final String? userFirstName;
  @JsonKey(name: 'userLastName')
  final String? userLastName;
  @JsonKey(name: 'userTitleAbbreviation')
  final String? userTitleAbbreviation;
  @JsonKey(name: 'doctorImage')
  final String? doctorImage;
  @JsonKey(name: 'doctorId')
  final String? doctorId;
  @JsonKey(name: 'doctorName')
  final String? doctorName;
  @JsonKey(name: 'doctorFirstName')
  final String? doctorFirstName;
  @JsonKey(name: 'doctorLastName')
  final String? doctorLastName;
  @JsonKey(name: 'doctorTitleAbbreviation')
  final String? doctorTitleAbbreviation;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  @JsonKey(name: 'visitStatusId')
  final String? visitStatusId;
  @JsonKey(name: 'visitStatus')
  final String? visitStatus;
  @JsonKey(name: 'visitStatusCode')
  final String? visitStatusCode;
  static const fromJsonFactory = _$HistoricDtoFromJson;
  static const toJsonFactory = _$HistoricDtoToJson;
  Map<String, dynamic> toJson() => _$HistoricDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoricDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality()
                    .equals(other.localName, localName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userFirstName, userFirstName) ||
                const DeepCollectionEquality()
                    .equals(other.userFirstName, userFirstName)) &&
            (identical(other.userLastName, userLastName) ||
                const DeepCollectionEquality()
                    .equals(other.userLastName, userLastName)) &&
            (identical(other.userTitleAbbreviation, userTitleAbbreviation) ||
                const DeepCollectionEquality().equals(
                    other.userTitleAbbreviation, userTitleAbbreviation)) &&
            (identical(other.doctorImage, doctorImage) ||
                const DeepCollectionEquality()
                    .equals(other.doctorImage, doctorImage)) &&
            (identical(other.doctorId, doctorId) ||
                const DeepCollectionEquality()
                    .equals(other.doctorId, doctorId)) &&
            (identical(other.doctorName, doctorName) ||
                const DeepCollectionEquality()
                    .equals(other.doctorName, doctorName)) &&
            (identical(other.doctorFirstName, doctorFirstName) ||
                const DeepCollectionEquality()
                    .equals(other.doctorFirstName, doctorFirstName)) &&
            (identical(other.doctorLastName, doctorLastName) ||
                const DeepCollectionEquality()
                    .equals(other.doctorLastName, doctorLastName)) &&
            (identical(other.doctorTitleAbbreviation, doctorTitleAbbreviation) ||
                const DeepCollectionEquality().equals(
                    other.doctorTitleAbbreviation, doctorTitleAbbreviation)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality()
                    .equals(other.endHour, endHour)) &&
            (identical(other.visitStatusId, visitStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatusId, visitStatusId)) &&
            (identical(other.visitStatus, visitStatus) ||
                const DeepCollectionEquality().equals(other.visitStatus, visitStatus)) &&
            (identical(other.visitStatusCode, visitStatusCode) || const DeepCollectionEquality().equals(other.visitStatusCode, visitStatusCode)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(localName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userFirstName) ^
      const DeepCollectionEquality().hash(userLastName) ^
      const DeepCollectionEquality().hash(userTitleAbbreviation) ^
      const DeepCollectionEquality().hash(doctorImage) ^
      const DeepCollectionEquality().hash(doctorId) ^
      const DeepCollectionEquality().hash(doctorName) ^
      const DeepCollectionEquality().hash(doctorFirstName) ^
      const DeepCollectionEquality().hash(doctorLastName) ^
      const DeepCollectionEquality().hash(doctorTitleAbbreviation) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      const DeepCollectionEquality().hash(visitStatusId) ^
      const DeepCollectionEquality().hash(visitStatus) ^
      const DeepCollectionEquality().hash(visitStatusCode) ^
      runtimeType.hashCode;
}

extension $HistoricDtoExtension on HistoricDto {
  HistoricDto copyWith(
      {String? visitId,
      String? localId,
      String? localName,
      String? userId,
      String? userName,
      String? userFirstName,
      String? userLastName,
      String? userTitleAbbreviation,
      String? doctorImage,
      String? doctorId,
      String? doctorName,
      String? doctorFirstName,
      String? doctorLastName,
      String? doctorTitleAbbreviation,
      double? rating,
      String? reason,
      String? comments,
      DateTime? visitDate,
      String? startHour,
      String? endHour,
      String? visitStatusId,
      String? visitStatus,
      String? visitStatusCode}) {
    return HistoricDto(
        visitId: visitId ?? this.visitId,
        localId: localId ?? this.localId,
        localName: localName ?? this.localName,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userFirstName: userFirstName ?? this.userFirstName,
        userLastName: userLastName ?? this.userLastName,
        userTitleAbbreviation:
            userTitleAbbreviation ?? this.userTitleAbbreviation,
        doctorImage: doctorImage ?? this.doctorImage,
        doctorId: doctorId ?? this.doctorId,
        doctorName: doctorName ?? this.doctorName,
        doctorFirstName: doctorFirstName ?? this.doctorFirstName,
        doctorLastName: doctorLastName ?? this.doctorLastName,
        doctorTitleAbbreviation:
            doctorTitleAbbreviation ?? this.doctorTitleAbbreviation,
        rating: rating ?? this.rating,
        reason: reason ?? this.reason,
        comments: comments ?? this.comments,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour,
        visitStatusId: visitStatusId ?? this.visitStatusId,
        visitStatus: visitStatus ?? this.visitStatus,
        visitStatusCode: visitStatusCode ?? this.visitStatusCode);
  }
}

@JsonSerializable(explicitToJson: true)
class HistoricDtoPagedResult {
  HistoricDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory HistoricDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$HistoricDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <HistoricDto>[])
  final List<HistoricDto>? items;
  static const fromJsonFactory = _$HistoricDtoPagedResultFromJson;
  static const toJsonFactory = _$HistoricDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$HistoricDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoricDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $HistoricDtoPagedResultExtension on HistoricDtoPagedResult {
  HistoricDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<HistoricDto>? items}) {
    return HistoricDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class HistoricResidentDto {
  HistoricResidentDto({
    this.visitId,
    this.localId,
    this.localName,
    this.userId,
    this.userName,
    this.userImage,
    this.userFirstName,
    this.userLastName,
    this.userTitleAbbreviation,
    this.phone,
    this.email,
    this.rating,
    this.reason,
    this.comments,
    this.visitDate,
    this.startHour,
    this.endHour,
    this.visitStatusId,
    this.visitStatus,
    this.visitStatusCode,
  });

  factory HistoricResidentDto.fromJson(Map<String, dynamic> json) =>
      _$HistoricResidentDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'localId')
  final String? localId;
  @JsonKey(name: 'localName')
  final String? localName;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'userImage')
  final String? userImage;
  @JsonKey(name: 'userFirstName')
  final String? userFirstName;
  @JsonKey(name: 'userLastName')
  final String? userLastName;
  @JsonKey(name: 'userTitleAbbreviation')
  final String? userTitleAbbreviation;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  @JsonKey(name: 'visitStatusId')
  final String? visitStatusId;
  @JsonKey(name: 'visitStatus')
  final String? visitStatus;
  @JsonKey(name: 'visitStatusCode')
  final String? visitStatusCode;
  static const fromJsonFactory = _$HistoricResidentDtoFromJson;
  static const toJsonFactory = _$HistoricResidentDtoToJson;
  Map<String, dynamic> toJson() => _$HistoricResidentDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoricResidentDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality()
                    .equals(other.localName, localName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userImage, userImage) ||
                const DeepCollectionEquality()
                    .equals(other.userImage, userImage)) &&
            (identical(other.userFirstName, userFirstName) ||
                const DeepCollectionEquality()
                    .equals(other.userFirstName, userFirstName)) &&
            (identical(other.userLastName, userLastName) ||
                const DeepCollectionEquality()
                    .equals(other.userLastName, userLastName)) &&
            (identical(other.userTitleAbbreviation, userTitleAbbreviation) ||
                const DeepCollectionEquality().equals(
                    other.userTitleAbbreviation, userTitleAbbreviation)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality()
                    .equals(other.endHour, endHour)) &&
            (identical(other.visitStatusId, visitStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatusId, visitStatusId)) &&
            (identical(other.visitStatus, visitStatus) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatus, visitStatus)) &&
            (identical(other.visitStatusCode, visitStatusCode) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatusCode, visitStatusCode)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(localName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userImage) ^
      const DeepCollectionEquality().hash(userFirstName) ^
      const DeepCollectionEquality().hash(userLastName) ^
      const DeepCollectionEquality().hash(userTitleAbbreviation) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      const DeepCollectionEquality().hash(visitStatusId) ^
      const DeepCollectionEquality().hash(visitStatus) ^
      const DeepCollectionEquality().hash(visitStatusCode) ^
      runtimeType.hashCode;
}

extension $HistoricResidentDtoExtension on HistoricResidentDto {
  HistoricResidentDto copyWith(
      {String? visitId,
      String? localId,
      String? localName,
      String? userId,
      String? userName,
      String? userImage,
      String? userFirstName,
      String? userLastName,
      String? userTitleAbbreviation,
      String? phone,
      String? email,
      double? rating,
      String? reason,
      String? comments,
      DateTime? visitDate,
      String? startHour,
      String? endHour,
      String? visitStatusId,
      String? visitStatus,
      String? visitStatusCode}) {
    return HistoricResidentDto(
        visitId: visitId ?? this.visitId,
        localId: localId ?? this.localId,
        localName: localName ?? this.localName,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userImage: userImage ?? this.userImage,
        userFirstName: userFirstName ?? this.userFirstName,
        userLastName: userLastName ?? this.userLastName,
        userTitleAbbreviation:
            userTitleAbbreviation ?? this.userTitleAbbreviation,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        rating: rating ?? this.rating,
        reason: reason ?? this.reason,
        comments: comments ?? this.comments,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour,
        visitStatusId: visitStatusId ?? this.visitStatusId,
        visitStatus: visitStatus ?? this.visitStatus,
        visitStatusCode: visitStatusCode ?? this.visitStatusCode);
  }
}

@JsonSerializable(explicitToJson: true)
class HistoricResidentDtoPagedResult {
  HistoricResidentDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory HistoricResidentDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$HistoricResidentDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <HistoricResidentDto>[])
  final List<HistoricResidentDto>? items;
  static const fromJsonFactory = _$HistoricResidentDtoPagedResultFromJson;
  static const toJsonFactory = _$HistoricResidentDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$HistoricResidentDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoricResidentDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $HistoricResidentDtoPagedResultExtension
    on HistoricResidentDtoPagedResult {
  HistoricResidentDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<HistoricResidentDto>? items}) {
    return HistoricResidentDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class KioskoResponseDto {
  KioskoResponseDto({
    this.visitId,
    this.visitDate,
    this.startHour,
    this.endHour,
    this.reason,
    this.comments,
    this.user,
    this.resident,
  });

  factory KioskoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$KioskoResponseDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'user')
  final UserAttributesDto? user;
  @JsonKey(name: 'resident')
  final UserAttributesDto? resident;
  static const fromJsonFactory = _$KioskoResponseDtoFromJson;
  static const toJsonFactory = _$KioskoResponseDtoToJson;
  Map<String, dynamic> toJson() => _$KioskoResponseDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is KioskoResponseDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality()
                    .equals(other.endHour, endHour)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.resident, resident) ||
                const DeepCollectionEquality()
                    .equals(other.resident, resident)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(resident) ^
      runtimeType.hashCode;
}

extension $KioskoResponseDtoExtension on KioskoResponseDto {
  KioskoResponseDto copyWith(
      {String? visitId,
      DateTime? visitDate,
      String? startHour,
      String? endHour,
      String? reason,
      String? comments,
      UserAttributesDto? user,
      UserAttributesDto? resident}) {
    return KioskoResponseDto(
        visitId: visitId ?? this.visitId,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour,
        reason: reason ?? this.reason,
        comments: comments ?? this.comments,
        user: user ?? this.user,
        resident: resident ?? this.resident);
  }
}

@JsonSerializable(explicitToJson: true)
class KioskoResponseDtoPagedResult {
  KioskoResponseDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory KioskoResponseDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$KioskoResponseDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <KioskoResponseDto>[])
  final List<KioskoResponseDto>? items;
  static const fromJsonFactory = _$KioskoResponseDtoPagedResultFromJson;
  static const toJsonFactory = _$KioskoResponseDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$KioskoResponseDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is KioskoResponseDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $KioskoResponseDtoPagedResultExtension
    on KioskoResponseDtoPagedResult {
  KioskoResponseDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<KioskoResponseDto>? items}) {
    return KioskoResponseDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class LevelDto {
  LevelDto({
    this.levelId,
    required this.projectId,
    this.contactId,
    this.name,
    this.code,
    this.description,
  });

  factory LevelDto.fromJson(Map<String, dynamic> json) =>
      _$LevelDtoFromJson(json);

  @JsonKey(name: 'levelId')
  final String? levelId;
  @JsonKey(name: 'projectId')
  final String projectId;
  @JsonKey(name: 'contactId')
  final String? contactId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$LevelDtoFromJson;
  static const toJsonFactory = _$LevelDtoToJson;
  Map<String, dynamic> toJson() => _$LevelDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LevelDto &&
            (identical(other.levelId, levelId) ||
                const DeepCollectionEquality()
                    .equals(other.levelId, levelId)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(levelId) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(contactId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $LevelDtoExtension on LevelDto {
  LevelDto copyWith(
      {String? levelId,
      String? projectId,
      String? contactId,
      String? name,
      String? code,
      String? description}) {
    return LevelDto(
        levelId: levelId ?? this.levelId,
        projectId: projectId ?? this.projectId,
        contactId: contactId ?? this.contactId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class LevelDtoPagedResult {
  LevelDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory LevelDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$LevelDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <LevelDto>[])
  final List<LevelDto>? items;
  static const fromJsonFactory = _$LevelDtoPagedResultFromJson;
  static const toJsonFactory = _$LevelDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$LevelDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LevelDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LevelDtoPagedResultExtension on LevelDtoPagedResult {
  LevelDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<LevelDto>? items}) {
    return LevelDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class LocalDto {
  LocalDto({
    this.localId,
    this.levelId,
    this.statusId,
    this.typeId,
    this.name,
    this.code,
    this.address,
    this.description,
    this.meters2,
  });

  factory LocalDto.fromJson(Map<String, dynamic> json) =>
      _$LocalDtoFromJson(json);

  @JsonKey(name: 'localId')
  final String? localId;
  @JsonKey(name: 'levelId')
  final String? levelId;
  @JsonKey(name: 'statusId')
  final String? statusId;
  @JsonKey(name: 'typeId')
  final String? typeId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'meters2')
  final double? meters2;
  static const fromJsonFactory = _$LocalDtoFromJson;
  static const toJsonFactory = _$LocalDtoToJson;
  Map<String, dynamic> toJson() => _$LocalDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalDto &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.levelId, levelId) ||
                const DeepCollectionEquality()
                    .equals(other.levelId, levelId)) &&
            (identical(other.statusId, statusId) ||
                const DeepCollectionEquality()
                    .equals(other.statusId, statusId)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.meters2, meters2) ||
                const DeepCollectionEquality().equals(other.meters2, meters2)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(levelId) ^
      const DeepCollectionEquality().hash(statusId) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(meters2) ^
      runtimeType.hashCode;
}

extension $LocalDtoExtension on LocalDto {
  LocalDto copyWith(
      {String? localId,
      String? levelId,
      String? statusId,
      String? typeId,
      String? name,
      String? code,
      String? address,
      String? description,
      double? meters2}) {
    return LocalDto(
        localId: localId ?? this.localId,
        levelId: levelId ?? this.levelId,
        statusId: statusId ?? this.statusId,
        typeId: typeId ?? this.typeId,
        name: name ?? this.name,
        code: code ?? this.code,
        address: address ?? this.address,
        description: description ?? this.description,
        meters2: meters2 ?? this.meters2);
  }
}

@JsonSerializable(explicitToJson: true)
class LocalDtoPagedResult {
  LocalDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory LocalDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$LocalDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <LocalDto>[])
  final List<LocalDto>? items;
  static const fromJsonFactory = _$LocalDtoPagedResultFromJson;
  static const toJsonFactory = _$LocalDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$LocalDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LocalDtoPagedResultExtension on LocalDtoPagedResult {
  LocalDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<LocalDto>? items}) {
    return LocalDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class LocalStatusDto {
  LocalStatusDto({
    this.localStatusId,
    this.name,
    this.code,
    this.description,
  });

  factory LocalStatusDto.fromJson(Map<String, dynamic> json) =>
      _$LocalStatusDtoFromJson(json);

  @JsonKey(name: 'localStatusId')
  final String? localStatusId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$LocalStatusDtoFromJson;
  static const toJsonFactory = _$LocalStatusDtoToJson;
  Map<String, dynamic> toJson() => _$LocalStatusDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalStatusDto &&
            (identical(other.localStatusId, localStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.localStatusId, localStatusId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(localStatusId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $LocalStatusDtoExtension on LocalStatusDto {
  LocalStatusDto copyWith(
      {String? localStatusId,
      String? name,
      String? code,
      String? description}) {
    return LocalStatusDto(
        localStatusId: localStatusId ?? this.localStatusId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class LocalStatusDtoPagedResult {
  LocalStatusDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory LocalStatusDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$LocalStatusDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <LocalStatusDto>[])
  final List<LocalStatusDto>? items;
  static const fromJsonFactory = _$LocalStatusDtoPagedResultFromJson;
  static const toJsonFactory = _$LocalStatusDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$LocalStatusDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalStatusDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LocalStatusDtoPagedResultExtension on LocalStatusDtoPagedResult {
  LocalStatusDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<LocalStatusDto>? items}) {
    return LocalStatusDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class LocalTypeDto {
  LocalTypeDto({
    this.localTypeId,
    this.name,
    this.code,
    this.description,
  });

  factory LocalTypeDto.fromJson(Map<String, dynamic> json) =>
      _$LocalTypeDtoFromJson(json);

  @JsonKey(name: 'localTypeId')
  final String? localTypeId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$LocalTypeDtoFromJson;
  static const toJsonFactory = _$LocalTypeDtoToJson;
  Map<String, dynamic> toJson() => _$LocalTypeDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalTypeDto &&
            (identical(other.localTypeId, localTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.localTypeId, localTypeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(localTypeId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $LocalTypeDtoExtension on LocalTypeDto {
  LocalTypeDto copyWith(
      {String? localTypeId, String? name, String? code, String? description}) {
    return LocalTypeDto(
        localTypeId: localTypeId ?? this.localTypeId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class LocalTypeDtoPagedResult {
  LocalTypeDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory LocalTypeDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$LocalTypeDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <LocalTypeDto>[])
  final List<LocalTypeDto>? items;
  static const fromJsonFactory = _$LocalTypeDtoPagedResultFromJson;
  static const toJsonFactory = _$LocalTypeDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$LocalTypeDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalTypeDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LocalTypeDtoPagedResultExtension on LocalTypeDtoPagedResult {
  LocalTypeDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<LocalTypeDto>? items}) {
    return LocalTypeDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class LoginDto {
  LoginDto({
    required this.email,
    required this.password,
  });

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$LoginDtoFromJson;
  static const toJsonFactory = _$LoginDtoToJson;
  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginDtoExtension on LoginDto {
  LoginDto copyWith({String? email, String? password}) {
    return LoginDto(
        email: email ?? this.email, password: password ?? this.password);
  }
}

@JsonSerializable(explicitToJson: true)
class MissingReviewDto {
  MissingReviewDto({
    this.id,
    this.email,
    this.image,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
    this.visitId,
    this.reason,
    this.comments,
    this.visitDate,
    this.startHour,
    this.endHour,
  });

  factory MissingReviewDto.fromJson(Map<String, dynamic> json) =>
      _$MissingReviewDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  static const fromJsonFactory = _$MissingReviewDtoFromJson;
  static const toJsonFactory = _$MissingReviewDtoToJson;
  Map<String, dynamic> toJson() => _$MissingReviewDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MissingReviewDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality().equals(other.endHour, endHour)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      runtimeType.hashCode;
}

extension $MissingReviewDtoExtension on MissingReviewDto {
  MissingReviewDto copyWith(
      {String? id,
      String? email,
      String? image,
      String? firstName,
      String? lastName,
      String? titleAbbreviation,
      String? visitId,
      String? reason,
      String? comments,
      DateTime? visitDate,
      String? startHour,
      String? endHour}) {
    return MissingReviewDto(
        id: id ?? this.id,
        email: email ?? this.email,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        visitId: visitId ?? this.visitId,
        reason: reason ?? this.reason,
        comments: comments ?? this.comments,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour);
  }
}

@JsonSerializable(explicitToJson: true)
class MostVisitedDto {
  MostVisitedDto({
    this.id,
    this.picture,
    this.name,
    this.abbreviation,
    this.firstName,
    this.lastName,
    this.rating,
    this.department,
    this.subDepartments,
  });

  factory MostVisitedDto.fromJson(Map<String, dynamic> json) =>
      _$MostVisitedDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'picture')
  final String? picture;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'abbreviation')
  final String? abbreviation;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'department', defaultValue: <SelectDto>[])
  final List<SelectDto>? department;
  @JsonKey(name: 'subDepartments', defaultValue: <SelectDto>[])
  final List<SelectDto>? subDepartments;
  static const fromJsonFactory = _$MostVisitedDtoFromJson;
  static const toJsonFactory = _$MostVisitedDtoToJson;
  Map<String, dynamic> toJson() => _$MostVisitedDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MostVisitedDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.abbreviation, abbreviation)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)) &&
            (identical(other.subDepartments, subDepartments) ||
                const DeepCollectionEquality()
                    .equals(other.subDepartments, subDepartments)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(abbreviation) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(subDepartments) ^
      runtimeType.hashCode;
}

extension $MostVisitedDtoExtension on MostVisitedDto {
  MostVisitedDto copyWith(
      {String? id,
      String? picture,
      String? name,
      String? abbreviation,
      String? firstName,
      String? lastName,
      double? rating,
      List<SelectDto>? department,
      List<SelectDto>? subDepartments}) {
    return MostVisitedDto(
        id: id ?? this.id,
        picture: picture ?? this.picture,
        name: name ?? this.name,
        abbreviation: abbreviation ?? this.abbreviation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        rating: rating ?? this.rating,
        department: department ?? this.department,
        subDepartments: subDepartments ?? this.subDepartments);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationsDto {
  NotificationsDto({
    this.notificationId,
    required this.receiverId,
    required this.transmitterId,
    required this.title,
    required this.message,
    this.isRead,
    this.ignore,
  });

  factory NotificationsDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationsDtoFromJson(json);

  @JsonKey(name: 'notificationId')
  final String? notificationId;
  @JsonKey(name: 'receiverId')
  final String receiverId;
  @JsonKey(name: 'transmitterId')
  final String transmitterId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'isRead')
  final bool? isRead;
  @JsonKey(name: 'ignore')
  final bool? ignore;
  static const fromJsonFactory = _$NotificationsDtoFromJson;
  static const toJsonFactory = _$NotificationsDtoToJson;
  Map<String, dynamic> toJson() => _$NotificationsDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationsDto &&
            (identical(other.notificationId, notificationId) ||
                const DeepCollectionEquality()
                    .equals(other.notificationId, notificationId)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.transmitterId, transmitterId) ||
                const DeepCollectionEquality()
                    .equals(other.transmitterId, transmitterId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.ignore, ignore) ||
                const DeepCollectionEquality().equals(other.ignore, ignore)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notificationId) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(transmitterId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(ignore) ^
      runtimeType.hashCode;
}

extension $NotificationsDtoExtension on NotificationsDto {
  NotificationsDto copyWith(
      {String? notificationId,
      String? receiverId,
      String? transmitterId,
      String? title,
      String? message,
      bool? isRead,
      bool? ignore}) {
    return NotificationsDto(
        notificationId: notificationId ?? this.notificationId,
        receiverId: receiverId ?? this.receiverId,
        transmitterId: transmitterId ?? this.transmitterId,
        title: title ?? this.title,
        message: message ?? this.message,
        isRead: isRead ?? this.isRead,
        ignore: ignore ?? this.ignore);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationsDtoPagedResult {
  NotificationsDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory NotificationsDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$NotificationsDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <NotificationsDto>[])
  final List<NotificationsDto>? items;
  static const fromJsonFactory = _$NotificationsDtoPagedResultFromJson;
  static const toJsonFactory = _$NotificationsDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$NotificationsDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationsDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $NotificationsDtoPagedResultExtension on NotificationsDtoPagedResult {
  NotificationsDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<NotificationsDto>? items}) {
    return NotificationsDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationsResponseDto {
  NotificationsResponseDto({
    this.notificationId,
    required this.receiverId,
    required this.transmitterId,
    required this.title,
    required this.message,
    this.isRead,
    this.ignore,
    this.userId,
    this.image,
    this.email,
    this.name,
    this.firstName,
    this.lastName,
    this.createDate,
    this.titleAbbreviation,
    this.priority,
    this.viewed,
    this.relationId,
    this.entityRelated,
  });

  factory NotificationsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseDtoFromJson(json);

  @JsonKey(name: 'notificationId')
  final String? notificationId;
  @JsonKey(name: 'receiverId')
  final String receiverId;
  @JsonKey(name: 'transmitterId')
  final String transmitterId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'isRead')
  final bool? isRead;
  @JsonKey(name: 'ignore')
  final bool? ignore;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'createDate')
  final DateTime? createDate;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'priority',
      toJson: notificationPriorityToJson,
      fromJson: notificationPriorityFromJson)
  final enums.NotificationPriority? priority;
  @JsonKey(name: 'viewed')
  final DateTime? viewed;
  @JsonKey(name: 'relationId')
  final String? relationId;
  @JsonKey(
      name: 'entityRelated',
      toJson: entitiesEnumToJson,
      fromJson: entitiesEnumFromJson)
  final enums.EntitiesEnum? entityRelated;
  static const fromJsonFactory = _$NotificationsResponseDtoFromJson;
  static const toJsonFactory = _$NotificationsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$NotificationsResponseDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationsResponseDto &&
            (identical(other.notificationId, notificationId) ||
                const DeepCollectionEquality()
                    .equals(other.notificationId, notificationId)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.transmitterId, transmitterId) ||
                const DeepCollectionEquality()
                    .equals(other.transmitterId, transmitterId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.ignore, ignore) ||
                const DeepCollectionEquality().equals(other.ignore, ignore)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.createDate, createDate) ||
                const DeepCollectionEquality()
                    .equals(other.createDate, createDate)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.viewed, viewed) ||
                const DeepCollectionEquality().equals(other.viewed, viewed)) &&
            (identical(other.relationId, relationId) ||
                const DeepCollectionEquality()
                    .equals(other.relationId, relationId)) &&
            (identical(other.entityRelated, entityRelated) ||
                const DeepCollectionEquality()
                    .equals(other.entityRelated, entityRelated)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notificationId) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(transmitterId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(ignore) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(createDate) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(viewed) ^
      const DeepCollectionEquality().hash(relationId) ^
      const DeepCollectionEquality().hash(entityRelated) ^
      runtimeType.hashCode;
}

extension $NotificationsResponseDtoExtension on NotificationsResponseDto {
  NotificationsResponseDto copyWith(
      {String? notificationId,
      String? receiverId,
      String? transmitterId,
      String? title,
      String? message,
      bool? isRead,
      bool? ignore,
      String? userId,
      String? image,
      String? email,
      String? name,
      String? firstName,
      String? lastName,
      DateTime? createDate,
      String? titleAbbreviation,
      enums.NotificationPriority? priority,
      DateTime? viewed,
      String? relationId,
      enums.EntitiesEnum? entityRelated}) {
    return NotificationsResponseDto(
        notificationId: notificationId ?? this.notificationId,
        receiverId: receiverId ?? this.receiverId,
        transmitterId: transmitterId ?? this.transmitterId,
        title: title ?? this.title,
        message: message ?? this.message,
        isRead: isRead ?? this.isRead,
        ignore: ignore ?? this.ignore,
        userId: userId ?? this.userId,
        image: image ?? this.image,
        email: email ?? this.email,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        createDate: createDate ?? this.createDate,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        priority: priority ?? this.priority,
        viewed: viewed ?? this.viewed,
        relationId: relationId ?? this.relationId,
        entityRelated: entityRelated ?? this.entityRelated);
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;
  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality()
                    .equals(other.instance, instance)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance}) {
    return ProblemDetails(
        type: type ?? this.type,
        title: title ?? this.title,
        status: status ?? this.status,
        detail: detail ?? this.detail,
        instance: instance ?? this.instance);
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectDto {
  ProjectDto({
    this.projectId,
    this.name,
    this.code,
    this.description,
    this.address,
    this.cp,
    this.state,
    this.city,
    this.rfc,
    this.logo,
    this.logoApp,
    this.titleUserApp,
    this.titleProviderApp,
  });

  factory ProjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDtoFromJson(json);

  @JsonKey(name: 'projectId')
  final String? projectId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'cp')
  final String? cp;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'rfc')
  final String? rfc;
  @JsonKey(name: 'logo')
  final String? logo;
  @JsonKey(name: 'logoApp')
  final String? logoApp;
  @JsonKey(name: 'titleUserApp')
  final String? titleUserApp;
  @JsonKey(name: 'titleProviderApp')
  final String? titleProviderApp;
  static const fromJsonFactory = _$ProjectDtoFromJson;
  static const toJsonFactory = _$ProjectDtoToJson;
  Map<String, dynamic> toJson() => _$ProjectDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectDto &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.cp, cp) ||
                const DeepCollectionEquality().equals(other.cp, cp)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.rfc, rfc) ||
                const DeepCollectionEquality().equals(other.rfc, rfc)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.logoApp, logoApp) ||
                const DeepCollectionEquality()
                    .equals(other.logoApp, logoApp)) &&
            (identical(other.titleUserApp, titleUserApp) ||
                const DeepCollectionEquality()
                    .equals(other.titleUserApp, titleUserApp)) &&
            (identical(other.titleProviderApp, titleProviderApp) ||
                const DeepCollectionEquality()
                    .equals(other.titleProviderApp, titleProviderApp)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(cp) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(rfc) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(logoApp) ^
      const DeepCollectionEquality().hash(titleUserApp) ^
      const DeepCollectionEquality().hash(titleProviderApp) ^
      runtimeType.hashCode;
}

extension $ProjectDtoExtension on ProjectDto {
  ProjectDto copyWith(
      {String? projectId,
      String? name,
      String? code,
      String? description,
      String? address,
      String? cp,
      String? state,
      String? city,
      String? rfc,
      String? logo,
      String? logoApp,
      String? titleUserApp,
      String? titleProviderApp}) {
    return ProjectDto(
        projectId: projectId ?? this.projectId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        address: address ?? this.address,
        cp: cp ?? this.cp,
        state: state ?? this.state,
        city: city ?? this.city,
        rfc: rfc ?? this.rfc,
        logo: logo ?? this.logo,
        logoApp: logoApp ?? this.logoApp,
        titleUserApp: titleUserApp ?? this.titleUserApp,
        titleProviderApp: titleProviderApp ?? this.titleProviderApp);
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectDtoPagedResult {
  ProjectDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ProjectDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ProjectDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ProjectDto>[])
  final List<ProjectDto>? items;
  static const fromJsonFactory = _$ProjectDtoPagedResultFromJson;
  static const toJsonFactory = _$ProjectDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$ProjectDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ProjectDtoPagedResultExtension on ProjectDtoPagedResult {
  ProjectDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ProjectDto>? items}) {
    return ProjectDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ProviderProfileDto {
  ProviderProfileDto({
    this.userId,
    this.email,
    this.name,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
    this.url,
    this.gender,
    this.phone,
    this.address,
    this.costPerAppointment,
    this.rating,
    this.pin,
    this.carNo,
    this.levelLocal,
    this.academicStudies,
    this.department,
    this.subDepartments,
    this.schedules,
    this.busyDates,
  });

  factory ProviderProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderProfileDtoFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'pin')
  final String? pin;
  @JsonKey(name: 'carNo')
  final String? carNo;
  @JsonKey(name: 'levelLocal', defaultValue: <SelectDto>[])
  final List<SelectDto>? levelLocal;
  @JsonKey(name: 'academicStudies', defaultValue: <AcademicStudiesDto>[])
  final List<AcademicStudiesDto>? academicStudies;
  @JsonKey(name: 'department', defaultValue: <SelectDto>[])
  final List<SelectDto>? department;
  @JsonKey(name: 'subDepartments', defaultValue: <SelectDto>[])
  final List<SelectDto>? subDepartments;
  @JsonKey(name: 'schedules', defaultValue: <ScheduleDto>[])
  final List<ScheduleDto>? schedules;
  @JsonKey(name: 'busyDates', defaultValue: <BusyDatesDto>[])
  final List<BusyDatesDto>? busyDates;
  static const fromJsonFactory = _$ProviderProfileDtoFromJson;
  static const toJsonFactory = _$ProviderProfileDtoToJson;
  Map<String, dynamic> toJson() => _$ProviderProfileDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProviderProfileDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.carNo, carNo) ||
                const DeepCollectionEquality().equals(other.carNo, carNo)) &&
            (identical(other.levelLocal, levelLocal) ||
                const DeepCollectionEquality()
                    .equals(other.levelLocal, levelLocal)) &&
            (identical(other.academicStudies, academicStudies) ||
                const DeepCollectionEquality()
                    .equals(other.academicStudies, academicStudies)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)) &&
            (identical(other.subDepartments, subDepartments) ||
                const DeepCollectionEquality()
                    .equals(other.subDepartments, subDepartments)) &&
            (identical(other.schedules, schedules) ||
                const DeepCollectionEquality()
                    .equals(other.schedules, schedules)) &&
            (identical(other.busyDates, busyDates) ||
                const DeepCollectionEquality()
                    .equals(other.busyDates, busyDates)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(carNo) ^
      const DeepCollectionEquality().hash(levelLocal) ^
      const DeepCollectionEquality().hash(academicStudies) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(subDepartments) ^
      const DeepCollectionEquality().hash(schedules) ^
      const DeepCollectionEquality().hash(busyDates) ^
      runtimeType.hashCode;
}

extension $ProviderProfileDtoExtension on ProviderProfileDto {
  ProviderProfileDto copyWith(
      {String? userId,
      String? email,
      String? name,
      String? firstName,
      String? lastName,
      String? titleAbbreviation,
      String? url,
      enums.GenderEnum? gender,
      String? phone,
      String? address,
      double? costPerAppointment,
      double? rating,
      String? pin,
      String? carNo,
      List<SelectDto>? levelLocal,
      List<AcademicStudiesDto>? academicStudies,
      List<SelectDto>? department,
      List<SelectDto>? subDepartments,
      List<ScheduleDto>? schedules,
      List<BusyDatesDto>? busyDates}) {
    return ProviderProfileDto(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        url: url ?? this.url,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment,
        rating: rating ?? this.rating,
        pin: pin ?? this.pin,
        carNo: carNo ?? this.carNo,
        levelLocal: levelLocal ?? this.levelLocal,
        academicStudies: academicStudies ?? this.academicStudies,
        department: department ?? this.department,
        subDepartments: subDepartments ?? this.subDepartments,
        schedules: schedules ?? this.schedules,
        busyDates: busyDates ?? this.busyDates);
  }
}

@JsonSerializable(explicitToJson: true)
class ProviderPutDto {
  ProviderPutDto({
    this.imageFile,
    this.name,
    required this.firstName,
    required this.lastName,
    this.url,
    this.countryCode,
    this.titleAbbreviation,
    this.gender,
    required this.phone,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.costPerAppointment,
    this.localId,
    this.subDepartments,
    this.academicStudies,
    this.schedules,
  });

  factory ProviderPutDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderPutDtoFromJson(json);

  @JsonKey(name: 'imageFile')
  final String? imageFile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  @JsonKey(name: 'localId')
  final String? localId;
  @JsonKey(name: 'subDepartments', defaultValue: <String>[])
  final List<String>? subDepartments;
  @JsonKey(name: 'academicStudies', defaultValue: <AcademicStudiesDto>[])
  final List<AcademicStudiesDto>? academicStudies;
  @JsonKey(name: 'schedules', defaultValue: <ScheduleDto>[])
  final List<ScheduleDto>? schedules;
  static const fromJsonFactory = _$ProviderPutDtoFromJson;
  static const toJsonFactory = _$ProviderPutDtoToJson;
  Map<String, dynamic> toJson() => _$ProviderPutDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProviderPutDto &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.subDepartments, subDepartments) ||
                const DeepCollectionEquality()
                    .equals(other.subDepartments, subDepartments)) &&
            (identical(other.academicStudies, academicStudies) ||
                const DeepCollectionEquality()
                    .equals(other.academicStudies, academicStudies)) &&
            (identical(other.schedules, schedules) ||
                const DeepCollectionEquality()
                    .equals(other.schedules, schedules)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(subDepartments) ^
      const DeepCollectionEquality().hash(academicStudies) ^
      const DeepCollectionEquality().hash(schedules) ^
      runtimeType.hashCode;
}

extension $ProviderPutDtoExtension on ProviderPutDto {
  ProviderPutDto copyWith(
      {String? imageFile,
      String? name,
      String? firstName,
      String? lastName,
      String? url,
      String? countryCode,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? phone,
      String? country,
      String? city,
      String? address,
      DateTime? birthDate,
      double? costPerAppointment,
      String? localId,
      List<String>? subDepartments,
      List<AcademicStudiesDto>? academicStudies,
      List<ScheduleDto>? schedules}) {
    return ProviderPutDto(
        imageFile: imageFile ?? this.imageFile,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        birthDate: birthDate ?? this.birthDate,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment,
        localId: localId ?? this.localId,
        subDepartments: subDepartments ?? this.subDepartments,
        academicStudies: academicStudies ?? this.academicStudies,
        schedules: schedules ?? this.schedules);
  }
}

@JsonSerializable(explicitToJson: true)
class ProviderQRInfo {
  ProviderQRInfo({
    this.userId,
    this.email,
    this.name,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
    this.url,
    this.pin,
    this.carNo,
    this.levelLocal,
    this.department,
    this.subDepartments,
  });

  factory ProviderQRInfo.fromJson(Map<String, dynamic> json) =>
      _$ProviderQRInfoFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'pin')
  final String? pin;
  @JsonKey(name: 'carNo')
  final String? carNo;
  @JsonKey(name: 'levelLocal', defaultValue: <SelectDto>[])
  final List<SelectDto>? levelLocal;
  @JsonKey(name: 'department', defaultValue: <SelectDto>[])
  final List<SelectDto>? department;
  @JsonKey(name: 'subDepartments', defaultValue: <SelectDto>[])
  final List<SelectDto>? subDepartments;
  static const fromJsonFactory = _$ProviderQRInfoFromJson;
  static const toJsonFactory = _$ProviderQRInfoToJson;
  Map<String, dynamic> toJson() => _$ProviderQRInfoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProviderQRInfo &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.carNo, carNo) ||
                const DeepCollectionEquality().equals(other.carNo, carNo)) &&
            (identical(other.levelLocal, levelLocal) ||
                const DeepCollectionEquality()
                    .equals(other.levelLocal, levelLocal)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)) &&
            (identical(other.subDepartments, subDepartments) ||
                const DeepCollectionEquality()
                    .equals(other.subDepartments, subDepartments)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(carNo) ^
      const DeepCollectionEquality().hash(levelLocal) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(subDepartments) ^
      runtimeType.hashCode;
}

extension $ProviderQRInfoExtension on ProviderQRInfo {
  ProviderQRInfo copyWith(
      {String? userId,
      String? email,
      String? name,
      String? firstName,
      String? lastName,
      String? titleAbbreviation,
      String? url,
      String? pin,
      String? carNo,
      List<SelectDto>? levelLocal,
      List<SelectDto>? department,
      List<SelectDto>? subDepartments}) {
    return ProviderQRInfo(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        url: url ?? this.url,
        pin: pin ?? this.pin,
        carNo: carNo ?? this.carNo,
        levelLocal: levelLocal ?? this.levelLocal,
        department: department ?? this.department,
        subDepartments: subDepartments ?? this.subDepartments);
  }
}

@JsonSerializable(explicitToJson: true)
class PushNotificationDto {
  PushNotificationDto({
    this.token,
    this.userId,
    this.isSingleAndroiodDevice,
    this.title,
    this.body,
  });

  factory PushNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationDtoFromJson(json);

  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'isSingleAndroiodDevice')
  final bool? isSingleAndroiodDevice;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'body')
  final String? body;
  static const fromJsonFactory = _$PushNotificationDtoFromJson;
  static const toJsonFactory = _$PushNotificationDtoToJson;
  Map<String, dynamic> toJson() => _$PushNotificationDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PushNotificationDto &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.isSingleAndroiodDevice, isSingleAndroiodDevice) ||
                const DeepCollectionEquality().equals(
                    other.isSingleAndroiodDevice, isSingleAndroiodDevice)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(isSingleAndroiodDevice) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      runtimeType.hashCode;
}

extension $PushNotificationDtoExtension on PushNotificationDto {
  PushNotificationDto copyWith(
      {String? token,
      String? userId,
      bool? isSingleAndroiodDevice,
      String? title,
      String? body}) {
    return PushNotificationDto(
        token: token ?? this.token,
        userId: userId ?? this.userId,
        isSingleAndroiodDevice:
            isSingleAndroiodDevice ?? this.isSingleAndroiodDevice,
        title: title ?? this.title,
        body: body ?? this.body);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingDto {
  RatingDto({
    this.ratingId,
    this.userId,
    this.doctorId,
    this.visitId,
    this.score,
    this.comments,
  });

  factory RatingDto.fromJson(Map<String, dynamic> json) =>
      _$RatingDtoFromJson(json);

  @JsonKey(name: 'ratingId')
  final String? ratingId;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'doctorId')
  final String? doctorId;
  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'comments')
  final String? comments;
  static const fromJsonFactory = _$RatingDtoFromJson;
  static const toJsonFactory = _$RatingDtoToJson;
  Map<String, dynamic> toJson() => _$RatingDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingDto &&
            (identical(other.ratingId, ratingId) ||
                const DeepCollectionEquality()
                    .equals(other.ratingId, ratingId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.doctorId, doctorId) ||
                const DeepCollectionEquality()
                    .equals(other.doctorId, doctorId)) &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ratingId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(doctorId) ^
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(comments) ^
      runtimeType.hashCode;
}

extension $RatingDtoExtension on RatingDto {
  RatingDto copyWith(
      {String? ratingId,
      String? userId,
      String? doctorId,
      String? visitId,
      double? score,
      String? comments}) {
    return RatingDto(
        ratingId: ratingId ?? this.ratingId,
        userId: userId ?? this.userId,
        doctorId: doctorId ?? this.doctorId,
        visitId: visitId ?? this.visitId,
        score: score ?? this.score,
        comments: comments ?? this.comments);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingDtoPagedResult {
  RatingDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory RatingDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$RatingDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <RatingDto>[])
  final List<RatingDto>? items;
  static const fromJsonFactory = _$RatingDtoPagedResultFromJson;
  static const toJsonFactory = _$RatingDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$RatingDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $RatingDtoPagedResultExtension on RatingDtoPagedResult {
  RatingDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<RatingDto>? items}) {
    return RatingDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingResponseDto {
  RatingResponseDto({
    this.ratingId,
    this.createDate,
    this.score,
    this.comments,
    this.user,
    this.resident,
  });

  factory RatingResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RatingResponseDtoFromJson(json);

  @JsonKey(name: 'ratingId')
  final String? ratingId;
  @JsonKey(name: 'createDate')
  final DateTime? createDate;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'user')
  final UserAttributesDto? user;
  @JsonKey(name: 'resident')
  final UserAttributesDto? resident;
  static const fromJsonFactory = _$RatingResponseDtoFromJson;
  static const toJsonFactory = _$RatingResponseDtoToJson;
  Map<String, dynamic> toJson() => _$RatingResponseDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingResponseDto &&
            (identical(other.ratingId, ratingId) ||
                const DeepCollectionEquality()
                    .equals(other.ratingId, ratingId)) &&
            (identical(other.createDate, createDate) ||
                const DeepCollectionEquality()
                    .equals(other.createDate, createDate)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.resident, resident) ||
                const DeepCollectionEquality()
                    .equals(other.resident, resident)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ratingId) ^
      const DeepCollectionEquality().hash(createDate) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(resident) ^
      runtimeType.hashCode;
}

extension $RatingResponseDtoExtension on RatingResponseDto {
  RatingResponseDto copyWith(
      {String? ratingId,
      DateTime? createDate,
      double? score,
      String? comments,
      UserAttributesDto? user,
      UserAttributesDto? resident}) {
    return RatingResponseDto(
        ratingId: ratingId ?? this.ratingId,
        createDate: createDate ?? this.createDate,
        score: score ?? this.score,
        comments: comments ?? this.comments,
        user: user ?? this.user,
        resident: resident ?? this.resident);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingResponseDtoPagedResult {
  RatingResponseDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory RatingResponseDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$RatingResponseDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <RatingResponseDto>[])
  final List<RatingResponseDto>? items;
  static const fromJsonFactory = _$RatingResponseDtoPagedResultFromJson;
  static const toJsonFactory = _$RatingResponseDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$RatingResponseDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingResponseDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $RatingResponseDtoPagedResultExtension
    on RatingResponseDtoPagedResult {
  RatingResponseDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<RatingResponseDto>? items}) {
    return RatingResponseDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ResetPasswordModel {
  ResetPasswordModel({
    required this.password,
    required this.confirmPassword,
    required this.email,
    required this.token,
  });

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordModelFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirmPassword')
  final String confirmPassword;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$ResetPasswordModelFromJson;
  static const toJsonFactory = _$ResetPasswordModelToJson;
  Map<String, dynamic> toJson() => _$ResetPasswordModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordModel &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $ResetPasswordModelExtension on ResetPasswordModel {
  ResetPasswordModel copyWith(
      {String? password,
      String? confirmPassword,
      String? email,
      String? token}) {
    return ResetPasswordModel(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        email: email ?? this.email,
        token: token ?? this.token);
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseDto {
  ResponseDto({
    this.saved,
    this.image,
  });

  factory ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseDtoFromJson(json);

  @JsonKey(name: 'saved')
  final bool? saved;
  @JsonKey(name: 'image')
  final String? image;
  static const fromJsonFactory = _$ResponseDtoFromJson;
  static const toJsonFactory = _$ResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ResponseDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseDto &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(image) ^
      runtimeType.hashCode;
}

extension $ResponseDtoExtension on ResponseDto {
  ResponseDto copyWith({bool? saved, String? image}) {
    return ResponseDto(saved: saved ?? this.saved, image: image ?? this.image);
  }
}

@JsonSerializable(explicitToJson: true)
class ResultUserDto {
  ResultUserDto({
    this.id,
    this.email,
    this.image,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
    this.gender,
    this.phone,
    this.address,
    this.rating,
    this.visitDate,
    this.startHour,
    this.endHour,
  });

  factory ResultUserDto.fromJson(Map<String, dynamic> json) =>
      _$ResultUserDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  static const fromJsonFactory = _$ResultUserDtoFromJson;
  static const toJsonFactory = _$ResultUserDtoToJson;
  Map<String, dynamic> toJson() => _$ResultUserDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultUserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality().equals(other.endHour, endHour)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      runtimeType.hashCode;
}

extension $ResultUserDtoExtension on ResultUserDto {
  ResultUserDto copyWith(
      {String? id,
      String? email,
      String? image,
      String? firstName,
      String? lastName,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? phone,
      String? address,
      double? rating,
      DateTime? visitDate,
      String? startHour,
      String? endHour}) {
    return ResultUserDto(
        id: id ?? this.id,
        email: email ?? this.email,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        rating: rating ?? this.rating,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour);
  }
}

@JsonSerializable(explicitToJson: true)
class ResultUserDtoPagedResult {
  ResultUserDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ResultUserDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ResultUserDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ResultUserDto>[])
  final List<ResultUserDto>? items;
  static const fromJsonFactory = _$ResultUserDtoPagedResultFromJson;
  static const toJsonFactory = _$ResultUserDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$ResultUserDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultUserDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ResultUserDtoPagedResultExtension on ResultUserDtoPagedResult {
  ResultUserDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ResultUserDto>? items}) {
    return ResultUserDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDto {
  RoleDto({
    this.id,
    this.name,
    this.active,
  });

  factory RoleDto.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$RoleDtoFromJson;
  static const toJsonFactory = _$RoleDtoToJson;
  Map<String, dynamic> toJson() => _$RoleDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $RoleDtoExtension on RoleDto {
  RoleDto copyWith({String? id, String? name, bool? active}) {
    return RoleDto(
        id: id ?? this.id,
        name: name ?? this.name,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDtoPagedResult {
  RoleDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory RoleDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <RoleDto>[])
  final List<RoleDto>? items;
  static const fromJsonFactory = _$RoleDtoPagedResultFromJson;
  static const toJsonFactory = _$RoleDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$RoleDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $RoleDtoPagedResultExtension on RoleDtoPagedResult {
  RoleDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<RoleDto>? items}) {
    return RoleDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduleDto {
  ScheduleDto({
    this.scheduleId,
    this.day,
    required this.hourOpen,
    required this.hourClose,
    this.secondHourOpen,
    this.secondHourClose,
    this.orderDay,
    this.active,
  });

  factory ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDtoFromJson(json);

  @JsonKey(name: 'scheduleId')
  final String? scheduleId;
  @JsonKey(name: 'day')
  final String? day;
  @JsonKey(name: 'hourOpen')
  final String hourOpen;
  @JsonKey(name: 'hourClose')
  final String hourClose;
  @JsonKey(name: 'secondHourOpen')
  final String? secondHourOpen;
  @JsonKey(name: 'secondHourClose')
  final String? secondHourClose;
  @JsonKey(name: 'orderDay')
  final int? orderDay;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$ScheduleDtoFromJson;
  static const toJsonFactory = _$ScheduleDtoToJson;
  Map<String, dynamic> toJson() => _$ScheduleDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleDto &&
            (identical(other.scheduleId, scheduleId) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleId, scheduleId)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.hourOpen, hourOpen) ||
                const DeepCollectionEquality()
                    .equals(other.hourOpen, hourOpen)) &&
            (identical(other.hourClose, hourClose) ||
                const DeepCollectionEquality()
                    .equals(other.hourClose, hourClose)) &&
            (identical(other.secondHourOpen, secondHourOpen) ||
                const DeepCollectionEquality()
                    .equals(other.secondHourOpen, secondHourOpen)) &&
            (identical(other.secondHourClose, secondHourClose) ||
                const DeepCollectionEquality()
                    .equals(other.secondHourClose, secondHourClose)) &&
            (identical(other.orderDay, orderDay) ||
                const DeepCollectionEquality()
                    .equals(other.orderDay, orderDay)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scheduleId) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(hourOpen) ^
      const DeepCollectionEquality().hash(hourClose) ^
      const DeepCollectionEquality().hash(secondHourOpen) ^
      const DeepCollectionEquality().hash(secondHourClose) ^
      const DeepCollectionEquality().hash(orderDay) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $ScheduleDtoExtension on ScheduleDto {
  ScheduleDto copyWith(
      {String? scheduleId,
      String? day,
      String? hourOpen,
      String? hourClose,
      String? secondHourOpen,
      String? secondHourClose,
      int? orderDay,
      bool? active}) {
    return ScheduleDto(
        scheduleId: scheduleId ?? this.scheduleId,
        day: day ?? this.day,
        hourOpen: hourOpen ?? this.hourOpen,
        hourClose: hourClose ?? this.hourClose,
        secondHourOpen: secondHourOpen ?? this.secondHourOpen,
        secondHourClose: secondHourClose ?? this.secondHourClose,
        orderDay: orderDay ?? this.orderDay,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduleDtoPagedResult {
  ScheduleDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ScheduleDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ScheduleDto>[])
  final List<ScheduleDto>? items;
  static const fromJsonFactory = _$ScheduleDtoPagedResultFromJson;
  static const toJsonFactory = _$ScheduleDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$ScheduleDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ScheduleDtoPagedResultExtension on ScheduleDtoPagedResult {
  ScheduleDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ScheduleDto>? items}) {
    return ScheduleDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class SchedulePostDto {
  SchedulePostDto({
    this.scheduleId,
    this.day,
    required this.hourOpen,
    required this.hourClose,
    this.secondHourOpen,
    this.secondHourClose,
    this.orderDay,
    this.active,
    required this.userId,
    required this.localId,
  });

  factory SchedulePostDto.fromJson(Map<String, dynamic> json) =>
      _$SchedulePostDtoFromJson(json);

  @JsonKey(name: 'scheduleId')
  final String? scheduleId;
  @JsonKey(name: 'day')
  final String? day;
  @JsonKey(name: 'hourOpen')
  final String hourOpen;
  @JsonKey(name: 'hourClose')
  final String hourClose;
  @JsonKey(name: 'secondHourOpen')
  final String? secondHourOpen;
  @JsonKey(name: 'secondHourClose')
  final String? secondHourClose;
  @JsonKey(name: 'orderDay')
  final int? orderDay;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'localId')
  final String localId;
  static const fromJsonFactory = _$SchedulePostDtoFromJson;
  static const toJsonFactory = _$SchedulePostDtoToJson;
  Map<String, dynamic> toJson() => _$SchedulePostDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SchedulePostDto &&
            (identical(other.scheduleId, scheduleId) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleId, scheduleId)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.hourOpen, hourOpen) ||
                const DeepCollectionEquality()
                    .equals(other.hourOpen, hourOpen)) &&
            (identical(other.hourClose, hourClose) ||
                const DeepCollectionEquality()
                    .equals(other.hourClose, hourClose)) &&
            (identical(other.secondHourOpen, secondHourOpen) ||
                const DeepCollectionEquality()
                    .equals(other.secondHourOpen, secondHourOpen)) &&
            (identical(other.secondHourClose, secondHourClose) ||
                const DeepCollectionEquality()
                    .equals(other.secondHourClose, secondHourClose)) &&
            (identical(other.orderDay, orderDay) ||
                const DeepCollectionEquality()
                    .equals(other.orderDay, orderDay)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality().equals(other.localId, localId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scheduleId) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(hourOpen) ^
      const DeepCollectionEquality().hash(hourClose) ^
      const DeepCollectionEquality().hash(secondHourOpen) ^
      const DeepCollectionEquality().hash(secondHourClose) ^
      const DeepCollectionEquality().hash(orderDay) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(localId) ^
      runtimeType.hashCode;
}

extension $SchedulePostDtoExtension on SchedulePostDto {
  SchedulePostDto copyWith(
      {String? scheduleId,
      String? day,
      String? hourOpen,
      String? hourClose,
      String? secondHourOpen,
      String? secondHourClose,
      int? orderDay,
      bool? active,
      String? userId,
      String? localId}) {
    return SchedulePostDto(
        scheduleId: scheduleId ?? this.scheduleId,
        day: day ?? this.day,
        hourOpen: hourOpen ?? this.hourOpen,
        hourClose: hourClose ?? this.hourClose,
        secondHourOpen: secondHourOpen ?? this.secondHourOpen,
        secondHourClose: secondHourClose ?? this.secondHourClose,
        orderDay: orderDay ?? this.orderDay,
        active: active ?? this.active,
        userId: userId ?? this.userId,
        localId: localId ?? this.localId);
  }
}

@JsonSerializable(explicitToJson: true)
class ScreenDto {
  ScreenDto({
    this.screenId,
    this.moduleId,
    this.name,
    this.code,
    this.description,
  });

  factory ScreenDto.fromJson(Map<String, dynamic> json) =>
      _$ScreenDtoFromJson(json);

  @JsonKey(name: 'screenId')
  final String? screenId;
  @JsonKey(name: 'moduleId')
  final String? moduleId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$ScreenDtoFromJson;
  static const toJsonFactory = _$ScreenDtoToJson;
  Map<String, dynamic> toJson() => _$ScreenDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScreenDto &&
            (identical(other.screenId, screenId) ||
                const DeepCollectionEquality()
                    .equals(other.screenId, screenId)) &&
            (identical(other.moduleId, moduleId) ||
                const DeepCollectionEquality()
                    .equals(other.moduleId, moduleId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(screenId) ^
      const DeepCollectionEquality().hash(moduleId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ScreenDtoExtension on ScreenDto {
  ScreenDto copyWith(
      {String? screenId,
      String? moduleId,
      String? name,
      String? code,
      String? description}) {
    return ScreenDto(
        screenId: screenId ?? this.screenId,
        moduleId: moduleId ?? this.moduleId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class ScreenDtoPagedResult {
  ScreenDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ScreenDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ScreenDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ScreenDto>[])
  final List<ScreenDto>? items;
  static const fromJsonFactory = _$ScreenDtoPagedResultFromJson;
  static const toJsonFactory = _$ScreenDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$ScreenDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScreenDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ScreenDtoPagedResultExtension on ScreenDtoPagedResult {
  ScreenDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ScreenDto>? items}) {
    return ScreenDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class SectionDto {
  SectionDto({
    this.sectionId,
    required this.localId,
    this.name,
    this.code,
    this.description,
  });

  factory SectionDto.fromJson(Map<String, dynamic> json) =>
      _$SectionDtoFromJson(json);

  @JsonKey(name: 'sectionId')
  final String? sectionId;
  @JsonKey(name: 'localId')
  final String localId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$SectionDtoFromJson;
  static const toJsonFactory = _$SectionDtoToJson;
  Map<String, dynamic> toJson() => _$SectionDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SectionDto &&
            (identical(other.sectionId, sectionId) ||
                const DeepCollectionEquality()
                    .equals(other.sectionId, sectionId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sectionId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $SectionDtoExtension on SectionDto {
  SectionDto copyWith(
      {String? sectionId,
      String? localId,
      String? name,
      String? code,
      String? description}) {
    return SectionDto(
        sectionId: sectionId ?? this.sectionId,
        localId: localId ?? this.localId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class SectionDtoPagedResult {
  SectionDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory SectionDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$SectionDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <SectionDto>[])
  final List<SectionDto>? items;
  static const fromJsonFactory = _$SectionDtoPagedResultFromJson;
  static const toJsonFactory = _$SectionDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$SectionDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SectionDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $SectionDtoPagedResultExtension on SectionDtoPagedResult {
  SectionDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<SectionDto>? items}) {
    return SectionDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class SelectDto {
  SelectDto({
    this.key,
    this.value,
  });

  factory SelectDto.fromJson(Map<String, dynamic> json) =>
      _$SelectDtoFromJson(json);

  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'value')
  final String? value;
  static const fromJsonFactory = _$SelectDtoFromJson;
  static const toJsonFactory = _$SelectDtoToJson;
  Map<String, dynamic> toJson() => _$SelectDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectDto &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $SelectDtoExtension on SelectDto {
  SelectDto copyWith({String? key, String? value}) {
    return SelectDto(key: key ?? this.key, value: value ?? this.value);
  }
}

@JsonSerializable(explicitToJson: true)
class SubdepartmentDto {
  SubdepartmentDto({
    this.subdepartmentId,
    required this.departmentId,
    this.name,
    this.code,
    this.description,
  });

  factory SubdepartmentDto.fromJson(Map<String, dynamic> json) =>
      _$SubdepartmentDtoFromJson(json);

  @JsonKey(name: 'subdepartmentId')
  final String? subdepartmentId;
  @JsonKey(name: 'departmentId')
  final String departmentId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$SubdepartmentDtoFromJson;
  static const toJsonFactory = _$SubdepartmentDtoToJson;
  Map<String, dynamic> toJson() => _$SubdepartmentDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubdepartmentDto &&
            (identical(other.subdepartmentId, subdepartmentId) ||
                const DeepCollectionEquality()
                    .equals(other.subdepartmentId, subdepartmentId)) &&
            (identical(other.departmentId, departmentId) ||
                const DeepCollectionEquality()
                    .equals(other.departmentId, departmentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subdepartmentId) ^
      const DeepCollectionEquality().hash(departmentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $SubdepartmentDtoExtension on SubdepartmentDto {
  SubdepartmentDto copyWith(
      {String? subdepartmentId,
      String? departmentId,
      String? name,
      String? code,
      String? description}) {
    return SubdepartmentDto(
        subdepartmentId: subdepartmentId ?? this.subdepartmentId,
        departmentId: departmentId ?? this.departmentId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class SubdepartmentDtoPagedResult {
  SubdepartmentDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory SubdepartmentDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$SubdepartmentDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <SubdepartmentDto>[])
  final List<SubdepartmentDto>? items;
  static const fromJsonFactory = _$SubdepartmentDtoPagedResultFromJson;
  static const toJsonFactory = _$SubdepartmentDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$SubdepartmentDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubdepartmentDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $SubdepartmentDtoPagedResultExtension on SubdepartmentDtoPagedResult {
  SubdepartmentDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<SubdepartmentDto>? items}) {
    return SubdepartmentDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class UserAttributesDto {
  UserAttributesDto({
    this.id,
    this.email,
    this.image,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
  });

  factory UserAttributesDto.fromJson(Map<String, dynamic> json) =>
      _$UserAttributesDtoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  static const fromJsonFactory = _$UserAttributesDtoFromJson;
  static const toJsonFactory = _$UserAttributesDtoToJson;
  Map<String, dynamic> toJson() => _$UserAttributesDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAttributesDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      runtimeType.hashCode;
}

extension $UserAttributesDtoExtension on UserAttributesDto {
  UserAttributesDto copyWith(
      {String? id,
      String? email,
      String? image,
      String? firstName,
      String? lastName,
      String? titleAbbreviation}) {
    return UserAttributesDto(
        id: id ?? this.id,
        email: email ?? this.email,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPostDto {
  UserPostDto({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
    this.roleName,
  });

  factory UserPostDto.fromJson(Map<String, dynamic> json) =>
      _$UserPostDtoFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'roleName')
  final String? roleName;
  static const fromJsonFactory = _$UserPostDtoFromJson;
  static const toJsonFactory = _$UserPostDtoToJson;
  Map<String, dynamic> toJson() => _$UserPostDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPostDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.roleName, roleName) ||
                const DeepCollectionEquality()
                    .equals(other.roleName, roleName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(roleName) ^
      runtimeType.hashCode;
}

extension $UserPostDtoExtension on UserPostDto {
  UserPostDto copyWith(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? roleName}) {
    return UserPostDto(
        email: email ?? this.email,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        roleName: roleName ?? this.roleName);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPutDto {
  UserPutDto({
    this.imageFile,
    this.name,
    required this.firstName,
    required this.lastName,
    this.url,
    this.countryCode,
    this.titleAbbreviation,
    this.gender,
    required this.phone,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.costPerAppointment,
  });

  factory UserPutDto.fromJson(Map<String, dynamic> json) =>
      _$UserPutDtoFromJson(json);

  @JsonKey(name: 'imageFile')
  final String? imageFile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  static const fromJsonFactory = _$UserPutDtoFromJson;
  static const toJsonFactory = _$UserPutDtoToJson;
  Map<String, dynamic> toJson() => _$UserPutDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPutDto &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      runtimeType.hashCode;
}

extension $UserPutDtoExtension on UserPutDto {
  UserPutDto copyWith(
      {String? imageFile,
      String? name,
      String? firstName,
      String? lastName,
      String? url,
      String? countryCode,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? phone,
      String? country,
      String? city,
      String? address,
      DateTime? birthDate,
      double? costPerAppointment}) {
    return UserPutDto(
        imageFile: imageFile ?? this.imageFile,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        birthDate: birthDate ?? this.birthDate,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitCreateDto {
  VisitCreateDto({
    this.visitId,
    this.qr,
  });

  factory VisitCreateDto.fromJson(Map<String, dynamic> json) =>
      _$VisitCreateDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'qr')
  final String? qr;
  static const fromJsonFactory = _$VisitCreateDtoFromJson;
  static const toJsonFactory = _$VisitCreateDtoToJson;
  Map<String, dynamic> toJson() => _$VisitCreateDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitCreateDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.qr, qr) ||
                const DeepCollectionEquality().equals(other.qr, qr)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(qr) ^
      runtimeType.hashCode;
}

extension $VisitCreateDtoExtension on VisitCreateDto {
  VisitCreateDto copyWith({String? visitId, String? qr}) {
    return VisitCreateDto(visitId: visitId ?? this.visitId, qr: qr ?? this.qr);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitDetailsDto {
  VisitDetailsDto({
    this.visitId,
    this.localId,
    this.doctorId,
    this.localName,
    this.doctorName,
    this.abbreviation,
    this.firstName,
    this.lastName,
    this.doctorImage,
    this.rating,
    this.visitDate,
    this.startHour,
    this.endHour,
    this.address,
    this.reason,
    this.comments,
    this.cancelled,
    this.cancelOther,
    this.userId,
    this.userName,
    this.userAbbreviation,
    this.userFirstName,
    this.userEmail,
    this.userLastName,
    this.userCel,
    this.userImage,
    this.qr,
    this.userRating,
    this.canceledBy,
    this.userCancel,
    this.visitStatusId,
    this.visitStatus,
    this.visitStatusCode,
    this.cardNo,
    this.pin,
  });

  factory VisitDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$VisitDetailsDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'localId')
  final String? localId;
  @JsonKey(name: 'doctorId')
  final String? doctorId;
  @JsonKey(name: 'localName')
  final String? localName;
  @JsonKey(name: 'doctorName')
  final String? doctorName;
  @JsonKey(name: 'abbreviation')
  final String? abbreviation;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'doctorImage')
  final String? doctorImage;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(
      name: 'cancelled',
      toJson: cancellationOfVisitEnumToJson,
      fromJson: cancellationOfVisitEnumFromJson)
  final enums.CancellationOfVisitEnum? cancelled;
  @JsonKey(name: 'cancelOther')
  final String? cancelOther;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'userAbbreviation')
  final String? userAbbreviation;
  @JsonKey(name: 'userFirstName')
  final String? userFirstName;
  @JsonKey(name: 'userEmail')
  final String? userEmail;
  @JsonKey(name: 'userLastName')
  final String? userLastName;
  @JsonKey(name: 'userCel')
  final String? userCel;
  @JsonKey(name: 'userImage')
  final String? userImage;
  @JsonKey(name: 'qr')
  final String? qr;
  @JsonKey(name: 'userRating')
  final double? userRating;
  @JsonKey(name: 'canceledBy')
  final AppUserDto? canceledBy;
  @JsonKey(name: 'userCancel')
  final bool? userCancel;
  @JsonKey(name: 'visitStatusId')
  final String? visitStatusId;
  @JsonKey(name: 'visitStatus')
  final String? visitStatus;
  @JsonKey(name: 'visitStatusCode')
  final String? visitStatusCode;
  @JsonKey(name: 'cardNo')
  final String? cardNo;
  @JsonKey(name: 'pin')
  final String? pin;
  static const fromJsonFactory = _$VisitDetailsDtoFromJson;
  static const toJsonFactory = _$VisitDetailsDtoToJson;
  Map<String, dynamic> toJson() => _$VisitDetailsDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitDetailsDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.doctorId, doctorId) ||
                const DeepCollectionEquality()
                    .equals(other.doctorId, doctorId)) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality()
                    .equals(other.localName, localName)) &&
            (identical(other.doctorName, doctorName) ||
                const DeepCollectionEquality()
                    .equals(other.doctorName, doctorName)) &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.abbreviation, abbreviation)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.doctorImage, doctorImage) ||
                const DeepCollectionEquality()
                    .equals(other.doctorImage, doctorImage)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality()
                    .equals(other.endHour, endHour)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.cancelled, cancelled) ||
                const DeepCollectionEquality()
                    .equals(other.cancelled, cancelled)) &&
            (identical(other.cancelOther, cancelOther) ||
                const DeepCollectionEquality()
                    .equals(other.cancelOther, cancelOther)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userAbbreviation, userAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.userAbbreviation, userAbbreviation)) &&
            (identical(other.userFirstName, userFirstName) ||
                const DeepCollectionEquality()
                    .equals(other.userFirstName, userFirstName)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.userLastName, userLastName) || const DeepCollectionEquality().equals(other.userLastName, userLastName)) &&
            (identical(other.userCel, userCel) || const DeepCollectionEquality().equals(other.userCel, userCel)) &&
            (identical(other.userImage, userImage) || const DeepCollectionEquality().equals(other.userImage, userImage)) &&
            (identical(other.qr, qr) || const DeepCollectionEquality().equals(other.qr, qr)) &&
            (identical(other.userRating, userRating) || const DeepCollectionEquality().equals(other.userRating, userRating)) &&
            (identical(other.canceledBy, canceledBy) || const DeepCollectionEquality().equals(other.canceledBy, canceledBy)) &&
            (identical(other.userCancel, userCancel) || const DeepCollectionEquality().equals(other.userCancel, userCancel)) &&
            (identical(other.visitStatusId, visitStatusId) || const DeepCollectionEquality().equals(other.visitStatusId, visitStatusId)) &&
            (identical(other.visitStatus, visitStatus) || const DeepCollectionEquality().equals(other.visitStatus, visitStatus)) &&
            (identical(other.visitStatusCode, visitStatusCode) || const DeepCollectionEquality().equals(other.visitStatusCode, visitStatusCode)) &&
            (identical(other.cardNo, cardNo) || const DeepCollectionEquality().equals(other.cardNo, cardNo)) &&
            (identical(other.pin, pin) || const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(doctorId) ^
      const DeepCollectionEquality().hash(localName) ^
      const DeepCollectionEquality().hash(doctorName) ^
      const DeepCollectionEquality().hash(abbreviation) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(doctorImage) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(cancelled) ^
      const DeepCollectionEquality().hash(cancelOther) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userAbbreviation) ^
      const DeepCollectionEquality().hash(userFirstName) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(userLastName) ^
      const DeepCollectionEquality().hash(userCel) ^
      const DeepCollectionEquality().hash(userImage) ^
      const DeepCollectionEquality().hash(qr) ^
      const DeepCollectionEquality().hash(userRating) ^
      const DeepCollectionEquality().hash(canceledBy) ^
      const DeepCollectionEquality().hash(userCancel) ^
      const DeepCollectionEquality().hash(visitStatusId) ^
      const DeepCollectionEquality().hash(visitStatus) ^
      const DeepCollectionEquality().hash(visitStatusCode) ^
      const DeepCollectionEquality().hash(cardNo) ^
      const DeepCollectionEquality().hash(pin) ^
      runtimeType.hashCode;
}

extension $VisitDetailsDtoExtension on VisitDetailsDto {
  VisitDetailsDto copyWith(
      {String? visitId,
      String? localId,
      String? doctorId,
      String? localName,
      String? doctorName,
      String? abbreviation,
      String? firstName,
      String? lastName,
      String? doctorImage,
      double? rating,
      DateTime? visitDate,
      String? startHour,
      String? endHour,
      String? address,
      String? reason,
      String? comments,
      enums.CancellationOfVisitEnum? cancelled,
      String? cancelOther,
      String? userId,
      String? userName,
      String? userAbbreviation,
      String? userFirstName,
      String? userEmail,
      String? userLastName,
      String? userCel,
      String? userImage,
      String? qr,
      double? userRating,
      AppUserDto? canceledBy,
      bool? userCancel,
      String? visitStatusId,
      String? visitStatus,
      String? visitStatusCode,
      String? cardNo,
      String? pin}) {
    return VisitDetailsDto(
        visitId: visitId ?? this.visitId,
        localId: localId ?? this.localId,
        doctorId: doctorId ?? this.doctorId,
        localName: localName ?? this.localName,
        doctorName: doctorName ?? this.doctorName,
        abbreviation: abbreviation ?? this.abbreviation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        doctorImage: doctorImage ?? this.doctorImage,
        rating: rating ?? this.rating,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour,
        address: address ?? this.address,
        reason: reason ?? this.reason,
        comments: comments ?? this.comments,
        cancelled: cancelled ?? this.cancelled,
        cancelOther: cancelOther ?? this.cancelOther,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userAbbreviation: userAbbreviation ?? this.userAbbreviation,
        userFirstName: userFirstName ?? this.userFirstName,
        userEmail: userEmail ?? this.userEmail,
        userLastName: userLastName ?? this.userLastName,
        userCel: userCel ?? this.userCel,
        userImage: userImage ?? this.userImage,
        qr: qr ?? this.qr,
        userRating: userRating ?? this.userRating,
        canceledBy: canceledBy ?? this.canceledBy,
        userCancel: userCancel ?? this.userCancel,
        visitStatusId: visitStatusId ?? this.visitStatusId,
        visitStatus: visitStatus ?? this.visitStatus,
        visitStatusCode: visitStatusCode ?? this.visitStatusCode,
        cardNo: cardNo ?? this.cardNo,
        pin: pin ?? this.pin);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitDto {
  VisitDto({
    this.visitId,
    required this.localId,
    required this.userId,
    required this.providerId,
    required this.reason,
    this.comments,
    this.cancelled,
    this.cancelOther,
    required this.visitDate,
    required this.startHour,
    required this.endHour,
    this.visitStatusId,
  });

  factory VisitDto.fromJson(Map<String, dynamic> json) =>
      _$VisitDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'localId')
  final String localId;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'providerId')
  final String providerId;
  @JsonKey(name: 'reason')
  final String reason;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(
      name: 'cancelled',
      toJson: cancellationOfVisitEnumToJson,
      fromJson: cancellationOfVisitEnumFromJson)
  final enums.CancellationOfVisitEnum? cancelled;
  @JsonKey(name: 'cancelOther')
  final String? cancelOther;
  @JsonKey(name: 'visitDate')
  final DateTime visitDate;
  @JsonKey(name: 'startHour')
  final String startHour;
  @JsonKey(name: 'endHour')
  final String endHour;
  @JsonKey(name: 'visitStatusId')
  final String? visitStatusId;
  static const fromJsonFactory = _$VisitDtoFromJson;
  static const toJsonFactory = _$VisitDtoToJson;
  Map<String, dynamic> toJson() => _$VisitDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.cancelled, cancelled) ||
                const DeepCollectionEquality()
                    .equals(other.cancelled, cancelled)) &&
            (identical(other.cancelOther, cancelOther) ||
                const DeepCollectionEquality()
                    .equals(other.cancelOther, cancelOther)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality()
                    .equals(other.endHour, endHour)) &&
            (identical(other.visitStatusId, visitStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatusId, visitStatusId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(cancelled) ^
      const DeepCollectionEquality().hash(cancelOther) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      const DeepCollectionEquality().hash(visitStatusId) ^
      runtimeType.hashCode;
}

extension $VisitDtoExtension on VisitDto {
  VisitDto copyWith(
      {String? visitId,
      String? localId,
      String? userId,
      String? providerId,
      String? reason,
      String? comments,
      enums.CancellationOfVisitEnum? cancelled,
      String? cancelOther,
      DateTime? visitDate,
      String? startHour,
      String? endHour,
      String? visitStatusId}) {
    return VisitDto(
        visitId: visitId ?? this.visitId,
        localId: localId ?? this.localId,
        userId: userId ?? this.userId,
        providerId: providerId ?? this.providerId,
        reason: reason ?? this.reason,
        comments: comments ?? this.comments,
        cancelled: cancelled ?? this.cancelled,
        cancelOther: cancelOther ?? this.cancelOther,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour,
        visitStatusId: visitStatusId ?? this.visitStatusId);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitDtoPagedResult {
  VisitDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VisitDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VisitDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VisitDto>[])
  final List<VisitDto>? items;
  static const fromJsonFactory = _$VisitDtoPagedResultFromJson;
  static const toJsonFactory = _$VisitDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$VisitDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VisitDtoPagedResultExtension on VisitDtoPagedResult {
  VisitDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VisitDto>? items}) {
    return VisitDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitNextPendingDto {
  VisitNextPendingDto({
    this.visitId,
    this.localId,
    this.doctorId,
    this.localName,
    this.doctorName,
    this.abbreviation,
    this.firstName,
    this.lastName,
    this.doctorImage,
    this.rating,
    this.visitDate,
    this.startHour,
    this.endHour,
  });

  factory VisitNextPendingDto.fromJson(Map<String, dynamic> json) =>
      _$VisitNextPendingDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'localId')
  final String? localId;
  @JsonKey(name: 'doctorId')
  final String? doctorId;
  @JsonKey(name: 'localName')
  final String? localName;
  @JsonKey(name: 'doctorName')
  final String? doctorName;
  @JsonKey(name: 'abbreviation')
  final String? abbreviation;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'doctorImage')
  final String? doctorImage;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  static const fromJsonFactory = _$VisitNextPendingDtoFromJson;
  static const toJsonFactory = _$VisitNextPendingDtoToJson;
  Map<String, dynamic> toJson() => _$VisitNextPendingDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitNextPendingDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.doctorId, doctorId) ||
                const DeepCollectionEquality()
                    .equals(other.doctorId, doctorId)) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality()
                    .equals(other.localName, localName)) &&
            (identical(other.doctorName, doctorName) ||
                const DeepCollectionEquality()
                    .equals(other.doctorName, doctorName)) &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.abbreviation, abbreviation)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.doctorImage, doctorImage) ||
                const DeepCollectionEquality()
                    .equals(other.doctorImage, doctorImage)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality().equals(other.endHour, endHour)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(doctorId) ^
      const DeepCollectionEquality().hash(localName) ^
      const DeepCollectionEquality().hash(doctorName) ^
      const DeepCollectionEquality().hash(abbreviation) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(doctorImage) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      runtimeType.hashCode;
}

extension $VisitNextPendingDtoExtension on VisitNextPendingDto {
  VisitNextPendingDto copyWith(
      {String? visitId,
      String? localId,
      String? doctorId,
      String? localName,
      String? doctorName,
      String? abbreviation,
      String? firstName,
      String? lastName,
      String? doctorImage,
      double? rating,
      DateTime? visitDate,
      String? startHour,
      String? endHour}) {
    return VisitNextPendingDto(
        visitId: visitId ?? this.visitId,
        localId: localId ?? this.localId,
        doctorId: doctorId ?? this.doctorId,
        localName: localName ?? this.localName,
        doctorName: doctorName ?? this.doctorName,
        abbreviation: abbreviation ?? this.abbreviation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        doctorImage: doctorImage ?? this.doctorImage,
        rating: rating ?? this.rating,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitNextPendingResidentDto {
  VisitNextPendingResidentDto({
    this.visitId,
    this.localId,
    this.userId,
    this.qr,
    this.localName,
    this.userName,
    this.abbreviation,
    this.firstName,
    this.lastName,
    this.userImage,
    this.reason,
    this.comments,
    this.rating,
    this.visitStatusId,
    this.visitStatus,
    this.visitStatusCode,
    this.visitDate,
    this.startHour,
    this.endHour,
  });

  factory VisitNextPendingResidentDto.fromJson(Map<String, dynamic> json) =>
      _$VisitNextPendingResidentDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'localId')
  final String? localId;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'qr')
  final String? qr;
  @JsonKey(name: 'localName')
  final String? localName;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'abbreviation')
  final String? abbreviation;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'userImage')
  final String? userImage;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'visitStatusId')
  final String? visitStatusId;
  @JsonKey(name: 'visitStatus')
  final String? visitStatus;
  @JsonKey(name: 'visitStatusCode')
  final String? visitStatusCode;
  @JsonKey(name: 'visitDate')
  final DateTime? visitDate;
  @JsonKey(name: 'startHour')
  final String? startHour;
  @JsonKey(name: 'endHour')
  final String? endHour;
  static const fromJsonFactory = _$VisitNextPendingResidentDtoFromJson;
  static const toJsonFactory = _$VisitNextPendingResidentDtoToJson;
  Map<String, dynamic> toJson() => _$VisitNextPendingResidentDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitNextPendingResidentDto &&
            (identical(other.visitId, visitId) ||
                const DeepCollectionEquality()
                    .equals(other.visitId, visitId)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.qr, qr) ||
                const DeepCollectionEquality().equals(other.qr, qr)) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality()
                    .equals(other.localName, localName)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.abbreviation, abbreviation)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.userImage, userImage) ||
                const DeepCollectionEquality()
                    .equals(other.userImage, userImage)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.visitStatusId, visitStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatusId, visitStatusId)) &&
            (identical(other.visitStatus, visitStatus) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatus, visitStatus)) &&
            (identical(other.visitStatusCode, visitStatusCode) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatusCode, visitStatusCode)) &&
            (identical(other.visitDate, visitDate) ||
                const DeepCollectionEquality()
                    .equals(other.visitDate, visitDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.endHour, endHour) ||
                const DeepCollectionEquality().equals(other.endHour, endHour)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(qr) ^
      const DeepCollectionEquality().hash(localName) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(abbreviation) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(userImage) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(visitStatusId) ^
      const DeepCollectionEquality().hash(visitStatus) ^
      const DeepCollectionEquality().hash(visitStatusCode) ^
      const DeepCollectionEquality().hash(visitDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      runtimeType.hashCode;
}

extension $VisitNextPendingResidentDtoExtension on VisitNextPendingResidentDto {
  VisitNextPendingResidentDto copyWith(
      {String? visitId,
      String? localId,
      String? userId,
      String? qr,
      String? localName,
      String? userName,
      String? abbreviation,
      String? firstName,
      String? lastName,
      String? userImage,
      String? reason,
      String? comments,
      double? rating,
      String? visitStatusId,
      String? visitStatus,
      String? visitStatusCode,
      DateTime? visitDate,
      String? startHour,
      String? endHour}) {
    return VisitNextPendingResidentDto(
        visitId: visitId ?? this.visitId,
        localId: localId ?? this.localId,
        userId: userId ?? this.userId,
        qr: qr ?? this.qr,
        localName: localName ?? this.localName,
        userName: userName ?? this.userName,
        abbreviation: abbreviation ?? this.abbreviation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        userImage: userImage ?? this.userImage,
        reason: reason ?? this.reason,
        comments: comments ?? this.comments,
        rating: rating ?? this.rating,
        visitStatusId: visitStatusId ?? this.visitStatusId,
        visitStatus: visitStatus ?? this.visitStatus,
        visitStatusCode: visitStatusCode ?? this.visitStatusCode,
        visitDate: visitDate ?? this.visitDate,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitNextPendingResidentDtoPagedResult {
  VisitNextPendingResidentDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VisitNextPendingResidentDtoPagedResult.fromJson(
          Map<String, dynamic> json) =>
      _$VisitNextPendingResidentDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VisitNextPendingResidentDto>[])
  final List<VisitNextPendingResidentDto>? items;
  static const fromJsonFactory =
      _$VisitNextPendingResidentDtoPagedResultFromJson;
  static const toJsonFactory = _$VisitNextPendingResidentDtoPagedResultToJson;
  Map<String, dynamic> toJson() =>
      _$VisitNextPendingResidentDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitNextPendingResidentDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VisitNextPendingResidentDtoPagedResultExtension
    on VisitNextPendingResidentDtoPagedResult {
  VisitNextPendingResidentDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VisitNextPendingResidentDto>? items}) {
    return VisitNextPendingResidentDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitStatusDto {
  VisitStatusDto({
    this.visitStatusId,
    this.name,
    this.code,
    this.description,
  });

  factory VisitStatusDto.fromJson(Map<String, dynamic> json) =>
      _$VisitStatusDtoFromJson(json);

  @JsonKey(name: 'visitStatusId')
  final String? visitStatusId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$VisitStatusDtoFromJson;
  static const toJsonFactory = _$VisitStatusDtoToJson;
  Map<String, dynamic> toJson() => _$VisitStatusDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitStatusDto &&
            (identical(other.visitStatusId, visitStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.visitStatusId, visitStatusId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(visitStatusId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $VisitStatusDtoExtension on VisitStatusDto {
  VisitStatusDto copyWith(
      {String? visitStatusId,
      String? name,
      String? code,
      String? description}) {
    return VisitStatusDto(
        visitStatusId: visitStatusId ?? this.visitStatusId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitStatusDtoPagedResult {
  VisitStatusDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VisitStatusDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VisitStatusDtoPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VisitStatusDto>[])
  final List<VisitStatusDto>? items;
  static const fromJsonFactory = _$VisitStatusDtoPagedResultFromJson;
  static const toJsonFactory = _$VisitStatusDtoPagedResultToJson;
  Map<String, dynamic> toJson() => _$VisitStatusDtoPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitStatusDtoPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VisitStatusDtoPagedResultExtension on VisitStatusDtoPagedResult {
  VisitStatusDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VisitStatusDto>? items}) {
    return VisitStatusDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitorDto {
  VisitorDto({
    required this.phone,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.birthDate,
    this.gender,
  });

  factory VisitorDto.fromJson(Map<String, dynamic> json) =>
      _$VisitorDtoFromJson(json);

  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  static const fromJsonFactory = _$VisitorDtoFromJson;
  static const toJsonFactory = _$VisitorDtoToJson;
  Map<String, dynamic> toJson() => _$VisitorDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VisitorDto &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(gender) ^
      runtimeType.hashCode;
}

extension $VisitorDtoExtension on VisitorDto {
  VisitorDto copyWith(
      {String? phone,
      String? firstName,
      String? lastName,
      String? email,
      DateTime? birthDate,
      enums.GenderEnum? gender}) {
    return VisitorDto(
        phone: phone ?? this.phone,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        birthDate: birthDate ?? this.birthDate,
        gender: gender ?? this.gender);
  }
}

@JsonSerializable(explicitToJson: true)
class UserSearchDto {
  UserSearchDto({
    required this.page,
    this.search,
    required this.pageSize,
    this.departments,
    this.subDepartments,
    this.role,
  });

  factory UserSearchDto.fromJson(Map<String, dynamic> json) =>
      _$UserSearchDtoFromJson(json);

  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'search')
  final String? search;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'departments', defaultValue: <String>[])
  final List<String>? departments;
  @JsonKey(name: 'subDepartments', defaultValue: <String>[])
  final List<String>? subDepartments;
  @JsonKey(name: 'role')
  final String? role;
  static const fromJsonFactory = _$UserSearchDtoFromJson;
  static const toJsonFactory = _$UserSearchDtoToJson;
  Map<String, dynamic> toJson() => _$UserSearchDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserSearchDto &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.departments, departments) ||
                const DeepCollectionEquality()
                    .equals(other.departments, departments)) &&
            (identical(other.subDepartments, subDepartments) ||
                const DeepCollectionEquality()
                    .equals(other.subDepartments, subDepartments)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(departments) ^
      const DeepCollectionEquality().hash(subDepartments) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $UserSearchDtoExtension on UserSearchDto {
  UserSearchDto copyWith(
      {int? page,
      String? search,
      int? pageSize,
      List<String>? departments,
      List<String>? subDepartments,
      String? role}) {
    return UserSearchDto(
        page: page ?? this.page,
        search: search ?? this.search,
        pageSize: pageSize ?? this.pageSize,
        departments: departments ?? this.departments,
        subDepartments: subDepartments ?? this.subDepartments,
        role: role ?? this.role);
  }
}

String? cancellationOfVisitEnumToJson(
    enums.CancellationOfVisitEnum? cancellationOfVisitEnum) {
  return enums.$CancellationOfVisitEnumMap[cancellationOfVisitEnum];
}

enums.CancellationOfVisitEnum cancellationOfVisitEnumFromJson(
  Object? cancellationOfVisitEnum, [
  enums.CancellationOfVisitEnum? defaultValue,
]) {
  if (cancellationOfVisitEnum is String) {
    return enums.$CancellationOfVisitEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                cancellationOfVisitEnum.toLowerCase(),
            orElse: () => const MapEntry(
                enums.CancellationOfVisitEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$CancellationOfVisitEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.CancellationOfVisitEnum.swaggerGeneratedUnknown;
}

List<String> cancellationOfVisitEnumListToJson(
    List<enums.CancellationOfVisitEnum>? cancellationOfVisitEnum) {
  if (cancellationOfVisitEnum == null) {
    return [];
  }

  return cancellationOfVisitEnum
      .map((e) => enums.$CancellationOfVisitEnumMap[e]!)
      .toList();
}

List<enums.CancellationOfVisitEnum> cancellationOfVisitEnumListFromJson(
  List? cancellationOfVisitEnum, [
  List<enums.CancellationOfVisitEnum>? defaultValue,
]) {
  if (cancellationOfVisitEnum == null) {
    return defaultValue ?? [];
  }

  return cancellationOfVisitEnum
      .map((e) => cancellationOfVisitEnumFromJson(e.toString()))
      .toList();
}

String? entitiesEnumToJson(enums.EntitiesEnum? entitiesEnum) {
  return enums.$EntitiesEnumMap[entitiesEnum];
}

enums.EntitiesEnum entitiesEnumFromJson(
  Object? entitiesEnum, [
  enums.EntitiesEnum? defaultValue,
]) {
  if (entitiesEnum is String) {
    return enums.$EntitiesEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == entitiesEnum.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.EntitiesEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$EntitiesEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.EntitiesEnum.swaggerGeneratedUnknown;
}

List<String> entitiesEnumListToJson(List<enums.EntitiesEnum>? entitiesEnum) {
  if (entitiesEnum == null) {
    return [];
  }

  return entitiesEnum.map((e) => enums.$EntitiesEnumMap[e]!).toList();
}

List<enums.EntitiesEnum> entitiesEnumListFromJson(
  List? entitiesEnum, [
  List<enums.EntitiesEnum>? defaultValue,
]) {
  if (entitiesEnum == null) {
    return defaultValue ?? [];
  }

  return entitiesEnum.map((e) => entitiesEnumFromJson(e.toString())).toList();
}

String? genderEnumToJson(enums.GenderEnum? genderEnum) {
  return enums.$GenderEnumMap[genderEnum];
}

enums.GenderEnum genderEnumFromJson(
  Object? genderEnum, [
  enums.GenderEnum? defaultValue,
]) {
  if (genderEnum is String) {
    return enums.$GenderEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == genderEnum.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.GenderEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$GenderEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.GenderEnum.swaggerGeneratedUnknown;
}

List<String> genderEnumListToJson(List<enums.GenderEnum>? genderEnum) {
  if (genderEnum == null) {
    return [];
  }

  return genderEnum.map((e) => enums.$GenderEnumMap[e]!).toList();
}

List<enums.GenderEnum> genderEnumListFromJson(
  List? genderEnum, [
  List<enums.GenderEnum>? defaultValue,
]) {
  if (genderEnum == null) {
    return defaultValue ?? [];
  }

  return genderEnum.map((e) => genderEnumFromJson(e.toString())).toList();
}

String? notificationPriorityToJson(
    enums.NotificationPriority? notificationPriority) {
  return enums.$NotificationPriorityMap[notificationPriority];
}

enums.NotificationPriority notificationPriorityFromJson(
  Object? notificationPriority, [
  enums.NotificationPriority? defaultValue,
]) {
  if (notificationPriority is String) {
    return enums.$NotificationPriorityMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                notificationPriority.toLowerCase(),
            orElse: () => const MapEntry(
                enums.NotificationPriority.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$NotificationPriorityMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.NotificationPriority.swaggerGeneratedUnknown;
}

List<String> notificationPriorityListToJson(
    List<enums.NotificationPriority>? notificationPriority) {
  if (notificationPriority == null) {
    return [];
  }

  return notificationPriority
      .map((e) => enums.$NotificationPriorityMap[e]!)
      .toList();
}

List<enums.NotificationPriority> notificationPriorityListFromJson(
  List? notificationPriority, [
  List<enums.NotificationPriority>? defaultValue,
]) {
  if (notificationPriority == null) {
    return defaultValue ?? [];
  }

  return notificationPriority
      .map((e) => notificationPriorityFromJson(e.toString()))
      .toList();
}

String? platFormEnumToJson(enums.PlatFormEnum? platFormEnum) {
  return enums.$PlatFormEnumMap[platFormEnum];
}

enums.PlatFormEnum platFormEnumFromJson(
  Object? platFormEnum, [
  enums.PlatFormEnum? defaultValue,
]) {
  if (platFormEnum is String) {
    return enums.$PlatFormEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == platFormEnum.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.PlatFormEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PlatFormEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PlatFormEnum.swaggerGeneratedUnknown;
}

List<String> platFormEnumListToJson(List<enums.PlatFormEnum>? platFormEnum) {
  if (platFormEnum == null) {
    return [];
  }

  return platFormEnum.map((e) => enums.$PlatFormEnumMap[e]!).toList();
}

List<enums.PlatFormEnum> platFormEnumListFromJson(
  List? platFormEnum, [
  List<enums.PlatFormEnum>? defaultValue,
]) {
  if (platFormEnum == null) {
    return defaultValue ?? [];
  }

  return platFormEnum.map((e) => platFormEnumFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
