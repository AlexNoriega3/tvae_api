// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;

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

  ///Endpoint para realizar el login del usuario de los usuarios
  Future<chopper.Response> apiAccountLoginPost({required LoginDto? body}) {
    return _apiAccountLoginPost(body: body);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
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
      {required DepartmentDto? body}) {
    return _apiDepartmentPost(body: body);
  }

  ///
  @Post(path: '/api/Department')
  Future<chopper.Response<String>> _apiDepartmentPost(
      {@Body() required DepartmentDto? body});

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
      {required String? id, required DepartmentDto? body}) {
    return _apiDepartmentIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Department/{id}')
  Future<chopper.Response<bool>> _apiDepartmentIdPut(
      {@Path('id') required String? id, @Body() required DepartmentDto? body});

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
  Future<chopper.Response<List<ModuleDto>>> apiModuleGet() {
    generatedMapping.putIfAbsent(ModuleDto, () => ModuleDto.fromJsonFactory);

    return _apiModuleGet();
  }

  ///
  @Get(path: '/api/Module')
  Future<chopper.Response<List<ModuleDto>>> _apiModuleGet();

  ///
  Future<chopper.Response<String>> apiModulePost({required ModuleDto? body}) {
    return _apiModulePost(body: body);
  }

  ///
  @Post(path: '/api/Module')
  Future<chopper.Response<String>> _apiModulePost(
      {@Body() required ModuleDto? body});

  ///
  ///@param id
  Future<chopper.Response<ModuleDto>> apiModuleIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ModuleDto, () => ModuleDto.fromJsonFactory);

    return _apiModuleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Module/{id}')
  Future<chopper.Response<ModuleDto>> _apiModuleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiModuleIdPut(
      {required String? id, required ModuleDto? body}) {
    return _apiModuleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Module/{id}')
  Future<chopper.Response<bool>> _apiModuleIdPut(
      {@Path('id') required String? id, @Body() required ModuleDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiModuleIdDelete({required String? id}) {
    return _apiModuleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Module/{id}')
  Future<chopper.Response<bool>> _apiModuleIdDelete(
      {@Path('id') required String? id});

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
  ///@param id
  Future<chopper.Response<bool>> apiProjectIdDelete({required String? id}) {
    return _apiProjectIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Project/{id}')
  Future<chopper.Response<bool>> _apiProjectIdDelete(
      {@Path('id') required String? id});

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
  Future<chopper.Response<List<AppUserDto>>> apiUserGet() {
    generatedMapping.putIfAbsent(AppUserDto, () => AppUserDto.fromJsonFactory);

    return _apiUserGet();
  }

  ///
  @Get(path: '/api/User')
  Future<chopper.Response<List<AppUserDto>>> _apiUserGet();

  ///Endpoint para el registro de los usuarios
  Future<chopper.Response> apiUserPost({required AppUserDto? body}) {
    return _apiUserPost(body: body);
  }

  ///Endpoint para el registro de los usuarios
  @Post(path: '/api/User')
  Future<chopper.Response> _apiUserPost({@Body() required AppUserDto? body});

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
  Future<chopper.Response<bool>> apiUserIdPut(
      {required String? id, required AppUserDto? body}) {
    return _apiUserIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/User/{id}')
  Future<chopper.Response<bool>> _apiUserIdPut(
      {@Path('id') required String? id, @Body() required AppUserDto? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiUserIdDelete({required String? id}) {
    return _apiUserIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/User/{id}')
  Future<chopper.Response<bool>> _apiUserIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<VisitDto>>> apiVisitGet() {
    generatedMapping.putIfAbsent(VisitDto, () => VisitDto.fromJsonFactory);

    return _apiVisitGet();
  }

  ///
  @Get(path: '/api/Visit')
  Future<chopper.Response<List<VisitDto>>> _apiVisitGet();

  ///
  Future<chopper.Response<String>> apiVisitPost({required VisitDto? body}) {
    return _apiVisitPost(body: body);
  }

  ///
  @Post(path: '/api/Visit')
  Future<chopper.Response<String>> _apiVisitPost(
      {@Body() required VisitDto? body});

  ///
  ///@param StartIndex
  ///@param PageNumber
  ///@param PageSize
  Future<chopper.Response<VisitDtoPagedResult>> apiVisitGetAllGet(
      {int? startIndex, int? pageNumber, int? pageSize}) {
    generatedMapping.putIfAbsent(
        VisitDtoPagedResult, () => VisitDtoPagedResult.fromJsonFactory);

    return _apiVisitGetAllGet(
        startIndex: startIndex, pageNumber: pageNumber, pageSize: pageSize);
  }

  ///
  ///@param StartIndex
  ///@param PageNumber
  ///@param PageSize
  @Get(path: '/api/Visit/GetAll')
  Future<chopper.Response<VisitDtoPagedResult>> _apiVisitGetAllGet(
      {@Query('StartIndex') int? startIndex,
      @Query('PageNumber') int? pageNumber,
      @Query('PageSize') int? pageSize});

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
  ///@param id
  Future<chopper.Response<bool>> apiVisitIdDelete({required String? id}) {
    return _apiVisitIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Visit/{id}')
  Future<chopper.Response<bool>> _apiVisitIdDelete(
      {@Path('id') required String? id});
}

@JsonSerializable(explicitToJson: true)
class AppUserDto {
  AppUserDto({
    required this.email,
    required this.password,
    this.id,
    this.name,
    this.firstName,
    this.lastName,
    this.url,
    this.countryCode,
    this.phone,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.active,
  });

  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
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
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$AppUserDtoFromJson;
  static const toJsonFactory = _$AppUserDtoToJson;
  Map<String, dynamic> toJson() => _$AppUserDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUserDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $AppUserDtoExtension on AppUserDto {
  AppUserDto copyWith(
      {String? email,
      String? password,
      String? id,
      String? name,
      String? firstName,
      String? lastName,
      String? url,
      String? countryCode,
      String? phone,
      String? country,
      String? city,
      String? address,
      DateTime? birthDate,
      bool? active}) {
    return AppUserDto(
        email: email ?? this.email,
        password: password ?? this.password,
        id: id ?? this.id,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        birthDate: birthDate ?? this.birthDate,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class AuthResponseDto {
  AuthResponseDto({
    this.userId,
    this.token,
    this.refreshToken,
  });

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
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
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $AuthResponseDtoExtension on AuthResponseDto {
  AuthResponseDto copyWith(
      {String? userId, String? token, String? refreshToken}) {
    return AuthResponseDto(
        userId: userId ?? this.userId,
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken);
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
class DepartmentDto {
  DepartmentDto({
    this.departmentId,
    required this.moduleId,
    this.name,
    this.code,
    this.description,
  });

  factory DepartmentDto.fromJson(Map<String, dynamic> json) =>
      _$DepartmentDtoFromJson(json);

  @JsonKey(name: 'departmentId')
  final String? departmentId;
  @JsonKey(name: 'moduleId')
  final String moduleId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
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
      const DeepCollectionEquality().hash(departmentId) ^
      const DeepCollectionEquality().hash(moduleId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $DepartmentDtoExtension on DepartmentDto {
  DepartmentDto copyWith(
      {String? departmentId,
      String? moduleId,
      String? name,
      String? code,
      String? description}) {
    return DepartmentDto(
        departmentId: departmentId ?? this.departmentId,
        moduleId: moduleId ?? this.moduleId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
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
class LocalDto {
  LocalDto({
    this.localId,
    this.levelId,
    this.statusId,
    this.typeId,
    this.name,
    this.code,
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
      String? description,
      double? meters2}) {
    return LocalDto(
        localId: localId ?? this.localId,
        levelId: levelId ?? this.levelId,
        statusId: statusId ?? this.statusId,
        typeId: typeId ?? this.typeId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        meters2: meters2 ?? this.meters2);
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
class ModuleDto {
  ModuleDto({
    this.moduleId,
    required this.localId,
    this.name,
    this.code,
    this.description,
  });

  factory ModuleDto.fromJson(Map<String, dynamic> json) =>
      _$ModuleDtoFromJson(json);

  @JsonKey(name: 'moduleId')
  final String? moduleId;
  @JsonKey(name: 'localId')
  final String localId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$ModuleDtoFromJson;
  static const toJsonFactory = _$ModuleDtoToJson;
  Map<String, dynamic> toJson() => _$ModuleDtoToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModuleDto &&
            (identical(other.moduleId, moduleId) ||
                const DeepCollectionEquality()
                    .equals(other.moduleId, moduleId)) &&
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
      const DeepCollectionEquality().hash(moduleId) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ModuleDtoExtension on ModuleDto {
  ModuleDto copyWith(
      {String? moduleId,
      String? localId,
      String? name,
      String? code,
      String? description}) {
    return ModuleDto(
        moduleId: moduleId ?? this.moduleId,
        localId: localId ?? this.localId,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
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
                const DeepCollectionEquality().equals(other.logoApp, logoApp)));
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
      String? logoApp}) {
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
        logoApp: logoApp ?? this.logoApp);
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
class TimeOnly {
  TimeOnly({
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.ticks,
  });

  factory TimeOnly.fromJson(Map<String, dynamic> json) =>
      _$TimeOnlyFromJson(json);

  @JsonKey(name: 'hour')
  final int? hour;
  @JsonKey(name: 'minute')
  final int? minute;
  @JsonKey(name: 'second')
  final int? second;
  @JsonKey(name: 'millisecond')
  final int? millisecond;
  @JsonKey(name: 'ticks')
  final num? ticks;
  static const fromJsonFactory = _$TimeOnlyFromJson;
  static const toJsonFactory = _$TimeOnlyToJson;
  Map<String, dynamic> toJson() => _$TimeOnlyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeOnly &&
            (identical(other.hour, hour) ||
                const DeepCollectionEquality().equals(other.hour, hour)) &&
            (identical(other.minute, minute) ||
                const DeepCollectionEquality().equals(other.minute, minute)) &&
            (identical(other.second, second) ||
                const DeepCollectionEquality().equals(other.second, second)) &&
            (identical(other.millisecond, millisecond) ||
                const DeepCollectionEquality()
                    .equals(other.millisecond, millisecond)) &&
            (identical(other.ticks, ticks) ||
                const DeepCollectionEquality().equals(other.ticks, ticks)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hour) ^
      const DeepCollectionEquality().hash(minute) ^
      const DeepCollectionEquality().hash(second) ^
      const DeepCollectionEquality().hash(millisecond) ^
      const DeepCollectionEquality().hash(ticks) ^
      runtimeType.hashCode;
}

extension $TimeOnlyExtension on TimeOnly {
  TimeOnly copyWith(
      {int? hour, int? minute, int? second, int? millisecond, num? ticks}) {
    return TimeOnly(
        hour: hour ?? this.hour,
        minute: minute ?? this.minute,
        second: second ?? this.second,
        millisecond: millisecond ?? this.millisecond,
        ticks: ticks ?? this.ticks);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitDto {
  VisitDto({
    this.visitId,
    required this.id,
    required this.localId,
    this.date,
    this.startHour,
    this.endHour,
  });

  factory VisitDto.fromJson(Map<String, dynamic> json) =>
      _$VisitDtoFromJson(json);

  @JsonKey(name: 'visitId')
  final String? visitId;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'localId')
  final String localId;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'startHour')
  final TimeOnly? startHour;
  @JsonKey(name: 'endHour')
  final TimeOnly? endHour;
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
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.localId, localId) ||
                const DeepCollectionEquality()
                    .equals(other.localId, localId)) &&
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
      const DeepCollectionEquality().hash(visitId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(localId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(endHour) ^
      runtimeType.hashCode;
}

extension $VisitDtoExtension on VisitDto {
  VisitDto copyWith(
      {String? visitId,
      String? id,
      String? localId,
      DateTime? date,
      TimeOnly? startHour,
      TimeOnly? endHour}) {
    return VisitDto(
        visitId: visitId ?? this.visitId,
        id: id ?? this.id,
        localId: localId ?? this.localId,
        date: date ?? this.date,
        startHour: startHour ?? this.startHour,
        endHour: endHour ?? this.endHour);
  }
}

@JsonSerializable(explicitToJson: true)
class VisitDtoPagedResult {
  VisitDtoPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
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
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VisitDtoPagedResultExtension on VisitDtoPagedResult {
  VisitDtoPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      List<VisitDto>? items}) {
    return VisitDtoPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        items: items ?? this.items);
  }
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
