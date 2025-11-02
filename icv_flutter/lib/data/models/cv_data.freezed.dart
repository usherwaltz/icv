// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CvData {
// Personal Information
  String? get fullName;
  String? get email;
  String? get phone;
  String? get address;
  String? get linkedInUrl;
  String? get githubUrl; // Professional Summary
  String? get professionalSummary; // Work Experience
  List<WorkExperience> get workExperience; // Education
  List<Education> get education; // Skills
  List<Skill> get skills; // Languages
  List<Language> get languages; // Certifications
  List<Certification> get certifications; // Projects/Portfolio
  List<Project> get projects; // References
  List<Reference> get references;

  /// Create a copy of CvData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CvDataCopyWith<CvData> get copyWith =>
      _$CvDataCopyWithImpl<CvData>(this as CvData, _$identity);

  /// Serializes this CvData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CvData &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.linkedInUrl, linkedInUrl) ||
                other.linkedInUrl == linkedInUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.professionalSummary, professionalSummary) ||
                other.professionalSummary == professionalSummary) &&
            const DeepCollectionEquality()
                .equals(other.workExperience, workExperience) &&
            const DeepCollectionEquality().equals(other.education, education) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            const DeepCollectionEquality().equals(other.languages, languages) &&
            const DeepCollectionEquality()
                .equals(other.certifications, certifications) &&
            const DeepCollectionEquality().equals(other.projects, projects) &&
            const DeepCollectionEquality()
                .equals(other.references, references));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      email,
      phone,
      address,
      linkedInUrl,
      githubUrl,
      professionalSummary,
      const DeepCollectionEquality().hash(workExperience),
      const DeepCollectionEquality().hash(education),
      const DeepCollectionEquality().hash(skills),
      const DeepCollectionEquality().hash(languages),
      const DeepCollectionEquality().hash(certifications),
      const DeepCollectionEquality().hash(projects),
      const DeepCollectionEquality().hash(references));

  @override
  String toString() {
    return 'CvData(fullName: $fullName, email: $email, phone: $phone, address: $address, linkedInUrl: $linkedInUrl, githubUrl: $githubUrl, professionalSummary: $professionalSummary, workExperience: $workExperience, education: $education, skills: $skills, languages: $languages, certifications: $certifications, projects: $projects, references: $references)';
  }
}

/// @nodoc
abstract mixin class $CvDataCopyWith<$Res> {
  factory $CvDataCopyWith(CvData value, $Res Function(CvData) _then) =
      _$CvDataCopyWithImpl;
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phone,
      String? address,
      String? linkedInUrl,
      String? githubUrl,
      String? professionalSummary,
      List<WorkExperience> workExperience,
      List<Education> education,
      List<Skill> skills,
      List<Language> languages,
      List<Certification> certifications,
      List<Project> projects,
      List<Reference> references});
}

/// @nodoc
class _$CvDataCopyWithImpl<$Res> implements $CvDataCopyWith<$Res> {
  _$CvDataCopyWithImpl(this._self, this._then);

  final CvData _self;
  final $Res Function(CvData) _then;

  /// Create a copy of CvData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? linkedInUrl = freezed,
    Object? githubUrl = freezed,
    Object? professionalSummary = freezed,
    Object? workExperience = null,
    Object? education = null,
    Object? skills = null,
    Object? languages = null,
    Object? certifications = null,
    Object? projects = null,
    Object? references = null,
  }) {
    return _then(_self.copyWith(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedInUrl: freezed == linkedInUrl
          ? _self.linkedInUrl
          : linkedInUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _self.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      professionalSummary: freezed == professionalSummary
          ? _self.professionalSummary
          : professionalSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      workExperience: null == workExperience
          ? _self.workExperience
          : workExperience // ignore: cast_nullable_to_non_nullable
              as List<WorkExperience>,
      education: null == education
          ? _self.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      skills: null == skills
          ? _self.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      languages: null == languages
          ? _self.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      certifications: null == certifications
          ? _self.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<Certification>,
      projects: null == projects
          ? _self.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      references: null == references
          ? _self.references
          : references // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CvData].
extension CvDataPatterns on CvData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CvData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CvData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CvData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CvData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? fullName,
            String? email,
            String? phone,
            String? address,
            String? linkedInUrl,
            String? githubUrl,
            String? professionalSummary,
            List<WorkExperience> workExperience,
            List<Education> education,
            List<Skill> skills,
            List<Language> languages,
            List<Certification> certifications,
            List<Project> projects,
            List<Reference> references)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CvData() when $default != null:
        return $default(
            _that.fullName,
            _that.email,
            _that.phone,
            _that.address,
            _that.linkedInUrl,
            _that.githubUrl,
            _that.professionalSummary,
            _that.workExperience,
            _that.education,
            _that.skills,
            _that.languages,
            _that.certifications,
            _that.projects,
            _that.references);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? fullName,
            String? email,
            String? phone,
            String? address,
            String? linkedInUrl,
            String? githubUrl,
            String? professionalSummary,
            List<WorkExperience> workExperience,
            List<Education> education,
            List<Skill> skills,
            List<Language> languages,
            List<Certification> certifications,
            List<Project> projects,
            List<Reference> references)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvData():
        return $default(
            _that.fullName,
            _that.email,
            _that.phone,
            _that.address,
            _that.linkedInUrl,
            _that.githubUrl,
            _that.professionalSummary,
            _that.workExperience,
            _that.education,
            _that.skills,
            _that.languages,
            _that.certifications,
            _that.projects,
            _that.references);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? fullName,
            String? email,
            String? phone,
            String? address,
            String? linkedInUrl,
            String? githubUrl,
            String? professionalSummary,
            List<WorkExperience> workExperience,
            List<Education> education,
            List<Skill> skills,
            List<Language> languages,
            List<Certification> certifications,
            List<Project> projects,
            List<Reference> references)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CvData() when $default != null:
        return $default(
            _that.fullName,
            _that.email,
            _that.phone,
            _that.address,
            _that.linkedInUrl,
            _that.githubUrl,
            _that.professionalSummary,
            _that.workExperience,
            _that.education,
            _that.skills,
            _that.languages,
            _that.certifications,
            _that.projects,
            _that.references);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CvData implements CvData {
  const _CvData(
      {this.fullName,
      this.email,
      this.phone,
      this.address,
      this.linkedInUrl,
      this.githubUrl,
      this.professionalSummary,
      final List<WorkExperience> workExperience = const <WorkExperience>[],
      final List<Education> education = const <Education>[],
      final List<Skill> skills = const <Skill>[],
      final List<Language> languages = const <Language>[],
      final List<Certification> certifications = const <Certification>[],
      final List<Project> projects = const <Project>[],
      final List<Reference> references = const <Reference>[]})
      : _workExperience = workExperience,
        _education = education,
        _skills = skills,
        _languages = languages,
        _certifications = certifications,
        _projects = projects,
        _references = references;
  factory _CvData.fromJson(Map<String, dynamic> json) => _$CvDataFromJson(json);

// Personal Information
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? linkedInUrl;
  @override
  final String? githubUrl;
// Professional Summary
  @override
  final String? professionalSummary;
// Work Experience
  final List<WorkExperience> _workExperience;
// Work Experience
  @override
  @JsonKey()
  List<WorkExperience> get workExperience {
    if (_workExperience is EqualUnmodifiableListView) return _workExperience;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workExperience);
  }

