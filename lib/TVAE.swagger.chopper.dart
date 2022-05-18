//Generated code

part of 'TVAE.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TVAE extends TVAE {
  _$TVAE([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TVAE;

  @override
  Future<Response<dynamic>> _apiAccountRegistrarPost(
      {required ApiUserDto? body}) {
    final $url = '/api/Account/registrar';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAccountLoginPost({required LoginDto? body}) {
    final $url = '/api/Account/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAccountRefreshtokenPost(
      {required AuthResponseDto? body}) {
    final $url = '/api/Account/refreshtoken';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ContactDto>>> _apiContactGet() {
    final $url = '/api/Contact';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ContactDto>, ContactDto>($request);
  }

  @override
  Future<Response<String>> _apiContactPost({required ContactDto? body}) {
    final $url = '/api/Contact';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ContactDto>> _apiContactIdGet({required String? id}) {
    final $url = '/api/Contact/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ContactDto, ContactDto>($request);
  }

  @override
  Future<Response<bool>> _apiContactIdPut(
      {required String? id, required ContactDto? body}) {
    final $url = '/api/Contact/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiContactIdDelete({required String? id}) {
    final $url = '/api/Contact/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<DepartmentDto>>> _apiDepartmentGet() {
    final $url = '/api/Department';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<DepartmentDto>, DepartmentDto>($request);
  }

  @override
  Future<Response<String>> _apiDepartmentPost({required DepartmentDto? body}) {
    final $url = '/api/Department';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<DepartmentDto>> _apiDepartmentIdGet({required String? id}) {
    final $url = '/api/Department/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DepartmentDto, DepartmentDto>($request);
  }

  @override
  Future<Response<bool>> _apiDepartmentIdPut(
      {required String? id, required DepartmentDto? body}) {
    final $url = '/api/Department/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiDepartmentIdDelete({required String? id}) {
    final $url = '/api/Department/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<LevelDto>>> _apiLevelGet() {
    final $url = '/api/Level';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<LevelDto>, LevelDto>($request);
  }

  @override
  Future<Response<String>> _apiLevelPost({required LevelDto? body}) {
    final $url = '/api/Level';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<LevelDto>> _apiLevelIdGet({required String? id}) {
    final $url = '/api/Level/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<LevelDto, LevelDto>($request);
  }

  @override
  Future<Response<bool>> _apiLevelIdPut(
      {required String? id, required LevelDto? body}) {
    final $url = '/api/Level/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiLevelIdDelete({required String? id}) {
    final $url = '/api/Level/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<LocalDto>>> _apiLocalGet() {
    final $url = '/api/Local';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<LocalDto>, LocalDto>($request);
  }

  @override
  Future<Response<String>> _apiLocalPost({required LocalDto? body}) {
    final $url = '/api/Local';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<LocalDto>> _apiLocalIdGet({required String? id}) {
    final $url = '/api/Local/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<LocalDto, LocalDto>($request);
  }

  @override
  Future<Response<bool>> _apiLocalIdPut(
      {required String? id, required LocalDto? body}) {
    final $url = '/api/Local/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiLocalIdDelete({required String? id}) {
    final $url = '/api/Local/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<LocalStatusDto>>> _apiLocalStatusGet() {
    final $url = '/api/LocalStatus';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<LocalStatusDto>, LocalStatusDto>($request);
  }

  @override
  Future<Response<String>> _apiLocalStatusPost(
      {required LocalStatusDto? body}) {
    final $url = '/api/LocalStatus';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<LocalStatusDto>> _apiLocalStatusIdGet({required String? id}) {
    final $url = '/api/LocalStatus/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<LocalStatusDto, LocalStatusDto>($request);
  }

  @override
  Future<Response<bool>> _apiLocalStatusIdPut(
      {required String? id, required LocalStatusDto? body}) {
    final $url = '/api/LocalStatus/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiLocalStatusIdDelete({required String? id}) {
    final $url = '/api/LocalStatus/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<LocalTypeDto>>> _apiLocalTypeGet() {
    final $url = '/api/LocalType';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<LocalTypeDto>, LocalTypeDto>($request);
  }

  @override
  Future<Response<String>> _apiLocalTypePost({required LocalTypeDto? body}) {
    final $url = '/api/LocalType';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<LocalTypeDto>> _apiLocalTypeIdGet({required String? id}) {
    final $url = '/api/LocalType/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<LocalTypeDto, LocalTypeDto>($request);
  }

  @override
  Future<Response<bool>> _apiLocalTypeIdPut(
      {required String? id, required LocalTypeDto? body}) {
    final $url = '/api/LocalType/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiLocalTypeIdDelete({required String? id}) {
    final $url = '/api/LocalType/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ModuleDto>>> _apiModuleGet() {
    final $url = '/api/Module';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ModuleDto>, ModuleDto>($request);
  }

  @override
  Future<Response<String>> _apiModulePost({required ModuleDto? body}) {
    final $url = '/api/Module';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ModuleDto>> _apiModuleIdGet({required String? id}) {
    final $url = '/api/Module/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ModuleDto, ModuleDto>($request);
  }

  @override
  Future<Response<bool>> _apiModuleIdPut(
      {required String? id, required ModuleDto? body}) {
    final $url = '/api/Module/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiModuleIdDelete({required String? id}) {
    final $url = '/api/Module/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ProjectDto>>> _apiProjectGet() {
    final $url = '/api/Project';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProjectDto>, ProjectDto>($request);
  }

  @override
  Future<Response<String>> _apiProjectPost({required ProjectDto? body}) {
    final $url = '/api/Project';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ProjectDto>> _apiProjectIdGet({required String? id}) {
    final $url = '/api/Project/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProjectDto, ProjectDto>($request);
  }

  @override
  Future<Response<bool>> _apiProjectIdPut(
      {required String? id, required ProjectDto? body}) {
    final $url = '/api/Project/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiProjectIdDelete({required String? id}) {
    final $url = '/api/Project/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ScreenDto>>> _apiScreenGet() {
    final $url = '/api/Screen';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ScreenDto>, ScreenDto>($request);
  }

  @override
  Future<Response<String>> _apiScreenPost({required ScreenDto? body}) {
    final $url = '/api/Screen';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ScreenDto>> _apiScreenIdGet({required String? id}) {
    final $url = '/api/Screen/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ScreenDto, ScreenDto>($request);
  }

  @override
  Future<Response<bool>> _apiScreenIdPut(
      {required String? id, required ScreenDto? body}) {
    final $url = '/api/Screen/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiScreenIdDelete({required String? id}) {
    final $url = '/api/Screen/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<SubdepartmentDto>>> _apiSubdepartmentGet() {
    final $url = '/api/Subdepartment';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<SubdepartmentDto>, SubdepartmentDto>($request);
  }

  @override
  Future<Response<String>> _apiSubdepartmentPost(
      {required SubdepartmentDto? body}) {
    final $url = '/api/Subdepartment';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<SubdepartmentDto>> _apiSubdepartmentIdGet(
      {required String? id}) {
    final $url = '/api/Subdepartment/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SubdepartmentDto, SubdepartmentDto>($request);
  }

  @override
  Future<Response<bool>> _apiSubdepartmentIdPut(
      {required String? id, required SubdepartmentDto? body}) {
    final $url = '/api/Subdepartment/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiSubdepartmentIdDelete({required String? id}) {
    final $url = '/api/Subdepartment/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<VisitDto>>> _apiVisitGet() {
    final $url = '/api/Visit';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<VisitDto>, VisitDto>($request);
  }

  @override
  Future<Response<String>> _apiVisitPost({required VisitDto? body}) {
    final $url = '/api/Visit';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VisitDtoPagedResult>> _apiVisitGetAllGet(
      {int? startIndex, int? pageNumber, int? pageSize}) {
    final $url = '/api/Visit/GetAll';
    final $params = <String, dynamic>{
      'StartIndex': startIndex,
      'PageNumber': pageNumber,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<VisitDtoPagedResult, VisitDtoPagedResult>($request);
  }

  @override
  Future<Response<VisitDto>> _apiVisitIdGet({required String? id}) {
    final $url = '/api/Visit/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VisitDto, VisitDto>($request);
  }

  @override
  Future<Response<bool>> _apiVisitIdPut(
      {required String? id, required VisitDto? body}) {
    final $url = '/api/Visit/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiVisitIdDelete({required String? id}) {
    final $url = '/api/Visit/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }
}
