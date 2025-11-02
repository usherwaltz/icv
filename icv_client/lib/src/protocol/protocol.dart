/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'auth_provider.dart' as _i2;
import 'cv.dart' as _i3;
import 'cv_data.dart' as _i4;
import 'cv_summary.dart' as _i5;
import 'delete_cv_request.dart' as _i6;
import 'delete_cv_response.dart' as _i7;
import 'greeting.dart' as _i8;
import 'list_cvs_request.dart' as _i9;
import 'load_cv_request.dart' as _i10;
import 'login_request.dart' as _i11;
import 'oauth_request.dart' as _i12;
import 'password_change_request.dart' as _i13;
import 'password_reset_confirm_request.dart' as _i14;
import 'password_reset_request.dart' as _i15;
import 'password_reset_token.dart' as _i16;
import 'register_request.dart' as _i17;
import 'save_cv_request.dart' as _i18;
import 'save_cv_response.dart' as _i19;
import 'storage_location.dart' as _i20;
import 'user.dart' as _i21;
import 'user_info.dart' as _i22;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i23;
export 'auth_provider.dart';
export 'cv.dart';
export 'cv_data.dart';
export 'cv_summary.dart';
export 'delete_cv_request.dart';
export 'delete_cv_response.dart';
export 'greeting.dart';
export 'list_cvs_request.dart';
export 'load_cv_request.dart';
export 'login_request.dart';
export 'oauth_request.dart';
export 'password_change_request.dart';
export 'password_reset_confirm_request.dart';
export 'password_reset_request.dart';
export 'password_reset_token.dart';
export 'register_request.dart';
export 'save_cv_request.dart';
export 'save_cv_response.dart';
export 'storage_location.dart';
export 'user.dart';
export 'user_info.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.AuthProvider) {
      return _i2.AuthProvider.fromJson(data) as T;
    }
    if (t == _i3.CV) {
      return _i3.CV.fromJson(data) as T;
    }
    if (t == _i4.CvData) {
      return _i4.CvData.fromJson(data) as T;
    }
    if (t == _i5.CvSummary) {
      return _i5.CvSummary.fromJson(data) as T;
    }
    if (t == _i6.DeleteCvRequest) {
      return _i6.DeleteCvRequest.fromJson(data) as T;
    }
    if (t == _i7.DeleteCvResponse) {
      return _i7.DeleteCvResponse.fromJson(data) as T;
    }
    if (t == _i8.Greeting) {
      return _i8.Greeting.fromJson(data) as T;
    }
    if (t == _i9.ListCvsRequest) {
      return _i9.ListCvsRequest.fromJson(data) as T;
    }
    if (t == _i10.LoadCvRequest) {
      return _i10.LoadCvRequest.fromJson(data) as T;
    }
    if (t == _i11.LoginRequest) {
      return _i11.LoginRequest.fromJson(data) as T;
    }
    if (t == _i12.OAuthRequest) {
      return _i12.OAuthRequest.fromJson(data) as T;
    }
    if (t == _i13.PasswordChangeRequest) {
      return _i13.PasswordChangeRequest.fromJson(data) as T;
    }
    if (t == _i14.PasswordResetConfirmRequest) {
      return _i14.PasswordResetConfirmRequest.fromJson(data) as T;
    }
    if (t == _i15.PasswordResetRequest) {
      return _i15.PasswordResetRequest.fromJson(data) as T;
    }
    if (t == _i16.PasswordResetToken) {
      return _i16.PasswordResetToken.fromJson(data) as T;
    }
    if (t == _i17.RegisterRequest) {
      return _i17.RegisterRequest.fromJson(data) as T;
    }
    if (t == _i18.SaveCvRequest) {
      return _i18.SaveCvRequest.fromJson(data) as T;
    }
    if (t == _i19.SaveCvResponse) {
      return _i19.SaveCvResponse.fromJson(data) as T;
    }
    if (t == _i20.StorageLocation) {
      return _i20.StorageLocation.fromJson(data) as T;
    }
    if (t == _i21.User) {
      return _i21.User.fromJson(data) as T;
    }
    if (t == _i22.UserInfo) {
      return _i22.UserInfo.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.AuthProvider?>()) {
      return (data != null ? _i2.AuthProvider.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.CV?>()) {
      return (data != null ? _i3.CV.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CvData?>()) {
      return (data != null ? _i4.CvData.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.CvSummary?>()) {
      return (data != null ? _i5.CvSummary.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.DeleteCvRequest?>()) {
      return (data != null ? _i6.DeleteCvRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.DeleteCvResponse?>()) {
      return (data != null ? _i7.DeleteCvResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Greeting?>()) {
      return (data != null ? _i8.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.ListCvsRequest?>()) {
      return (data != null ? _i9.ListCvsRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.LoadCvRequest?>()) {
      return (data != null ? _i10.LoadCvRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.LoginRequest?>()) {
      return (data != null ? _i11.LoginRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.OAuthRequest?>()) {
      return (data != null ? _i12.OAuthRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.PasswordChangeRequest?>()) {
      return (data != null ? _i13.PasswordChangeRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i14.PasswordResetConfirmRequest?>()) {
      return (data != null
          ? _i14.PasswordResetConfirmRequest.fromJson(data)
          : null) as T;
    }
    if (t == _i1.getType<_i15.PasswordResetRequest?>()) {
      return (data != null ? _i15.PasswordResetRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i16.PasswordResetToken?>()) {
      return (data != null ? _i16.PasswordResetToken.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i17.RegisterRequest?>()) {
      return (data != null ? _i17.RegisterRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.SaveCvRequest?>()) {
      return (data != null ? _i18.SaveCvRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.SaveCvResponse?>()) {
      return (data != null ? _i19.SaveCvResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.StorageLocation?>()) {
      return (data != null ? _i20.StorageLocation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.User?>()) {
      return (data != null ? _i21.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.UserInfo?>()) {
      return (data != null ? _i22.UserInfo.fromJson(data) : null) as T;
    }
    try {
      return _i23.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.AuthProvider) {
      return 'AuthProvider';
    }
    if (data is _i3.CV) {
      return 'CV';
    }
    if (data is _i4.CvData) {
      return 'CvData';
    }
    if (data is _i5.CvSummary) {
      return 'CvSummary';
    }
    if (data is _i6.DeleteCvRequest) {
      return 'DeleteCvRequest';
    }
    if (data is _i7.DeleteCvResponse) {
      return 'DeleteCvResponse';
    }
    if (data is _i8.Greeting) {
      return 'Greeting';
    }
    if (data is _i9.ListCvsRequest) {
      return 'ListCvsRequest';
    }
    if (data is _i10.LoadCvRequest) {
      return 'LoadCvRequest';
    }
    if (data is _i11.LoginRequest) {
      return 'LoginRequest';
    }
    if (data is _i12.OAuthRequest) {
      return 'OAuthRequest';
    }
    if (data is _i13.PasswordChangeRequest) {
      return 'PasswordChangeRequest';
    }
    if (data is _i14.PasswordResetConfirmRequest) {
      return 'PasswordResetConfirmRequest';
    }
    if (data is _i15.PasswordResetRequest) {
      return 'PasswordResetRequest';
    }
    if (data is _i16.PasswordResetToken) {
      return 'PasswordResetToken';
    }
    if (data is _i17.RegisterRequest) {
      return 'RegisterRequest';
    }
    if (data is _i18.SaveCvRequest) {
      return 'SaveCvRequest';
    }
    if (data is _i19.SaveCvResponse) {
      return 'SaveCvResponse';
    }
    if (data is _i20.StorageLocation) {
      return 'StorageLocation';
    }
    if (data is _i21.User) {
      return 'User';
    }
    if (data is _i22.UserInfo) {
      return 'UserInfo';
    }
    className = _i23.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'AuthProvider') {
      return deserialize<_i2.AuthProvider>(data['data']);
    }
    if (dataClassName == 'CV') {
      return deserialize<_i3.CV>(data['data']);
    }
    if (dataClassName == 'CvData') {
      return deserialize<_i4.CvData>(data['data']);
    }
    if (dataClassName == 'CvSummary') {
      return deserialize<_i5.CvSummary>(data['data']);
    }
    if (dataClassName == 'DeleteCvRequest') {
      return deserialize<_i6.DeleteCvRequest>(data['data']);
    }
    if (dataClassName == 'DeleteCvResponse') {
      return deserialize<_i7.DeleteCvResponse>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i8.Greeting>(data['data']);
    }
    if (dataClassName == 'ListCvsRequest') {
      return deserialize<_i9.ListCvsRequest>(data['data']);
    }
    if (dataClassName == 'LoadCvRequest') {
      return deserialize<_i10.LoadCvRequest>(data['data']);
    }
    if (dataClassName == 'LoginRequest') {
      return deserialize<_i11.LoginRequest>(data['data']);
    }
    if (dataClassName == 'OAuthRequest') {
      return deserialize<_i12.OAuthRequest>(data['data']);
    }
    if (dataClassName == 'PasswordChangeRequest') {
      return deserialize<_i13.PasswordChangeRequest>(data['data']);
    }
    if (dataClassName == 'PasswordResetConfirmRequest') {
      return deserialize<_i14.PasswordResetConfirmRequest>(data['data']);
    }
    if (dataClassName == 'PasswordResetRequest') {
      return deserialize<_i15.PasswordResetRequest>(data['data']);
    }
    if (dataClassName == 'PasswordResetToken') {
      return deserialize<_i16.PasswordResetToken>(data['data']);
    }
    if (dataClassName == 'RegisterRequest') {
      return deserialize<_i17.RegisterRequest>(data['data']);
    }
    if (dataClassName == 'SaveCvRequest') {
      return deserialize<_i18.SaveCvRequest>(data['data']);
    }
    if (dataClassName == 'SaveCvResponse') {
      return deserialize<_i19.SaveCvResponse>(data['data']);
    }
    if (dataClassName == 'StorageLocation') {
      return deserialize<_i20.StorageLocation>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i21.User>(data['data']);
    }
    if (dataClassName == 'UserInfo') {
      return deserialize<_i22.UserInfo>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i23.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
