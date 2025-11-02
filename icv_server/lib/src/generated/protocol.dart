/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'auth_provider.dart' as _i4;
import 'cv.dart' as _i5;
import 'cv_data.dart' as _i6;
import 'cv_summary.dart' as _i7;
import 'delete_cv_request.dart' as _i8;
import 'delete_cv_response.dart' as _i9;
import 'greeting.dart' as _i10;
import 'list_cvs_request.dart' as _i11;
import 'load_cv_request.dart' as _i12;
import 'login_request.dart' as _i13;
import 'oauth_request.dart' as _i14;
import 'password_change_request.dart' as _i15;
import 'password_reset_confirm_request.dart' as _i16;
import 'password_reset_request.dart' as _i17;
import 'password_reset_token.dart' as _i18;
import 'register_request.dart' as _i19;
import 'save_cv_request.dart' as _i20;
import 'save_cv_response.dart' as _i21;
import 'storage_location.dart' as _i22;
import 'user.dart' as _i23;
import 'user_info.dart' as _i24;
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

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'cvs',
      dartName: 'CV',
      schema: 'public',
      module: 'icv',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'cvs_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'templateId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'cvData',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'pdfThemeSettings',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'sectionOrder',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'storageLocation',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:StorageLocation',
          columnDefault: '\'local\'::text',
        ),
        _i2.ColumnDefinition(
          name: 'saveTimestamp',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'cvs_fk_0',
          columns: ['userId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'cvs_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'cv_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'password_reset_tokens',
      dartName: 'PasswordResetToken',
      schema: 'public',
      module: 'icv',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'password_reset_tokens_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'token',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'expiresAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'used',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'password_reset_tokens_fk_0',
          columns: ['userId'],
          referenceTable: 'users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'password_reset_tokens_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'password_reset_token_token_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'token',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'password_reset_token_user_id_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'users',
      dartName: 'User',
      schema: 'public',
      module: 'icv',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'users_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'passwordHash',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'authProvider',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:AuthProvider',
          columnDefault: '\'email\'::text',
        ),
        _i2.ColumnDefinition(
          name: 'providerId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'themePreference',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'cloudBackupEnabled',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _i2.ColumnDefinition(
          name: 'privacyPolicyAcceptedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'CURRENT_TIMESTAMP',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'users_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'user_email_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'email',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.AuthProvider) {
      return _i4.AuthProvider.fromJson(data) as T;
    }
    if (t == _i5.CV) {
      return _i5.CV.fromJson(data) as T;
    }
    if (t == _i6.CvData) {
      return _i6.CvData.fromJson(data) as T;
    }
    if (t == _i7.CvSummary) {
      return _i7.CvSummary.fromJson(data) as T;
    }
    if (t == _i8.DeleteCvRequest) {
      return _i8.DeleteCvRequest.fromJson(data) as T;
    }
    if (t == _i9.DeleteCvResponse) {
      return _i9.DeleteCvResponse.fromJson(data) as T;
    }
    if (t == _i10.Greeting) {
      return _i10.Greeting.fromJson(data) as T;
    }
    if (t == _i11.ListCvsRequest) {
      return _i11.ListCvsRequest.fromJson(data) as T;
    }
    if (t == _i12.LoadCvRequest) {
      return _i12.LoadCvRequest.fromJson(data) as T;
    }
    if (t == _i13.LoginRequest) {
      return _i13.LoginRequest.fromJson(data) as T;
    }
    if (t == _i14.OAuthRequest) {
      return _i14.OAuthRequest.fromJson(data) as T;
    }
    if (t == _i15.PasswordChangeRequest) {
      return _i15.PasswordChangeRequest.fromJson(data) as T;
    }
    if (t == _i16.PasswordResetConfirmRequest) {
      return _i16.PasswordResetConfirmRequest.fromJson(data) as T;
    }
    if (t == _i17.PasswordResetRequest) {
      return _i17.PasswordResetRequest.fromJson(data) as T;
    }
    if (t == _i18.PasswordResetToken) {
      return _i18.PasswordResetToken.fromJson(data) as T;
    }
    if (t == _i19.RegisterRequest) {
      return _i19.RegisterRequest.fromJson(data) as T;
    }
    if (t == _i20.SaveCvRequest) {
      return _i20.SaveCvRequest.fromJson(data) as T;
    }
    if (t == _i21.SaveCvResponse) {
      return _i21.SaveCvResponse.fromJson(data) as T;
    }
    if (t == _i22.StorageLocation) {
      return _i22.StorageLocation.fromJson(data) as T;
    }
    if (t == _i23.User) {
      return _i23.User.fromJson(data) as T;
    }
    if (t == _i24.UserInfo) {
      return _i24.UserInfo.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.AuthProvider?>()) {
      return (data != null ? _i4.AuthProvider.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.CV?>()) {
      return (data != null ? _i5.CV.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.CvData?>()) {
      return (data != null ? _i6.CvData.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.CvSummary?>()) {
      return (data != null ? _i7.CvSummary.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.DeleteCvRequest?>()) {
      return (data != null ? _i8.DeleteCvRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.DeleteCvResponse?>()) {
      return (data != null ? _i9.DeleteCvResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Greeting?>()) {
      return (data != null ? _i10.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.ListCvsRequest?>()) {
      return (data != null ? _i11.ListCvsRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.LoadCvRequest?>()) {
      return (data != null ? _i12.LoadCvRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.LoginRequest?>()) {
      return (data != null ? _i13.LoginRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.OAuthRequest?>()) {
      return (data != null ? _i14.OAuthRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.PasswordChangeRequest?>()) {
      return (data != null ? _i15.PasswordChangeRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i16.PasswordResetConfirmRequest?>()) {
      return (data != null
          ? _i16.PasswordResetConfirmRequest.fromJson(data)
          : null) as T;
    }
    if (t == _i1.getType<_i17.PasswordResetRequest?>()) {
      return (data != null ? _i17.PasswordResetRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i18.PasswordResetToken?>()) {
      return (data != null ? _i18.PasswordResetToken.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i19.RegisterRequest?>()) {
      return (data != null ? _i19.RegisterRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.SaveCvRequest?>()) {
      return (data != null ? _i20.SaveCvRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.SaveCvResponse?>()) {
      return (data != null ? _i21.SaveCvResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.StorageLocation?>()) {
      return (data != null ? _i22.StorageLocation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.User?>()) {
      return (data != null ? _i23.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.UserInfo?>()) {
      return (data != null ? _i24.UserInfo.fromJson(data) : null) as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i4.AuthProvider) {
      return 'AuthProvider';
    }
    if (data is _i5.CV) {
      return 'CV';
    }
    if (data is _i6.CvData) {
      return 'CvData';
    }
    if (data is _i7.CvSummary) {
      return 'CvSummary';
    }
    if (data is _i8.DeleteCvRequest) {
      return 'DeleteCvRequest';
    }
    if (data is _i9.DeleteCvResponse) {
      return 'DeleteCvResponse';
    }
    if (data is _i10.Greeting) {
      return 'Greeting';
    }
    if (data is _i11.ListCvsRequest) {
      return 'ListCvsRequest';
    }
    if (data is _i12.LoadCvRequest) {
      return 'LoadCvRequest';
    }
    if (data is _i13.LoginRequest) {
      return 'LoginRequest';
    }
    if (data is _i14.OAuthRequest) {
      return 'OAuthRequest';
    }
    if (data is _i15.PasswordChangeRequest) {
      return 'PasswordChangeRequest';
    }
    if (data is _i16.PasswordResetConfirmRequest) {
      return 'PasswordResetConfirmRequest';
    }
    if (data is _i17.PasswordResetRequest) {
      return 'PasswordResetRequest';
    }
    if (data is _i18.PasswordResetToken) {
      return 'PasswordResetToken';
    }
    if (data is _i19.RegisterRequest) {
      return 'RegisterRequest';
    }
    if (data is _i20.SaveCvRequest) {
      return 'SaveCvRequest';
    }
    if (data is _i21.SaveCvResponse) {
      return 'SaveCvResponse';
    }
    if (data is _i22.StorageLocation) {
      return 'StorageLocation';
    }
    if (data is _i23.User) {
      return 'User';
    }
    if (data is _i24.UserInfo) {
      return 'UserInfo';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
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
      return deserialize<_i4.AuthProvider>(data['data']);
    }
    if (dataClassName == 'CV') {
      return deserialize<_i5.CV>(data['data']);
    }
    if (dataClassName == 'CvData') {
      return deserialize<_i6.CvData>(data['data']);
    }
    if (dataClassName == 'CvSummary') {
      return deserialize<_i7.CvSummary>(data['data']);
    }
    if (dataClassName == 'DeleteCvRequest') {
      return deserialize<_i8.DeleteCvRequest>(data['data']);
    }
    if (dataClassName == 'DeleteCvResponse') {
      return deserialize<_i9.DeleteCvResponse>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i10.Greeting>(data['data']);
    }
    if (dataClassName == 'ListCvsRequest') {
      return deserialize<_i11.ListCvsRequest>(data['data']);
    }
    if (dataClassName == 'LoadCvRequest') {
      return deserialize<_i12.LoadCvRequest>(data['data']);
    }
    if (dataClassName == 'LoginRequest') {
      return deserialize<_i13.LoginRequest>(data['data']);
    }
    if (dataClassName == 'OAuthRequest') {
      return deserialize<_i14.OAuthRequest>(data['data']);
    }
    if (dataClassName == 'PasswordChangeRequest') {
      return deserialize<_i15.PasswordChangeRequest>(data['data']);
    }
    if (dataClassName == 'PasswordResetConfirmRequest') {
      return deserialize<_i16.PasswordResetConfirmRequest>(data['data']);
    }
    if (dataClassName == 'PasswordResetRequest') {
      return deserialize<_i17.PasswordResetRequest>(data['data']);
    }
    if (dataClassName == 'PasswordResetToken') {
      return deserialize<_i18.PasswordResetToken>(data['data']);
    }
    if (dataClassName == 'RegisterRequest') {
      return deserialize<_i19.RegisterRequest>(data['data']);
    }
    if (dataClassName == 'SaveCvRequest') {
      return deserialize<_i20.SaveCvRequest>(data['data']);
    }
    if (dataClassName == 'SaveCvResponse') {
      return deserialize<_i21.SaveCvResponse>(data['data']);
    }
    if (dataClassName == 'StorageLocation') {
      return deserialize<_i22.StorageLocation>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i23.User>(data['data']);
    }
    if (dataClassName == 'UserInfo') {
      return deserialize<_i24.UserInfo>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i5.CV:
        return _i5.CV.t;
      case _i18.PasswordResetToken:
        return _i18.PasswordResetToken.t;
      case _i23.User:
        return _i23.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'icv';
}
