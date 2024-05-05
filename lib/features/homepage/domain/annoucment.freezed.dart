// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annoucment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnoucmentResponse _$AnnoucmentResponseFromJson(Map<String, dynamic> json) {
  return _AnnoucmentResponse.fromJson(json);
}

/// @nodoc
mixin _$AnnoucmentResponse {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<AnnoucmentData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnoucmentResponseCopyWith<AnnoucmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnoucmentResponseCopyWith<$Res> {
  factory $AnnoucmentResponseCopyWith(
          AnnoucmentResponse value, $Res Function(AnnoucmentResponse) then) =
      _$AnnoucmentResponseCopyWithImpl<$Res, AnnoucmentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "data") List<AnnoucmentData>? data});
}

/// @nodoc
class _$AnnoucmentResponseCopyWithImpl<$Res, $Val extends AnnoucmentResponse>
    implements $AnnoucmentResponseCopyWith<$Res> {
  _$AnnoucmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnnoucmentData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnoucmentResponseImplCopyWith<$Res>
    implements $AnnoucmentResponseCopyWith<$Res> {
  factory _$$AnnoucmentResponseImplCopyWith(_$AnnoucmentResponseImpl value,
          $Res Function(_$AnnoucmentResponseImpl) then) =
      __$$AnnoucmentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "data") List<AnnoucmentData>? data});
}

/// @nodoc
class __$$AnnoucmentResponseImplCopyWithImpl<$Res>
    extends _$AnnoucmentResponseCopyWithImpl<$Res, _$AnnoucmentResponseImpl>
    implements _$$AnnoucmentResponseImplCopyWith<$Res> {
  __$$AnnoucmentResponseImplCopyWithImpl(_$AnnoucmentResponseImpl _value,
      $Res Function(_$AnnoucmentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AnnoucmentResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnnoucmentData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnoucmentResponseImpl implements _AnnoucmentResponse {
  _$AnnoucmentResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "data") final List<AnnoucmentData>? data})
      : _data = data;

  factory _$AnnoucmentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnoucmentResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  final List<AnnoucmentData>? _data;
  @override
  @JsonKey(name: "data")
  List<AnnoucmentData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnnoucmentResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnoucmentResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnoucmentResponseImplCopyWith<_$AnnoucmentResponseImpl> get copyWith =>
      __$$AnnoucmentResponseImplCopyWithImpl<_$AnnoucmentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnoucmentResponseImplToJson(
      this,
    );
  }
}

abstract class _AnnoucmentResponse implements AnnoucmentResponse {
  factory _AnnoucmentResponse(
          {@JsonKey(name: "status") required final String? status,
          @JsonKey(name: "data") final List<AnnoucmentData>? data}) =
      _$AnnoucmentResponseImpl;

  factory _AnnoucmentResponse.fromJson(Map<String, dynamic> json) =
      _$AnnoucmentResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "data")
  List<AnnoucmentData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AnnoucmentResponseImplCopyWith<_$AnnoucmentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnnoucmentData _$AnnoucmentDataFromJson(Map<String, dynamic> json) {
  return _AnnoucmentData.fromJson(json);
}

/// @nodoc
mixin _$AnnoucmentData {
  @JsonKey(name: 'company_announcement_id')
  String? get companyAnnouncementId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  String? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnoucmentDataCopyWith<AnnoucmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnoucmentDataCopyWith<$Res> {
  factory $AnnoucmentDataCopyWith(
          AnnoucmentData value, $Res Function(AnnoucmentData) then) =
      _$AnnoucmentDataCopyWithImpl<$Res, AnnoucmentData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_announcement_id') String? companyAnnouncementId,
      @JsonKey(name: 'company_id') String? companyId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$AnnoucmentDataCopyWithImpl<$Res, $Val extends AnnoucmentData>
    implements $AnnoucmentDataCopyWith<$Res> {
  _$AnnoucmentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAnnouncementId = freezed,
    Object? companyId = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      companyAnnouncementId: freezed == companyAnnouncementId
          ? _value.companyAnnouncementId
          : companyAnnouncementId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnoucmentDataImplCopyWith<$Res>
    implements $AnnoucmentDataCopyWith<$Res> {
  factory _$$AnnoucmentDataImplCopyWith(_$AnnoucmentDataImpl value,
          $Res Function(_$AnnoucmentDataImpl) then) =
      __$$AnnoucmentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_announcement_id') String? companyAnnouncementId,
      @JsonKey(name: 'company_id') String? companyId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$AnnoucmentDataImplCopyWithImpl<$Res>
    extends _$AnnoucmentDataCopyWithImpl<$Res, _$AnnoucmentDataImpl>
    implements _$$AnnoucmentDataImplCopyWith<$Res> {
  __$$AnnoucmentDataImplCopyWithImpl(
      _$AnnoucmentDataImpl _value, $Res Function(_$AnnoucmentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAnnouncementId = freezed,
    Object? companyId = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AnnoucmentDataImpl(
      companyAnnouncementId: freezed == companyAnnouncementId
          ? _value.companyAnnouncementId
          : companyAnnouncementId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnoucmentDataImpl implements _AnnoucmentData {
  _$AnnoucmentDataImpl(
      {@JsonKey(name: 'company_announcement_id')
      required this.companyAnnouncementId,
      @JsonKey(name: 'company_id') required this.companyId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description});

  factory _$AnnoucmentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnoucmentDataImplFromJson(json);

  @override
  @JsonKey(name: 'company_announcement_id')
  final String? companyAnnouncementId;
  @override
  @JsonKey(name: 'company_id')
  final String? companyId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'AnnoucmentData(companyAnnouncementId: $companyAnnouncementId, companyId: $companyId, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnoucmentDataImpl &&
            (identical(other.companyAnnouncementId, companyAnnouncementId) ||
                other.companyAnnouncementId == companyAnnouncementId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, companyAnnouncementId, companyId, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnoucmentDataImplCopyWith<_$AnnoucmentDataImpl> get copyWith =>
      __$$AnnoucmentDataImplCopyWithImpl<_$AnnoucmentDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnoucmentDataImplToJson(
      this,
    );
  }
}

abstract class _AnnoucmentData implements AnnoucmentData {
  factory _AnnoucmentData(
          {@JsonKey(name: 'company_announcement_id')
          required final String? companyAnnouncementId,
          @JsonKey(name: 'company_id') required final String? companyId,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'description') required final String? description}) =
      _$AnnoucmentDataImpl;

  factory _AnnoucmentData.fromJson(Map<String, dynamic> json) =
      _$AnnoucmentDataImpl.fromJson;

  @override
  @JsonKey(name: 'company_announcement_id')
  String? get companyAnnouncementId;
  @override
  @JsonKey(name: 'company_id')
  String? get companyId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$AnnoucmentDataImplCopyWith<_$AnnoucmentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
