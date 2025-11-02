import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

/// Represents a project/portfolio item in a CV
@freezed
abstract class Project with _$Project {
  const factory Project({
    required String name,
    String? description,
    String? technologies,
    String? url,
    String? githubUrl,
    DateTime? startDate,
    DateTime? endDate,
    @Default(false) bool isOngoing,
    @Default(<String>[]) List<String> highlights,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}
