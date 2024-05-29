// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ProfileDataContainer? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ProfileDataContainer? data});

  $ProfileDataContainerCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileDataContainer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDataContainerCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileDataContainerCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResponseImplCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$ProfileResponseImplCopyWith(_$ProfileResponseImpl value,
          $Res Function(_$ProfileResponseImpl) then) =
      __$$ProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') ProfileDataContainer? data});

  @override
  $ProfileDataContainerCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileResponseImplCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$ProfileResponseImpl>
    implements _$$ProfileResponseImplCopyWith<$Res> {
  __$$ProfileResponseImplCopyWithImpl(
      _$ProfileResponseImpl _value, $Res Function(_$ProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProfileResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileDataContainer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseImpl implements _ProfileResponse {
  _$ProfileResponseImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$ProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final ProfileDataContainer? data;

  @override
  String toString() {
    return 'ProfileResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      __$$ProfileResponseImplCopyWithImpl<_$ProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponse implements ProfileResponse {
  factory _ProfileResponse(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final ProfileDataContainer? data}) =
      _$ProfileResponseImpl;

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  ProfileDataContainer? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDataContainer _$ProfileDataContainerFromJson(Map<String, dynamic> json) {
  return _ProfileDataContainer.fromJson(json);
}

/// @nodoc
mixin _$ProfileDataContainer {
  @JsonKey(name: 'user')
  ProfileData? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDataContainerCopyWith<ProfileDataContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataContainerCopyWith<$Res> {
  factory $ProfileDataContainerCopyWith(ProfileDataContainer value,
          $Res Function(ProfileDataContainer) then) =
      _$ProfileDataContainerCopyWithImpl<$Res, ProfileDataContainer>;
  @useResult
  $Res call({@JsonKey(name: 'user') ProfileData? user});

  $ProfileDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileDataContainerCopyWithImpl<$Res,
        $Val extends ProfileDataContainer>
    implements $ProfileDataContainerCopyWith<$Res> {
  _$ProfileDataContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDataContainerImplCopyWith<$Res>
    implements $ProfileDataContainerCopyWith<$Res> {
  factory _$$ProfileDataContainerImplCopyWith(_$ProfileDataContainerImpl value,
          $Res Function(_$ProfileDataContainerImpl) then) =
      __$$ProfileDataContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user') ProfileData? user});

  @override
  $ProfileDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileDataContainerImplCopyWithImpl<$Res>
    extends _$ProfileDataContainerCopyWithImpl<$Res, _$ProfileDataContainerImpl>
    implements _$$ProfileDataContainerImplCopyWith<$Res> {
  __$$ProfileDataContainerImplCopyWithImpl(_$ProfileDataContainerImpl _value,
      $Res Function(_$ProfileDataContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$ProfileDataContainerImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataContainerImpl implements _ProfileDataContainer {
  _$ProfileDataContainerImpl({@JsonKey(name: 'user') this.user});

  factory _$ProfileDataContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataContainerImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final ProfileData? user;

  @override
  String toString() {
    return 'ProfileDataContainer(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataContainerImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataContainerImplCopyWith<_$ProfileDataContainerImpl>
      get copyWith =>
          __$$ProfileDataContainerImplCopyWithImpl<_$ProfileDataContainerImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataContainerImplToJson(
      this,
    );
  }
}

abstract class _ProfileDataContainer implements ProfileDataContainer {
  factory _ProfileDataContainer(
          {@JsonKey(name: 'user') final ProfileData? user}) =
      _$ProfileDataContainerImpl;

  factory _ProfileDataContainer.fromJson(Map<String, dynamic> json) =
      _$ProfileDataContainerImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  ProfileData? get user;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDataContainerImplCopyWith<_$ProfileDataContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return _ProfileData.fromJson(json);
}

/// @nodoc
mixin _$ProfileData {
  @JsonKey(name: 'employee_id')
  String? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'employment_status_id')
  int? get employmentStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status')
  String? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'blood_type')
  String? get bloodType => throw _privateConstructorUsedError;
  @JsonKey(name: 'religion')
  String? get religion => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_type')
  String? get identityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_number')
  String? get identityNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_expired_date')
  String? get identityExpiredDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'join_date')
  String? get join_date => throw _privateConstructorUsedError;
  @JsonKey(name: 'postcal_code')
  String? get postcalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'citizen_id_address')
  String? get citizenIdAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'residential_address')
  String? get residentialAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_account_number')
  String? get bankAccountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_type')
  String? get bankType => throw _privateConstructorUsedError;
  @JsonKey(name: 'wage')
  int? get wage => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasResigned')
  bool? get hasResigned => throw _privateConstructorUsedError;
  @JsonKey(name: 'employment_status')
  StatusData? get employmentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position')
  PositionData? get jobPosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res, ProfileData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'employment_status_id') int? employmentStatusId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'marital_status') String? maritalStatus,
      @JsonKey(name: 'blood_type') String? bloodType,
      @JsonKey(name: 'religion') String? religion,
      @JsonKey(name: 'identity_type') String? identityType,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'identity_expired_date') String? identityExpiredDate,
      @JsonKey(name: 'join_date') String? join_date,
      @JsonKey(name: 'postcal_code') String? postcalCode,
      @JsonKey(name: 'citizen_id_address') String? citizenIdAddress,
      @JsonKey(name: 'residential_address') String? residentialAddress,
      @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
      @JsonKey(name: 'bank_type') String? bankType,
      @JsonKey(name: 'wage') int? wage,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'hasResigned') bool? hasResigned,
      @JsonKey(name: 'employment_status') StatusData? employmentStatus,
      @JsonKey(name: 'job_position') PositionData? jobPosition});

  $StatusDataCopyWith<$Res>? get employmentStatus;
  $PositionDataCopyWith<$Res>? get jobPosition;
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res, $Val extends ProfileData>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = freezed,
    Object? companyBranchId = freezed,
    Object? jobPositionId = freezed,
    Object? employmentStatusId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? placeOfBirth = freezed,
    Object? birthDate = freezed,
    Object? maritalStatus = freezed,
    Object? bloodType = freezed,
    Object? religion = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? identityExpiredDate = freezed,
    Object? join_date = freezed,
    Object? postcalCode = freezed,
    Object? citizenIdAddress = freezed,
    Object? residentialAddress = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankType = freezed,
    Object? wage = freezed,
    Object? password = freezed,
    Object? hasResigned = freezed,
    Object? employmentStatus = freezed,
    Object? jobPosition = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      employmentStatusId: freezed == employmentStatusId
          ? _value.employmentStatusId
          : employmentStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      identityType: freezed == identityType
          ? _value.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNumber: freezed == identityNumber
          ? _value.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      identityExpiredDate: freezed == identityExpiredDate
          ? _value.identityExpiredDate
          : identityExpiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      join_date: freezed == join_date
          ? _value.join_date
          : join_date // ignore: cast_nullable_to_non_nullable
              as String?,
      postcalCode: freezed == postcalCode
          ? _value.postcalCode
          : postcalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenIdAddress: freezed == citizenIdAddress
          ? _value.citizenIdAddress
          : citizenIdAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankType: freezed == bankType
          ? _value.bankType
          : bankType // ignore: cast_nullable_to_non_nullable
              as String?,
      wage: freezed == wage
          ? _value.wage
          : wage // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      hasResigned: freezed == hasResigned
          ? _value.hasResigned
          : hasResigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      employmentStatus: freezed == employmentStatus
          ? _value.employmentStatus
          : employmentStatus // ignore: cast_nullable_to_non_nullable
              as StatusData?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as PositionData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusDataCopyWith<$Res>? get employmentStatus {
    if (_value.employmentStatus == null) {
      return null;
    }

    return $StatusDataCopyWith<$Res>(_value.employmentStatus!, (value) {
      return _then(_value.copyWith(employmentStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionDataCopyWith<$Res>? get jobPosition {
    if (_value.jobPosition == null) {
      return null;
    }

    return $PositionDataCopyWith<$Res>(_value.jobPosition!, (value) {
      return _then(_value.copyWith(jobPosition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDataImplCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$$ProfileDataImplCopyWith(
          _$ProfileDataImpl value, $Res Function(_$ProfileDataImpl) then) =
      __$$ProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'employment_status_id') int? employmentStatusId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'marital_status') String? maritalStatus,
      @JsonKey(name: 'blood_type') String? bloodType,
      @JsonKey(name: 'religion') String? religion,
      @JsonKey(name: 'identity_type') String? identityType,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'identity_expired_date') String? identityExpiredDate,
      @JsonKey(name: 'join_date') String? join_date,
      @JsonKey(name: 'postcal_code') String? postcalCode,
      @JsonKey(name: 'citizen_id_address') String? citizenIdAddress,
      @JsonKey(name: 'residential_address') String? residentialAddress,
      @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
      @JsonKey(name: 'bank_type') String? bankType,
      @JsonKey(name: 'wage') int? wage,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'hasResigned') bool? hasResigned,
      @JsonKey(name: 'employment_status') StatusData? employmentStatus,
      @JsonKey(name: 'job_position') PositionData? jobPosition});

  @override
  $StatusDataCopyWith<$Res>? get employmentStatus;
  @override
  $PositionDataCopyWith<$Res>? get jobPosition;
}

/// @nodoc
class __$$ProfileDataImplCopyWithImpl<$Res>
    extends _$ProfileDataCopyWithImpl<$Res, _$ProfileDataImpl>
    implements _$$ProfileDataImplCopyWith<$Res> {
  __$$ProfileDataImplCopyWithImpl(
      _$ProfileDataImpl _value, $Res Function(_$ProfileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = freezed,
    Object? companyBranchId = freezed,
    Object? jobPositionId = freezed,
    Object? employmentStatusId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? placeOfBirth = freezed,
    Object? birthDate = freezed,
    Object? maritalStatus = freezed,
    Object? bloodType = freezed,
    Object? religion = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? identityExpiredDate = freezed,
    Object? join_date = freezed,
    Object? postcalCode = freezed,
    Object? citizenIdAddress = freezed,
    Object? residentialAddress = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankType = freezed,
    Object? wage = freezed,
    Object? password = freezed,
    Object? hasResigned = freezed,
    Object? employmentStatus = freezed,
    Object? jobPosition = freezed,
  }) {
    return _then(_$ProfileDataImpl(
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      employmentStatusId: freezed == employmentStatusId
          ? _value.employmentStatusId
          : employmentStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      identityType: freezed == identityType
          ? _value.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNumber: freezed == identityNumber
          ? _value.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      identityExpiredDate: freezed == identityExpiredDate
          ? _value.identityExpiredDate
          : identityExpiredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      join_date: freezed == join_date
          ? _value.join_date
          : join_date // ignore: cast_nullable_to_non_nullable
              as String?,
      postcalCode: freezed == postcalCode
          ? _value.postcalCode
          : postcalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenIdAddress: freezed == citizenIdAddress
          ? _value.citizenIdAddress
          : citizenIdAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      residentialAddress: freezed == residentialAddress
          ? _value.residentialAddress
          : residentialAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankType: freezed == bankType
          ? _value.bankType
          : bankType // ignore: cast_nullable_to_non_nullable
              as String?,
      wage: freezed == wage
          ? _value.wage
          : wage // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      hasResigned: freezed == hasResigned
          ? _value.hasResigned
          : hasResigned // ignore: cast_nullable_to_non_nullable
              as bool?,
      employmentStatus: freezed == employmentStatus
          ? _value.employmentStatus
          : employmentStatus // ignore: cast_nullable_to_non_nullable
              as StatusData?,
      jobPosition: freezed == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as PositionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataImpl implements _ProfileData {
  _$ProfileDataImpl(
      {@JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'company_branch_id') this.companyBranchId,
      @JsonKey(name: 'job_position_id') this.jobPositionId,
      @JsonKey(name: 'employment_status_id') this.employmentStatusId,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'place_of_birth') this.placeOfBirth,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'marital_status') this.maritalStatus,
      @JsonKey(name: 'blood_type') this.bloodType,
      @JsonKey(name: 'religion') this.religion,
      @JsonKey(name: 'identity_type') this.identityType,
      @JsonKey(name: 'identity_number') this.identityNumber,
      @JsonKey(name: 'identity_expired_date') this.identityExpiredDate,
      @JsonKey(name: 'join_date') this.join_date,
      @JsonKey(name: 'postcal_code') this.postcalCode,
      @JsonKey(name: 'citizen_id_address') this.citizenIdAddress,
      @JsonKey(name: 'residential_address') this.residentialAddress,
      @JsonKey(name: 'bank_account_number') this.bankAccountNumber,
      @JsonKey(name: 'bank_type') this.bankType,
      @JsonKey(name: 'wage') this.wage,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'hasResigned') this.hasResigned,
      @JsonKey(name: 'employment_status') this.employmentStatus,
      @JsonKey(name: 'job_position') this.jobPosition});

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  @JsonKey(name: 'employee_id')
  final String? employeeId;
  @override
  @JsonKey(name: 'company_branch_id')
  final String? companyBranchId;
  @override
  @JsonKey(name: 'job_position_id')
  final int? jobPositionId;
  @override
  @JsonKey(name: 'employment_status_id')
  final int? employmentStatusId;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'place_of_birth')
  final String? placeOfBirth;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'marital_status')
  final String? maritalStatus;
  @override
  @JsonKey(name: 'blood_type')
  final String? bloodType;
  @override
  @JsonKey(name: 'religion')
  final String? religion;
  @override
  @JsonKey(name: 'identity_type')
  final String? identityType;
  @override
  @JsonKey(name: 'identity_number')
  final String? identityNumber;
  @override
  @JsonKey(name: 'identity_expired_date')
  final String? identityExpiredDate;
  @override
  @JsonKey(name: 'join_date')
  final String? join_date;
  @override
  @JsonKey(name: 'postcal_code')
  final String? postcalCode;
  @override
  @JsonKey(name: 'citizen_id_address')
  final String? citizenIdAddress;
  @override
  @JsonKey(name: 'residential_address')
  final String? residentialAddress;
  @override
  @JsonKey(name: 'bank_account_number')
  final String? bankAccountNumber;
  @override
  @JsonKey(name: 'bank_type')
  final String? bankType;
  @override
  @JsonKey(name: 'wage')
  final int? wage;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'hasResigned')
  final bool? hasResigned;
  @override
  @JsonKey(name: 'employment_status')
  final StatusData? employmentStatus;
  @override
  @JsonKey(name: 'job_position')
  final PositionData? jobPosition;

  @override
  String toString() {
    return 'ProfileData(employeeId: $employeeId, companyBranchId: $companyBranchId, jobPositionId: $jobPositionId, employmentStatusId: $employmentStatusId, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, placeOfBirth: $placeOfBirth, birthDate: $birthDate, maritalStatus: $maritalStatus, bloodType: $bloodType, religion: $religion, identityType: $identityType, identityNumber: $identityNumber, identityExpiredDate: $identityExpiredDate, join_date: $join_date, postcalCode: $postcalCode, citizenIdAddress: $citizenIdAddress, residentialAddress: $residentialAddress, bankAccountNumber: $bankAccountNumber, bankType: $bankType, wage: $wage, password: $password, hasResigned: $hasResigned, employmentStatus: $employmentStatus, jobPosition: $jobPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.companyBranchId, companyBranchId) ||
                other.companyBranchId == companyBranchId) &&
            (identical(other.jobPositionId, jobPositionId) ||
                other.jobPositionId == jobPositionId) &&
            (identical(other.employmentStatusId, employmentStatusId) ||
                other.employmentStatusId == employmentStatusId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.identityType, identityType) ||
                other.identityType == identityType) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.identityExpiredDate, identityExpiredDate) ||
                other.identityExpiredDate == identityExpiredDate) &&
            (identical(other.join_date, join_date) ||
                other.join_date == join_date) &&
            (identical(other.postcalCode, postcalCode) ||
                other.postcalCode == postcalCode) &&
            (identical(other.citizenIdAddress, citizenIdAddress) ||
                other.citizenIdAddress == citizenIdAddress) &&
            (identical(other.residentialAddress, residentialAddress) ||
                other.residentialAddress == residentialAddress) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.bankType, bankType) ||
                other.bankType == bankType) &&
            (identical(other.wage, wage) || other.wage == wage) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.hasResigned, hasResigned) ||
                other.hasResigned == hasResigned) &&
            (identical(other.employmentStatus, employmentStatus) ||
                other.employmentStatus == employmentStatus) &&
            (identical(other.jobPosition, jobPosition) ||
                other.jobPosition == jobPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        employeeId,
        companyBranchId,
        jobPositionId,
        employmentStatusId,
        firstName,
        lastName,
        email,
        phoneNumber,
        placeOfBirth,
        birthDate,
        maritalStatus,
        bloodType,
        religion,
        identityType,
        identityNumber,
        identityExpiredDate,
        join_date,
        postcalCode,
        citizenIdAddress,
        residentialAddress,
        bankAccountNumber,
        bankType,
        wage,
        password,
        hasResigned,
        employmentStatus,
        jobPosition
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      __$$ProfileDataImplCopyWithImpl<_$ProfileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileData implements ProfileData {
  factory _ProfileData(
      {@JsonKey(name: 'employee_id') final String? employeeId,
      @JsonKey(name: 'company_branch_id') final String? companyBranchId,
      @JsonKey(name: 'job_position_id') final int? jobPositionId,
      @JsonKey(name: 'employment_status_id') final int? employmentStatusId,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'place_of_birth') final String? placeOfBirth,
      @JsonKey(name: 'birth_date') final String? birthDate,
      @JsonKey(name: 'marital_status') final String? maritalStatus,
      @JsonKey(name: 'blood_type') final String? bloodType,
      @JsonKey(name: 'religion') final String? religion,
      @JsonKey(name: 'identity_type') final String? identityType,
      @JsonKey(name: 'identity_number') final String? identityNumber,
      @JsonKey(name: 'identity_expired_date') final String? identityExpiredDate,
      @JsonKey(name: 'join_date') final String? join_date,
      @JsonKey(name: 'postcal_code') final String? postcalCode,
      @JsonKey(name: 'citizen_id_address') final String? citizenIdAddress,
      @JsonKey(name: 'residential_address') final String? residentialAddress,
      @JsonKey(name: 'bank_account_number') final String? bankAccountNumber,
      @JsonKey(name: 'bank_type') final String? bankType,
      @JsonKey(name: 'wage') final int? wage,
      @JsonKey(name: 'password') final String? password,
      @JsonKey(name: 'hasResigned') final bool? hasResigned,
      @JsonKey(name: 'employment_status') final StatusData? employmentStatus,
      @JsonKey(name: 'job_position')
      final PositionData? jobPosition}) = _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  @JsonKey(name: 'employee_id')
  String? get employeeId;
  @override
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId;
  @override
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId;
  @override
  @JsonKey(name: 'employment_status_id')
  int? get employmentStatusId;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(name: 'marital_status')
  String? get maritalStatus;
  @override
  @JsonKey(name: 'blood_type')
  String? get bloodType;
  @override
  @JsonKey(name: 'religion')
  String? get religion;
  @override
  @JsonKey(name: 'identity_type')
  String? get identityType;
  @override
  @JsonKey(name: 'identity_number')
  String? get identityNumber;
  @override
  @JsonKey(name: 'identity_expired_date')
  String? get identityExpiredDate;
  @override
  @JsonKey(name: 'join_date')
  String? get join_date;
  @override
  @JsonKey(name: 'postcal_code')
  String? get postcalCode;
  @override
  @JsonKey(name: 'citizen_id_address')
  String? get citizenIdAddress;
  @override
  @JsonKey(name: 'residential_address')
  String? get residentialAddress;
  @override
  @JsonKey(name: 'bank_account_number')
  String? get bankAccountNumber;
  @override
  @JsonKey(name: 'bank_type')
  String? get bankType;
  @override
  @JsonKey(name: 'wage')
  int? get wage;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'hasResigned')
  bool? get hasResigned;
  @override
  @JsonKey(name: 'employment_status')
  StatusData? get employmentStatus;
  @override
  @JsonKey(name: 'job_position')
  PositionData? get jobPosition;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionData _$PositionDataFromJson(Map<String, dynamic> json) {
  return _PositionData.fromJson(json);
}

