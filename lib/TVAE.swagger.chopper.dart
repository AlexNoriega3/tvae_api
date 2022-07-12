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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/AcademicStudies/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Color/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Contact/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
  Future<Response<String>> _apiDepartmentPost({required List<int> partFile}) {
    final $url = '/api/Department';
    final $parts = <PartValue>[PartValueFile<List<int>>('partFile', partFile)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<DepartmentDtoPagedResult>> _apiDepartmentSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Department/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required String? id, required List<int> partFile}) {
    final $url = '/api/Department/${id}';
    final $parts = <PartValue>[PartValueFile<List<int>>('partFile', partFile)];
    final $request =
        Request('PUT', $url, client.baseUrl, parts: $parts, multipart: true);
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Level/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Local/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/LocalStatus/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/LocalType/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Notifications/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
  Future<Response<bool>> _apiNotificationsIdDelete({required String? id}) {
    final $url = '/api/Notifications/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiNotificationsViewedPost({required String? body}) {
    final $url = '/api/Notifications/Viewed';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiNotificationsIgnorePost({required String? body}) {
    final $url = '/api/Notifications/Ignore';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<ProjectDtoPagedResult>> _apiProjectSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Project/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
  Future<Response<List<RatingDto>>> _apiRatingGet() {
    final $url = '/api/Rating';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RatingDto>, RatingDto>($request);
  }

  @override
  Future<Response<String>> _apiRatingPost({required RatingDto? body}) {
    final $url = '/api/Rating';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<RatingDtoPagedResult>> _apiRatingSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Rating/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RatingDtoPagedResult, RatingDtoPagedResult>($request);
  }

  @override
  Future<Response<RatingDto>> _apiRatingIdGet({required String? id}) {
    final $url = '/api/Rating/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RatingDto, RatingDto>($request);
  }

  @override
  Future<Response<bool>> _apiRatingIdPut(
      {required String? id, required RatingDto? body}) {
    final $url = '/api/Rating/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiRatingIdDelete({required String? id}) {
    final $url = '/api/Rating/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<RatingDto>> _apiRatingByUserUserIdGet(
      {required String? userId}) {
    final $url = '/api/Rating/byUser/${userId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RatingDto, RatingDto>($request);
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Role/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
  Future<Response<List<ScheduleDto>>> _apiScheduleGet() {
    final $url = '/api/Schedule';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ScheduleDto>, ScheduleDto>($request);
  }

  @override
  Future<Response<String>> _apiSchedulePost({required ScheduleDto? body}) {
    final $url = '/api/Schedule';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ScheduleDtoPagedResult>> _apiScheduleSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Schedule/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<ScheduleDtoPagedResult, ScheduleDtoPagedResult>($request);
  }

  @override
  Future<Response<ScheduleDto>> _apiScheduleIdGet({required String? id}) {
    final $url = '/api/Schedule/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ScheduleDto, ScheduleDto>($request);
  }

  @override
  Future<Response<bool>> _apiScheduleIdPut(
      {required String? id, required ScheduleDto? body}) {
    final $url = '/api/Schedule/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiScheduleIdDelete({required String? id}) {
    final $url = '/api/Schedule/${id}';
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Screen/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
  Future<Response<List<SectionDto>>> _apiSectionGet() {
    final $url = '/api/Section';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<SectionDto>, SectionDto>($request);
  }

  @override
  Future<Response<String>> _apiSectionPost({required SectionDto? body}) {
    final $url = '/api/Section';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<SectionDtoPagedResult>> _apiSectionSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Section/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<SectionDtoPagedResult, SectionDtoPagedResult>($request);
  }

  @override
  Future<Response<SectionDto>> _apiSectionIdGet({required String? id}) {
    final $url = '/api/Section/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SectionDto, SectionDto>($request);
  }

  @override
  Future<Response<bool>> _apiSectionIdPut(
      {required String? id, required SectionDto? body}) {
    final $url = '/api/Section/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiSectionIdDelete({required String? id}) {
    final $url = '/api/Section/${id}';
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/Subdepartment/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/User/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
  Future<Response<EditUserResponse>> _apiUserIdPut(
      {required String? id, required List<int> partFile}) {
    final $url = '/api/User/${id}';
    final $parts = <PartValue>[PartValueFile<List<int>>('partFile', partFile)];
    final $request =
        Request('PUT', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<EditUserResponse, EditUserResponse>($request);
  }

  @override
  Future<Response<bool>> _apiUserIdDelete({required String? id}) {
    final $url = '/api/User/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<EditUserResponse>> _apiUserEditUserAppIdPut(
      {required String? id, required UserPutDto? body}) {
    final $url = '/api/User/EditUserApp/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<EditUserResponse, EditUserResponse>($request);
  }

  @override
  Future<Response<EditUserResponse>> _apiUserUploadImageIdPost(
      {required String? id, required List<int> partFile}) {
    final $url = '/api/User/UploadImage/${id}';
    final $parts = <PartValue>[PartValueFile<List<int>>('partFile', partFile)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<EditUserResponse, EditUserResponse>($request);
  }

  @override
  Future<Response<AppUserDto>> _apiUserByRoleAndDepartmentPost(
      {required UserSearchDto? body}) {
    final $url = '/api/User/byRoleAndDepartment';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AppUserDto, AppUserDto>($request);
  }

  @override
  Future<Response<List<MostVisitedDto>>> _apiUserMostVisitedUserIdPost(
      {required String? userId}) {
    final $url = '/api/User/MostVisited/${userId}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<List<MostVisitedDto>, MostVisitedDto>($request);
  }

  @override
  Future<Response<ProviderProfileDto>> _apiUserProviderProfileProviderIdPost(
      {required String? providerId}) {
    final $url = '/api/User/ProviderProfile/${providerId}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<ProviderProfileDto, ProviderProfileDto>($request);
  }

  @override
  Future<Response<ResultUserDtoPagedResult>> _apiUserSearchUserByProviderGet(
      {required String? providerId,
      required int? page,
      String? search,
      required int? pageSize}) {
    final $url = '/api/User/SearchUserByProvider';
    final $params = <String, dynamic>{
      'providerId': providerId,
      'Page': page,
      'Search': search,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<ResultUserDtoPagedResult, ResultUserDtoPagedResult>($request);
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
      required int? pageSize}) {
    final $url = '/api/Visit/Search';
    final $params = <String, dynamic>{
      'Code': code,
      'DateVisit': dateVisit,
      'Page': page,
      'Search': search,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<VisitDtoPagedResult, VisitDtoPagedResult>($request);
  }

  @override
  Future<Response<VisitNextPendingDto>> _apiVisitNextPendingUserIdGet(
      {required String? userId}) {
    final $url = '/api/Visit/NextPending/${userId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VisitNextPendingDto, VisitNextPendingDto>($request);
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
  Future<Response<HistoricDtoPagedResult>> _apiVisitHistoricGet(
      {required String? userId,
      required int? page,
      String? search,
      required int? pageSize}) {
    final $url = '/api/Visit/Historic';
    final $params = <String, dynamic>{
      'userId': userId,
      'Page': page,
      'Search': search,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<HistoricDtoPagedResult, HistoricDtoPagedResult>($request);
  }

  @override
  Future<Response<HistoricResidentDtoPagedResult>> _apiVisitHistoricResidentGet(
      {required String? userId,
      required int? page,
      String? search,
      required int? pageSize}) {
    final $url = '/api/Visit/HistoricResident';
    final $params = <String, dynamic>{
      'userId': userId,
      'Page': page,
      'Search': search,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<HistoricResidentDtoPagedResult,
        HistoricResidentDtoPagedResult>($request);
  }

  @override
  Future<Response<VisitDetailsDto>> _apiVisitDetailVisitIdGet(
      {required String? visitId}) {
    final $url = '/api/Visit/Detail/${visitId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VisitDetailsDto, VisitDetailsDto>($request);
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
      {required int? page, String? search, required int? pageSize}) {
    final $url = '/api/VisitStatus/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
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
