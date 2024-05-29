// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyMap _$CompanyMapFromJson(Map<String, dynamic> json) {
  return _CompanyMap.fromJson(json);
}

/// @nodoc
mixin _$CompanyMap {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  BranchData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyMapCopyWith<CompanyMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyMapCopyWith<$Res> {
  factory $CompanyMapCopyWith(
          CompanyMap value, $Res Function(CompanyMap) then) =
      _$CompanyMapCopyWithImpl<$Res, CompanyMap>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') BranchData? data});

  $BranchDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CompanyMapCopyWithImpl<$Res, $Val extends CompanyMap>
    implements $CompanyMapCopyWith<$Res> {
  _$CompanyMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BranchData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BranchDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyMapImplCopyWith<$Res>
    implements $CompanyMapCopyWith<$Res> {
  factory _$$CompanyMapImplCopyWith(
          _$CompanyMapImpl value, $Res Function(_$CompanyMapImpl) then) =
      __$$CompanyMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'data') BranchData? data});

  @override
  $BranchDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CompanyMapImplCopyWithImpl<$Res>
    extends _$CompanyMapCopyWithImpl<$Res, _$CompanyMapImpl>
    implements _$$CompanyMapImplCopyWith<$Res> {
  __$$CompanyMapImplCopyWithImpl(
      _$CompanyMapImpl _value, $Res Function(_$CompanyMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CompanyMapImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BranchData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyMapImpl implements _CompanyMap {
  _$CompanyMapImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'data') this.data});

  factory _$CompanyMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyMapImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final BranchData? data;

  @override
  String toString() {
    return 'CompanyMap(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyMapImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyMapImplCopyWith<_$CompanyMapImpl> get copyWith =>
      __$$CompanyMapImplCopyWithImpl<_$CompanyMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyMapImplToJson(
      this,
    );
  }
}

abstract class _CompanyMap implements CompanyMap {
  factory _CompanyMap(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'data') final BranchData? data}) = _$CompanyMapImpl;

  factory _CompanyMap.fromJson(Map<String, dynamic> json) =
      _$CompanyMapImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'data')
  BranchData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CompanyMapImplCopyWith<_$CompanyMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BranchData _$BranchDataFromJson(Map<String, dynamic> json) {
  return _BranchData.fromJson(json);
}

/// @nodoc
mixin _$BranchData {
  @JsonKey(name: 'branch')
  Branch? get branch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchDataCopyWith<BranchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchDataCopyWith<$Res> {
  factory $BranchDataCopyWith(
          BranchData value, $Res Function(BranchData) then) =
      _$BranchDataCopyWithImpl<$Res, BranchData>;
  @useResult
  $Res call({@JsonKey(name: 'branch') Branch? branch});

  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class _$BranchDataCopyWithImpl<$Res, $Val extends BranchData>
    implements $BranchDataCopyWith<$Res> {
  _$BranchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = freezed,
  }) {
    return _then(_value.copyWith(
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BranchDataImplCopyWith<$Res>
    implements $BranchDataCopyWith<$Res> {
  factory _$$BranchDataImplCopyWith(
          _$BranchDataImpl value, $Res Function(_$BranchDataImpl) then) =
      __$$BranchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'branch') Branch? branch});

  @override
  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class __$$BranchDataImplCopyWithImpl<$Res>
    extends _$BranchDataCopyWithImpl<$Res, _$BranchDataImpl>
    implements _$$BranchDataImplCopyWith<$Res> {
  __$$BranchDataImplCopyWithImpl(
      _$BranchDataImpl _value, $Res Function(_$BranchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = freezed,
  }) {
    return _then(_$BranchDataImpl(
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchDataImpl implements _BranchData {
  _$BranchDataImpl({@JsonKey(name: 'branch') this.branch});

  factory _$BranchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchDataImplFromJson(json);

  @override
  @JsonKey(name: 'branch')
  final Branch? branch;

  @override
  String toString() {
    return 'BranchData(branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchDataImpl &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, branch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchDataImplCopyWith<_$BranchDataImpl> get copyWith =>
      __$$BranchDataImplCopyWithImpl<_$BranchDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchDataImplToJson(
      this,
    );
  }
}

abstract class _BranchData implements BranchData {
  factory _BranchData({@JsonKey(name: 'branch') final Branch? branch}) =
      _$BranchDataImpl;

  factory _BranchData.fromJson(Map<String, dynamic> json) =
      _$BranchDataImpl.fromJson;

  @override
  @JsonKey(name: 'branch')
  Branch? get branch;
  @override
  @JsonKey(ignore: true)
  _$$BranchDataImplCopyWith<_$BranchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'province')
  String? get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitute')
  double? get longitute => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'hq_initial')
  String? get hqInitial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address') String? address,
      @JsonKey(name: 'province') String? province,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'longitute') double? longitute,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'hq_initial') String? hqInitial});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? longitute = freezed,
    Object? latitude = freezed,
    Object? hqInitial = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      longitute: freezed == longitute
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      hqInitial: freezed == hqInitial
          ? _value.hqInitial
          : hqInitial // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address') String? address,
      @JsonKey(name: 'province') String? province,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'longitute') double? longitute,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'hq_initial') String? hqInitial});
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? longitute = freezed,
    Object? latitude = freezed,
    Object? hqInitial = freezed,
  }) {
    return _then(_$BranchImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      longitute: freezed == longitute
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      hqInitial: freezed == hqInitial
          ? _value.hqInitial
          : hqInitial // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  _$BranchImpl(
      {@JsonKey(name: 'address') this.address,
      @JsonKey(name: 'province') this.province,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'longitute') this.longitute,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'hq_initial') this.hqInitial});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'province')
  final String? province;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'longitute')
  final double? longitute;
  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'hq_initial')
  final String? hqInitial;

  @override
  String toString() {
    return 'Branch(address: $address, province: $province, city: $city, longitute: $longitute, latitude: $latitude, hqInitial: $hqInitial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.longitute, longitute) ||
                other.longitute == longitute) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.hqInitial, hqInitial) ||
                other.hqInitial == hqInitial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, address, province, city, longitute, latitude, hqInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(
      this,
    );
  }
}

abstract class _Branch implements Branch {
  factory _Branch(
      {@JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'province') final String? province,
      @JsonKey(name: 'city') final String? city,
      @JsonKey(name: 'longitute') final double? longitute,
      @JsonKey(name: 'latitude') final double? latitude,
      @JsonKey(name: 'hq_initial') final String? hqInitial}) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'province')
  String? get province;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'longitute')
  double? get longitute;
  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'hq_initial')
  String? get hqInitial;
  @override
  @JsonKey(ignore: true)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
