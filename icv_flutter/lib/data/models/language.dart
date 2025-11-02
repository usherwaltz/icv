import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';
part 'language.g.dart';

/// Represents a language with proficiency level
@freezed
abstract class Language with _$Language {
  const factory Language({
    required String name,
    required String
        proficiency, // e.g., "Native", "Fluent", "Conversational", "Basic"
  }) = _Language;

  factory Language.fromJson(Map<String, Object?> json) =>
      _$LanguageFromJson(json);
}