/// @nodoc
mixin _$PositionData {
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionDataCopyWith<PositionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDataCopyWith<$Res> {
  factory $PositionDataCopyWith(
          PositionData value, $Res Function(PositionData) then) =
      _$PositionDataCopyWithImpl<$Res, PositionData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$PositionDataCopyWithImpl<$Res, $Val extends PositionData>
    implements $PositionDataCopyWith<$Res> {
  _$PositionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobPositionId = freezed,
    Object? companyBranchId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionDataImplCopyWith<$Res>
    implements $PositionDataCopyWith<$Res> {
  factory _$$PositionDataImplCopyWith(
          _$PositionDataImpl value, $Res Function(_$PositionDataImpl) then) =
      __$$PositionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_position_id') int? jobPositionId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$PositionDataImplCopyWithImpl<$Res>
    extends _$PositionDataCopyWithImpl<$Res, _$PositionDataImpl>
    implements _$$PositionDataImplCopyWith<$Res> {
  __$$PositionDataImplCopyWithImpl(
      _$PositionDataImpl _value, $Res Function(_$PositionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobPositionId = freezed,
    Object? companyBranchId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PositionDataImpl(
      jobPositionId: freezed == jobPositionId
          ? _value.jobPositionId
          : jobPositionId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionDataImpl implements _PositionData {
  _$PositionDataImpl(
      {@JsonKey(name: 'job_position_id') this.jobPositionId,
      @JsonKey(name: 'company_branch_id') this.companyBranchId,
      @JsonKey(name: 'name') this.name});

  factory _$PositionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionDataImplFromJson(json);

  @override
  @JsonKey(name: 'job_position_id')
  final int? jobPositionId;
  @override
  @JsonKey(name: 'company_branch_id')
  final String? companyBranchId;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'PositionData(jobPositionId: $jobPositionId, companyBranchId: $companyBranchId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionDataImpl &&
            (identical(other.jobPositionId, jobPositionId) ||
                other.jobPositionId == jobPositionId) &&
            (identical(other.companyBranchId, companyBranchId) ||
                other.companyBranchId == companyBranchId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jobPositionId, companyBranchId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      __$$PositionDataImplCopyWithImpl<_$PositionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionDataImplToJson(
      this,
    );
  }
}

abstract class _PositionData implements PositionData {
  factory _PositionData(
      {@JsonKey(name: 'job_position_id') final int? jobPositionId,
      @JsonKey(name: 'company_branch_id') final String? companyBranchId,
      @JsonKey(name: 'name') final String? name}) = _$PositionDataImpl;

  factory _PositionData.fromJson(Map<String, dynamic> json) =
      _$PositionDataImpl.fromJson;

  @override
  @JsonKey(name: 'job_position_id')
  int? get jobPositionId;
  @override
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusData _$StatusDataFromJson(Map<String, dynamic> json) {
  return _StatusData.fromJson(json);
}

/// @nodoc
mixin _$StatusData {
  @JsonKey(name: 'employment_status_id')
  int? get employmentStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusDataCopyWith<StatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusDataCopyWith<$Res> {
  factory $StatusDataCopyWith(
          StatusData value, $Res Function(StatusData) then) =
      _$StatusDataCopyWithImpl<$Res, StatusData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employment_status_id') int? employmentStatusId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$StatusDataCopyWithImpl<$Res, $Val extends StatusData>
    implements $StatusDataCopyWith<$Res> {
  _$StatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employmentStatusId = freezed,
    Object? companyBranchId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      employmentStatusId: freezed == employmentStatusId
          ? _value.employmentStatusId
          : employmentStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusDataImplCopyWith<$Res>
    implements $StatusDataCopyWith<$Res> {
  factory _$$StatusDataImplCopyWith(
          _$StatusDataImpl value, $Res Function(_$StatusDataImpl) then) =
      __$$StatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employment_status_id') int? employmentStatusId,
      @JsonKey(name: 'company_branch_id') String? companyBranchId,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$StatusDataImplCopyWithImpl<$Res>
    extends _$StatusDataCopyWithImpl<$Res, _$StatusDataImpl>
    implements _$$StatusDataImplCopyWith<$Res> {
  __$$StatusDataImplCopyWithImpl(
      _$StatusDataImpl _value, $Res Function(_$StatusDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employmentStatusId = freezed,
    Object? companyBranchId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$StatusDataImpl(
      employmentStatusId: freezed == employmentStatusId
          ? _value.employmentStatusId
          : employmentStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyBranchId: freezed == companyBranchId
          ? _value.companyBranchId
          : companyBranchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusDataImpl implements _StatusData {
  _$StatusDataImpl(
      {@JsonKey(name: 'employment_status_id') this.employmentStatusId,
      @JsonKey(name: 'company_branch_id') this.companyBranchId,
      @JsonKey(name: 'name') this.name});

  factory _$StatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusDataImplFromJson(json);

  @override
  @JsonKey(name: 'employment_status_id')
  final int? employmentStatusId;
  @override
  @JsonKey(name: 'company_branch_id')
  final String? companyBranchId;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'StatusData(employmentStatusId: $employmentStatusId, companyBranchId: $companyBranchId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusDataImpl &&
            (identical(other.employmentStatusId, employmentStatusId) ||
                other.employmentStatusId == employmentStatusId) &&
            (identical(other.companyBranchId, companyBranchId) ||
                other.companyBranchId == companyBranchId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, employmentStatusId, companyBranchId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusDataImplCopyWith<_$StatusDataImpl> get copyWith =>
      __$$StatusDataImplCopyWithImpl<_$StatusDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusDataImplToJson(
      this,
    );
  }
}

abstract class _StatusData implements StatusData {
  factory _StatusData(
      {@JsonKey(name: 'employment_status_id') final int? employmentStatusId,
      @JsonKey(name: 'company_branch_id') final String? companyBranchId,
      @JsonKey(name: 'name') final String? name}) = _$StatusDataImpl;

  factory _StatusData.fromJson(Map<String, dynamic> json) =
      _$StatusDataImpl.fromJson;

  @override
  @JsonKey(name: 'employment_status_id')
  int? get employmentStatusId;
  @override
  @JsonKey(name: 'company_branch_id')
  String? get companyBranchId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$StatusDataImplCopyWith<_$StatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
