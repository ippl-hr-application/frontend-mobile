// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyBranchId _$CompanyBranchIdFromJson(Map<String, dynamic> json) {
  return _CompanyBranchId.fromJson(json);
}

/// @nodoc
mixin _$CompanyBranchId {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyBranchIdCopyWith<CompanyBranchId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyBranchIdCopyWith<$Res> {
  factory $CompanyBranchIdCopyWith(
          CompanyBranchId value, $Res Function(CompanyBranchId) then) =
      _$CompanyBranchIdCopyWithImpl<$Res, CompanyBranchId>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'message') String? message});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CompanyBranchIdCopyWithImpl<$Res, $Val extends CompanyBranchId>
    implements $CompanyBranchIdCopyWith<$Res> {
  _$CompanyBranchIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyBranchIdImplCopyWith<$Res>
    implements $CompanyBranchIdCopyWith<$Res> {
  factory _$$CompanyBranchIdImplCopyWith(_$CompanyBranchIdImpl value,
          $Res Function(_$CompanyBranchIdImpl) then) =
      __$$CompanyBranchIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'message') String? message});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CompanyBranchIdImplCopyWithImpl<$Res>
    extends _$CompanyBranchIdCopyWithImpl<$Res, _$CompanyBranchIdImpl>
    implements _$$CompanyBranchIdImplCopyWith<$Res> {
  __$$CompanyBranchIdImplCopyWithImpl(
      _$CompanyBranchIdImpl _value, $Res Function(_$CompanyBranchIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CompanyBranchIdImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyBranchIdImpl implements _CompanyBranchId {
  _$CompanyBranchIdImpl(
      {@JsonKey(name: 'success') required this.success,
      @JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'message') required this.message});

  factory _$CompanyBranchIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyBranchIdImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final Data? data;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CompanyBranchId(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyBranchIdImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyBranchIdImplCopyWith<_$CompanyBranchIdImpl> get copyWith =>
      __$$CompanyBranchIdImplCopyWithImpl<_$CompanyBranchIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyBranchIdImplToJson(
      this,
    );
  }
}

abstract class _CompanyBranchId implements CompanyBranchId {
  factory _CompanyBranchId(
          {@JsonKey(name: 'success') required final bool? success,
          @JsonKey(name: 'data') required final Data? data,
          @JsonKey(name: 'message') required final String? message}) =
      _$CompanyBranchIdImpl;

  factory _CompanyBranchId.fromJson(Map<String, dynamic> json) =
      _$CompanyBranchIdImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'data')
  Data? get data;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CompanyBranchIdImplCopyWith<_$CompanyBranchIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'branches')
  List<Branchs>? get branches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: 'branches') List<Branchs>? branches});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = freezed,
  }) {
    return _then(_value.copyWith(
      branches: freezed == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branchs>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'branches') List<Branchs>? branches});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = freezed,
  }) {
    return _then(_$DataImpl(
      branches: freezed == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branchs>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl({@JsonKey(name: 'branches') final List<Branchs>? branches})
      : _branches = branches;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Branchs>? _branches;
  @override
  @JsonKey(name: 'branches')
  List<Branchs>? get branches {
    final value = _branches;
    if (value == null) return null;
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(branches: $branches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_branches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data({@JsonKey(name: 'branches') final List<Branchs>? branches}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'branches')
  List<Branchs>? get branches;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branchs _$BranchsFromJson(Map<String, dynamic> json) {
  return _Branchs.fromJson(json);
}

/// @nodoc
mixin _$Branchs {
  @JsonKey(name: 'company_branch_id')
  String? get company_branch_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  String? get company_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hq_initial')
  String? get hq_initial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchsCopyWith<Branchs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchsCopyWith<$Res> {
  factory $BranchsCopyWith(Branchs value, $Res Function(Branchs) then) =
      _$BranchsCopyWithImpl<$Res, Branchs>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_branch_id') String? company_branch_id,
      @JsonKey(name: 'company_id') String? company_id,
      @JsonKey(name: 'hq_initial') String? hq_initial});
}

/// @nodoc
class _$BranchsCopyWithImpl<$Res, $Val extends Branchs>
    implements $BranchsCopyWith<$Res> {
  _$BranchsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company_branch_id = freezed,
    Object? company_id = freezed,
    Object? hq_initial = freezed,
  }) {
    return _then(_value.copyWith(
      company_branch_id: freezed == company_branch_id
          ? _value.company_branch_id
          : company_branch_id // ignore: cast_nullable_to_non_nullable
              as String?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String?,
      hq_initial: freezed == hq_initial
          ? _value.hq_initial
          : hq_initial // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchsImplCopyWith<$Res> implements $BranchsCopyWith<$Res> {
  factory _$$BranchsImplCopyWith(
          _$BranchsImpl value, $Res Function(_$BranchsImpl) then) =
      __$$BranchsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_branch_id') String? company_branch_id,
      @JsonKey(name: 'company_id') String? company_id,
      @JsonKey(name: 'hq_initial') String? hq_initial});
}

/// @nodoc
class __$$BranchsImplCopyWithImpl<$Res>
    extends _$BranchsCopyWithImpl<$Res, _$BranchsImpl>
    implements _$$BranchsImplCopyWith<$Res> {
  __$$BranchsImplCopyWithImpl(
      _$BranchsImpl _value, $Res Function(_$BranchsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company_branch_id = freezed,
    Object? company_id = freezed,
    Object? hq_initial = freezed,
  }) {
    return _then(_$BranchsImpl(
      company_branch_id: freezed == company_branch_id
          ? _value.company_branch_id
          : company_branch_id // ignore: cast_nullable_to_non_nullable
              as String?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String?,
      hq_initial: freezed == hq_initial
          ? _value.hq_initial
          : hq_initial // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchsImpl implements _Branchs {
  _$BranchsImpl(
      {@JsonKey(name: 'company_branch_id') this.company_branch_id,
      @JsonKey(name: 'company_id') this.company_id,
      @JsonKey(name: 'hq_initial') this.hq_initial});

  factory _$BranchsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchsImplFromJson(json);

  @override
  @JsonKey(name: 'company_branch_id')
  final String? company_branch_id;
  @override
  @JsonKey(name: 'company_id')
  final String? company_id;
  @override
  @JsonKey(name: 'hq_initial')
  final String? hq_initial;

  @override
  String toString() {
    return 'Branchs(company_branch_id: $company_branch_id, company_id: $company_id, hq_initial: $hq_initial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchsImpl &&
            (identical(other.company_branch_id, company_branch_id) ||
                other.company_branch_id == company_branch_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.hq_initial, hq_initial) ||
                other.hq_initial == hq_initial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, company_branch_id, company_id, hq_initial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchsImplCopyWith<_$BranchsImpl> get copyWith =>
      __$$BranchsImplCopyWithImpl<_$BranchsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchsImplToJson(
      this,
    );
  }
}

abstract class _Branchs implements Branchs {
  factory _Branchs(
      {@JsonKey(name: 'company_branch_id') final String? company_branch_id,
      @JsonKey(name: 'company_id') final String? company_id,
      @JsonKey(name: 'hq_initial') final String? hq_initial}) = _$BranchsImpl;

  factory _Branchs.fromJson(Map<String, dynamic> json) = _$BranchsImpl.fromJson;

  @override
  @JsonKey(name: 'company_branch_id')
  String? get company_branch_id;
  @override
  @JsonKey(name: 'company_id')
  String? get company_id;
  @override
  @JsonKey(name: 'hq_initial')
  String? get hq_initial;
  @override
  @JsonKey(ignore: true)
  _$$BranchsImplCopyWith<_$BranchsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
