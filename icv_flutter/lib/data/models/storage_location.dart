import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_location.freezed.dart';
part 'storage_location.g.dart';

/// Represents where the CV data is stored (local or cloud)
@freezed
sealed class StorageLocation with _$StorageLocation {
  const factory StorageLocation.local() = LocalStorage;
  const factory StorageLocation.cloud() = CloudStorage;

  factory StorageLocation.fromJson(Map<String, Object?> json) =>
      _$StorageLocationFromJson(json);
}