// Education
  final List<Education> _education;
// Education
  @override
  @JsonKey()
  List<Education> get education {
    if (_education is EqualUnmodifiableListView) return _education;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_education);
  }

// Skills
  final List<Skill> _skills;
// Skills
  @override
  @JsonKey()
  List<Skill> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

// Languages
  final List<Language> _languages;
// Languages
  @override
  @JsonKey()
  List<Language> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

// Certifications
  final List<Certification> _certifications;
// Certifications
  @override
  @JsonKey()
  List<Certification> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

// Projects/Portfolio
  final List<Project> _projects;
// Projects/Portfolio
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

// References
  final List<Reference> _references;
// References
  @override
  @JsonKey()
  List<Reference> get references {
    if (_references is EqualUnmodifiableListView) return _references;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_references);
  }

  /// Create a copy of CvData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CvDataCopyWith<_CvData> get copyWith =>
      __$CvDataCopyWithImpl<_CvData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CvDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CvData &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.linkedInUrl, linkedInUrl) ||
                other.linkedInUrl == linkedInUrl) &&
            (identical(other.githubUrl, githubUrl) ||
                other.githubUrl == githubUrl) &&
            (identical(other.professionalSummary, professionalSummary) ||
                other.professionalSummary == professionalSummary) &&
            const DeepCollectionEquality()
                .equals(other._workExperience, _workExperience) &&
            const DeepCollectionEquality()
                .equals(other._education, _education) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality()
                .equals(other._references, _references));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      email,
      phone,
      address,
      linkedInUrl,
      githubUrl,
      professionalSummary,
      const DeepCollectionEquality().hash(_workExperience),
      const DeepCollectionEquality().hash(_education),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_certifications),
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_references));

  @override
  String toString() {
    return 'CvData(fullName: $fullName, email: $email, phone: $phone, address: $address, linkedInUrl: $linkedInUrl, githubUrl: $githubUrl, professionalSummary: $professionalSummary, workExperience: $workExperience, education: $education, skills: $skills, languages: $languages, certifications: $certifications, projects: $projects, references: $references)';
  }
}

/// @nodoc
abstract mixin class _$CvDataCopyWith<$Res> implements $CvDataCopyWith<$Res> {
  factory _$CvDataCopyWith(_CvData value, $Res Function(_CvData) _then) =
      __$CvDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phone,
      String? address,
      String? linkedInUrl,
      String? githubUrl,
      String? professionalSummary,
      List<WorkExperience> workExperience,
      List<Education> education,
      List<Skill> skills,
      List<Language> languages,
      List<Certification> certifications,
      List<Project> projects,
      List<Reference> references});
}

/// @nodoc
class __$CvDataCopyWithImpl<$Res> implements _$CvDataCopyWith<$Res> {
  __$CvDataCopyWithImpl(this._self, this._then);

  final _CvData _self;
  final $Res Function(_CvData) _then;

  /// Create a copy of CvData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? linkedInUrl = freezed,
    Object? githubUrl = freezed,
    Object? professionalSummary = freezed,
    Object? workExperience = null,
    Object? education = null,
    Object? skills = null,
    Object? languages = null,
    Object? certifications = null,
    Object? projects = null,
    Object? references = null,
  }) {
    return _then(_CvData(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedInUrl: freezed == linkedInUrl
          ? _self.linkedInUrl
          : linkedInUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUrl: freezed == githubUrl
          ? _self.githubUrl
          : githubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      professionalSummary: freezed == professionalSummary
          ? _self.professionalSummary
          : professionalSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      workExperience: null == workExperience
          ? _self._workExperience
          : workExperience // ignore: cast_nullable_to_non_nullable
              as List<WorkExperience>,
      education: null == education
          ? _self._education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      skills: null == skills
          ? _self._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      languages: null == languages
          ? _self._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      certifications: null == certifications
          ? _self._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<Certification>,
      projects: null == projects
          ? _self._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      references: null == references
          ? _self._references
          : references // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
    ));
  }
}

// dart format on
