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
  Future<Response<List<AcademicStudiesDto>>> _apiAcademicStudiesGet() {
    final $url = '/api/AcademicStudies';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<AcademicStudiesDto>, AcademicStudiesDto>($request);
  }

  @override
  Future<Response<String>> _apiAcademicStudiesPost(
      {required AcademicStudiesDto? body}) {
    final $url = '/api/AcademicStudies';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AcademicStudiesDtoPagedResult>> _apiAcademicStudiesSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/AcademicStudies/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<AcademicStudiesDtoPagedResult,
        AcademicStudiesDtoPagedResult>($request);
  }

  @override
  Future<Response<AcademicStudiesDto>> _apiAcademicStudiesIdGet(
      {required String? id}) {
    final $url = '/api/AcademicStudies/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AcademicStudiesDto, AcademicStudiesDto>($request);
  }

  @override
  Future<Response<bool>> _apiAcademicStudiesIdPut(
      {required String? id, required AcademicStudiesDto? body}) {
    final $url = '/api/AcademicStudies/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiAcademicStudiesIdDelete({required String? id}) {
    final $url = '/api/AcademicStudies/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
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
  Future<Response<dynamic>> _apiAccountLogoutPost() {
    final $url = '/api/Account/logout';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {required String? userEmail,
          required String? currentPassword,
          required String? newPassword,
          required String? confirmPassword}) {
    final $url =
        '/api/Account/changepassword/${userEmail},${currentPassword},${newPassword},${confirmPassword}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAccountForgotpasswordPost({String? email}) {
    final $url = '/api/Account/forgotpassword';
    final $params = <String, dynamic>{'email': email};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAccountResetpasswordPost(
      {required ResetPasswordModel? body}) {
    final $url = '/api/Account/resetpassword';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ColorDto>>> _apiColorGet() {
    final $url = '/api/Color';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ColorDto>, ColorDto>($request);
  }

  @override
  Future<Response<String>> _apiColorPost({required ColorDto? body}) {
    final $url = '/api/Color';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ColorDtoPagedResult>> _apiColorSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Color/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ColorDtoPagedResult, ColorDtoPagedResult>($request);
  }

  @override
  Future<Response<ColorDto>> _apiColorIdGet({required String? id}) {
    final $url = '/api/Color/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ColorDto, ColorDto>($request);
  }

  @override
  Future<Response<bool>> _apiColorIdPut(
      {required String? id, required ColorDto? body}) {
    final $url = '/api/Color/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiColorIdDelete({required String? id}) {
    final $url = '/api/Color/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
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
  Future<Response<ContactDtoPagedResult>> _apiContactSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Contact/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ContactDtoPagedResult, ContactDtoPagedResult>($request);
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
  Future<Response<DepartmentDtoPagedResult>> _apiDepartmentSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Department/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<DepartmentDtoPagedResult, DepartmentDtoPagedResult>($request);
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
  Future<Response<LevelDtoPagedResult>> _apiLevelSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Level/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<LevelDtoPagedResult, LevelDtoPagedResult>($request);
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
  Future<Response<LocalDtoPagedResult>> _apiLocalSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Local/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<LocalDtoPagedResult, LocalDtoPagedResult>($request);
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
  Future<Response<LocalStatusDtoPagedResult>> _apiLocalStatusSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/LocalStatus/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<LocalStatusDtoPagedResult, LocalStatusDtoPagedResult>($request);
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
  Future<Response<LocalTypeDtoPagedResult>> _apiLocalTypeSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/LocalType/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<LocalTypeDtoPagedResult, LocalTypeDtoPagedResult>($request);
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
  Future<Response<ModuleDtoPagedResult>> _apiModuleSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Module/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ModuleDtoPagedResult, ModuleDtoPagedResult>($request);
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
  Future<Response<List<NotificationsDto>>> _apiNotificationsGet() {
    final $url = '/api/Notifications';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<NotificationsDto>, NotificationsDto>($request);
  }

  @override
  Future<Response<String>> _apiNotificationsPost(
      {required NotificationsDto? body}) {
    final $url = '/api/Notifications';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<NotificationsDtoPagedResult>> _apiNotificationsSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Notifications/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<NotificationsDtoPagedResult,
        NotificationsDtoPagedResult>($request);
  }

  @override
  Future<Response<NotificationsDto>> _apiNotificationsIdGet(
      {required String? id}) {
    final $url = '/api/Notifications/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<NotificationsDto, NotificationsDto>($request);
  }

  @override
  Future<Response<bool>> _apiNotificationsIdPut(
      {required String? id, required NotificationsDto? body}) {
    final $url = '/api/Notifications/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiNotificationsIdDelete({required String? id}) {
    final $url = '/api/Notifications/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<ProjectDtoPagedResult>> _apiProjectSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Project/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ProjectDtoPagedResult, ProjectDtoPagedResult>($request);
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
  Future<Response<List<RoleDto>>> _apiRoleGet() {
    final $url = '/api/Role';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RoleDto>, RoleDto>($request);
  }

  @override
  Future<Response<String>> _apiRolePost({required RoleDto? body}) {
    final $url = '/api/Role';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<RoleDtoPagedResult>> _apiRoleSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Role/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RoleDtoPagedResult, RoleDtoPagedResult>($request);
  }

  @override
  Future<Response<RoleDto>> _apiRoleIdGet({required String? id}) {
    final $url = '/api/Role/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleDto, RoleDto>($request);
  }

  @override
  Future<Response<bool>> _apiRoleIdPut(
      {required String? id, required RoleDto? body}) {
    final $url = '/api/Role/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiRoleIdDelete({required String? id}) {
    final $url = '/api/Role/${id}';
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
  Future<Response<ScreenDtoPagedResult>> _apiScreenSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Screen/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ScreenDtoPagedResult, ScreenDtoPagedResult>($request);
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
  Future<Response<SubdepartmentDtoPagedResult>> _apiSubdepartmentSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Subdepartment/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<SubdepartmentDtoPagedResult,
        SubdepartmentDtoPagedResult>($request);
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
  Future<Response<List<AppUserDto>>> _apiUserGet() {
    final $url = '/api/User';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<AppUserDto>, AppUserDto>($request);
  }

  @override
  Future<Response<String>> _apiUserPost({required UserPostDto? body}) {
    final $url = '/api/User';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AppUserDtoPagedResult>> _apiUserSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/User/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<AppUserDtoPagedResult, AppUserDtoPagedResult>($request);
  }

  @override
  Future<Response<AppUserDto>> _apiUserIdGet({required String? id}) {
    final $url = '/api/User/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AppUserDto, AppUserDto>($request);
  }

  @override
  Future<Response<bool>> _apiUserIdPut(
      {required String? id, required UserPutDto? body}) {
    final $url = '/api/User/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiUserIdDelete({required String? id}) {
    final $url = '/api/User/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<AppUserDto>> _apiUserByRoleAndDepartmentGet(
      {List<String>? departments,
      String? role,
      required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/User/byRoleAndDepartment';
    final $params = <String, dynamic>{
      'departments': departments,
      'role': role,
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<AppUserDto, AppUserDto>($request);
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
  Future<Response<VisitDtoPagedResult>> _apiVisitSearchGet(
      {String? code,
      String? dateVisit,
      required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/Visit/Search';
    final $params = <String, dynamic>{
      'Code': code,
      'DateVisit': dateVisit,
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<VisitDtoPagedResult, VisitDtoPagedResult>($request);
  }

  @override
  Future<Response<VisitDto>> _apiVisitNextPendingGet() {
    final $url = '/api/Visit/NextPending';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VisitDto, VisitDto>($request);
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

  @override
  Future<Response<List<VisitStatusDto>>> _apiVisitStatusGet() {
    final $url = '/api/VisitStatus';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<VisitStatusDto>, VisitStatusDto>($request);
  }

  @override
  Future<Response<String>> _apiVisitStatusPost(
      {required VisitStatusDto? body}) {
    final $url = '/api/VisitStatus';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VisitStatusDtoPagedResult>> _apiVisitStatusSearchGet(
      {required int? page,
      String? search,
      String? orderBy,
      bool? descending,
      required int? pageSize}) {
    final $url = '/api/VisitStatus/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderBy': orderBy,
      'Descending': descending,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<VisitStatusDtoPagedResult, VisitStatusDtoPagedResult>($request);
  }

  @override
  Future<Response<VisitStatusDto>> _apiVisitStatusIdGet({required String? id}) {
    final $url = '/api/VisitStatus/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VisitStatusDto, VisitStatusDto>($request);
  }

  @override
  Future<Response<bool>> _apiVisitStatusIdPut(
      {required String? id, required VisitStatusDto? body}) {
    final $url = '/api/VisitStatus/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiVisitStatusIdDelete({required String? id}) {
    final $url = '/api/VisitStatus/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }
}
