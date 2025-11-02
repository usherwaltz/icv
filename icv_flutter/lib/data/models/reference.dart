import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference.freezed.dart';
part 'reference.g.dart';

/// Represents a reference entry in a CV
@freezed
abstract class Reference with _$Reference {
  const factory Reference({
    required String name,
    required String relationship, // e.g., "Former Manager", "Professor"
    String? company,
    String? email,
    String? phone,
  }) = _Reference;

  factory Reference.fromJson(Map<String, Object?> json) =>
      _$ReferenceFromJson(json);
}
