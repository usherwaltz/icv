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

abstract class ListCvsRequest
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  ListCvsRequest._({required this.userId});

  factory ListCvsRequest({required int userId}) = _ListCvsRequestImpl;

  factory ListCvsRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return ListCvsRequest(userId: jsonSerialization['userId'] as int);
  }

  int userId;

  /// Returns a shallow copy of this [ListCvsRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ListCvsRequest copyWith({int? userId});
  @override
  Map<String, dynamic> toJson() {
    return {'userId': userId};
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {'userId': userId};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _ListCvsRequestImpl extends ListCvsRequest {
  _ListCvsRequestImpl({required int userId}) : super._(userId: userId);

  /// Returns a shallow copy of this [ListCvsRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ListCvsRequest copyWith({int? userId}) {
    return ListCvsRequest(userId: userId ?? this.userId);
  }
}
