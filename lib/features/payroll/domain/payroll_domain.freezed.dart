// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payroll_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayroleHistory _$PayroleHistoryFromJson(Map<String, dynamic> json) {
  return _PayroleHistory.fromJson(json);
}

/// @nodoc
mixin _$PayroleHistory {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Payrolls? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayroleHistoryCopyWith<PayroleHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayroleHistoryCopyWith<$Res> {
  factory $PayroleHistoryCopyWith(
          PayroleHistory value, $Res Function(PayroleHistory) then) =
      _$PayroleHistoryCopyWithImpl<$Res, PayroleHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Payrolls? data});

  $PayrollsCopyWith<$Res>? get data;
}

/// @nodoc
class _$PayroleHistoryCopyWithImpl<$Res, $Val extends PayroleHistory>
    implements $PayroleHistoryCopyWith<$Res> {
  _$PayroleHistoryCopyWithImpl(this._value, this._then);

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
              as Payrolls?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayrollsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PayrollsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayroleHistoryImplCopyWith<$Res>
    implements $PayroleHistoryCopyWith<$Res> {
  factory _$$PayroleHistoryImplCopyWith(_$PayroleHistoryImpl value,
          $Res Function(_$PayroleHistoryImpl) then) =
      __$$PayroleHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Payrolls? data});

  @override
  $PayrollsCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PayroleHistoryImplCopyWithImpl<$Res>
    extends _$PayroleHistoryCopyWithImpl<$Res, _$PayroleHistoryImpl>
    implements _$$PayroleHistoryImplCopyWith<$Res> {
  __$$PayroleHistoryImplCopyWithImpl(
      _$PayroleHistoryImpl _value, $Res Function(_$PayroleHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PayroleHistoryImpl(
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
              as Payrolls?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayroleHistoryImpl implements _PayroleHistory {
  _$PayroleHistoryImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$PayroleHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayroleHistoryImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Payrolls? data;

  @override
  String toString() {
    return 'PayroleHistory(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayroleHistoryImpl &&
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
  _$$PayroleHistoryImplCopyWith<_$PayroleHistoryImpl> get copyWith =>
      __$$PayroleHistoryImplCopyWithImpl<_$PayroleHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayroleHistoryImplToJson(
      this,
    );
  }
}

abstract class _PayroleHistory implements PayroleHistory {
  factory _PayroleHistory(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final Payrolls? data}) = _$PayroleHistoryImpl;

  factory _PayroleHistory.fromJson(Map<String, dynamic> json) =
      _$PayroleHistoryImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  Payrolls? get data;
  @override
  @JsonKey(ignore: true)
  _$$PayroleHistoryImplCopyWith<_$PayroleHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payrolls _$PayrollsFromJson(Map<String, dynamic> json) {
  return _Payrolls.fromJson(json);
}

/// @nodoc
mixin _$Payrolls {
  @JsonKey(name: 'payrolls')
  List<PayrollData>? get payrolls => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_wage')
  int? get total_wage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayrollsCopyWith<Payrolls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayrollsCopyWith<$Res> {
  factory $PayrollsCopyWith(Payrolls value, $Res Function(Payrolls) then) =
      _$PayrollsCopyWithImpl<$Res, Payrolls>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payrolls') List<PayrollData>? payrolls,
      @JsonKey(name: 'total_wage') int? total_wage});
}

/// @nodoc
class _$PayrollsCopyWithImpl<$Res, $Val extends Payrolls>
    implements $PayrollsCopyWith<$Res> {
  _$PayrollsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payrolls = freezed,
    Object? total_wage = freezed,
  }) {
    return _then(_value.copyWith(
      payrolls: freezed == payrolls
          ? _value.payrolls
          : payrolls // ignore: cast_nullable_to_non_nullable
              as List<PayrollData>?,
      total_wage: freezed == total_wage
          ? _value.total_wage
          : total_wage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayrollsImplCopyWith<$Res>
    implements $PayrollsCopyWith<$Res> {
  factory _$$PayrollsImplCopyWith(
          _$PayrollsImpl value, $Res Function(_$PayrollsImpl) then) =
      __$$PayrollsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payrolls') List<PayrollData>? payrolls,
      @JsonKey(name: 'total_wage') int? total_wage});
}

/// @nodoc
class __$$PayrollsImplCopyWithImpl<$Res>
    extends _$PayrollsCopyWithImpl<$Res, _$PayrollsImpl>
    implements _$$PayrollsImplCopyWith<$Res> {
  __$$PayrollsImplCopyWithImpl(
      _$PayrollsImpl _value, $Res Function(_$PayrollsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payrolls = freezed,
    Object? total_wage = freezed,
  }) {
    return _then(_$PayrollsImpl(
      payrolls: freezed == payrolls
          ? _value._payrolls
          : payrolls // ignore: cast_nullable_to_non_nullable
              as List<PayrollData>?,
      total_wage: freezed == total_wage
          ? _value.total_wage
          : total_wage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayrollsImpl implements _Payrolls {
  _$PayrollsImpl(
      {@JsonKey(name: 'payrolls') final List<PayrollData>? payrolls,
      @JsonKey(name: 'total_wage') this.total_wage})
      : _payrolls = payrolls;

  factory _$PayrollsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayrollsImplFromJson(json);

  final List<PayrollData>? _payrolls;
  @override
  @JsonKey(name: 'payrolls')
  List<PayrollData>? get payrolls {
    final value = _payrolls;
    if (value == null) return null;
    if (_payrolls is EqualUnmodifiableListView) return _payrolls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_wage')
  final int? total_wage;

  @override
  String toString() {
    return 'Payrolls(payrolls: $payrolls, total_wage: $total_wage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayrollsImpl &&
            const DeepCollectionEquality().equals(other._payrolls, _payrolls) &&
            (identical(other.total_wage, total_wage) ||
                other.total_wage == total_wage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_payrolls), total_wage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayrollsImplCopyWith<_$PayrollsImpl> get copyWith =>
      __$$PayrollsImplCopyWithImpl<_$PayrollsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayrollsImplToJson(
      this,
    );
  }
}

abstract class _Payrolls implements Payrolls {
  factory _Payrolls(
      {@JsonKey(name: 'payrolls') final List<PayrollData>? payrolls,
      @JsonKey(name: 'total_wage') final int? total_wage}) = _$PayrollsImpl;

  factory _Payrolls.fromJson(Map<String, dynamic> json) =
      _$PayrollsImpl.fromJson;

  @override
  @JsonKey(name: 'payrolls')
  List<PayrollData>? get payrolls;
  @override
  @JsonKey(name: 'total_wage')
  int? get total_wage;
  @override
  @JsonKey(ignore: true)
  _$$PayrollsImplCopyWith<_$PayrollsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayrollData _$PayrollDataFromJson(Map<String, dynamic> json) {
  return _PayrollData.fromJson(json);
}

/// @nodoc
mixin _$PayrollData {
  @JsonKey(name: 'payroll_id')
  int? get payroll_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_branch_id')
  String? get company_branch_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  String? get employee_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'month')
  int? get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'wage')
  int? get wage => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee')
  Employess? get employee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayrollDataCopyWith<PayrollData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayrollDataCopyWith<$Res> {
  factory $PayrollDataCopyWith(
          PayrollData value, $Res Function(PayrollData) then) =
      _$PayrollDataCopyWithImpl<$Res, PayrollData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payroll_id') int? payroll_id,
      @JsonKey(name: 'company_branch_id') String? company_branch_id,
      @JsonKey(name: 'employee_id') String? employee_id,
      @JsonKey(name: 'month') int? month,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: 'wage') int? wage,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'employee') Employess? employee});

  $EmployessCopyWith<$Res>? get employee;
}

/// @nodoc
class _$PayrollDataCopyWithImpl<$Res, $Val extends PayrollData>
    implements $PayrollDataCopyWith<$Res> {
  _$PayrollDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payroll_id = freezed,
    Object? company_branch_id = freezed,
    Object? employee_id = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? wage = freezed,
    Object? status = freezed,
    Object? employee = freezed,
  }) {
    return _then(_value.copyWith(
      payroll_id: freezed == payroll_id
          ? _value.payroll_id
          : payroll_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_branch_id: freezed == company_branch_id
          ? _value.company_branch_id
          : company_branch_id // ignore: cast_nullable_to_non_nullable
              as String?,
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      wage: freezed == wage
          ? _value.wage
          : wage // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employess?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployessCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployessCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayrollDataImplCopyWith<$Res>
    implements $PayrollDataCopyWith<$Res> {
  factory _$$PayrollDataImplCopyWith(
          _$PayrollDataImpl value, $Res Function(_$PayrollDataImpl) then) =
      __$$PayrollDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payroll_id') int? payroll_id,
      @JsonKey(name: 'company_branch_id') String? company_branch_id,
      @JsonKey(name: 'employee_id') String? employee_id,
      @JsonKey(name: 'month') int? month,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: 'wage') int? wage,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'employee') Employess? employee});

  @override
  $EmployessCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$PayrollDataImplCopyWithImpl<$Res>
    extends _$PayrollDataCopyWithImpl<$Res, _$PayrollDataImpl>
    implements _$$PayrollDataImplCopyWith<$Res> {
  __$$PayrollDataImplCopyWithImpl(
      _$PayrollDataImpl _value, $Res Function(_$PayrollDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payroll_id = freezed,
    Object? company_branch_id = freezed,
    Object? employee_id = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? wage = freezed,
    Object? status = freezed,
    Object? employee = freezed,
  }) {
    return _then(_$PayrollDataImpl(
      payroll_id: freezed == payroll_id
          ? _value.payroll_id
          : payroll_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_branch_id: freezed == company_branch_id
          ? _value.company_branch_id
          : company_branch_id // ignore: cast_nullable_to_non_nullable
              as String?,
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      wage: freezed == wage
          ? _value.wage
          : wage // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employess?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayrollDataImpl implements _PayrollData {
  _$PayrollDataImpl(
      {@JsonKey(name: 'payroll_id') this.payroll_id,
      @JsonKey(name: 'company_branch_id') this.company_branch_id,
      @JsonKey(name: 'employee_id') this.employee_id,
      @JsonKey(name: 'month') this.month,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'wage') this.wage,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'employee') this.employee});

  factory _$PayrollDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayrollDataImplFromJson(json);

  @override
  @JsonKey(name: 'payroll_id')
  final int? payroll_id;
  @override
  @JsonKey(name: 'company_branch_id')
  final String? company_branch_id;
  @override
  @JsonKey(name: 'employee_id')
  final String? employee_id;
  @override
  @JsonKey(name: 'month')
  final int? month;
  @override
  @JsonKey(name: 'year')
  final int? year;
  @override
  @JsonKey(name: 'wage')
  final int? wage;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'employee')
  final Employess? employee;

  @override
  String toString() {
    return 'PayrollData(payroll_id: $payroll_id, company_branch_id: $company_branch_id, employee_id: $employee_id, month: $month, year: $year, wage: $wage, status: $status, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayrollDataImpl &&
            (identical(other.payroll_id, payroll_id) ||
                other.payroll_id == payroll_id) &&
            (identical(other.company_branch_id, company_branch_id) ||
                other.company_branch_id == company_branch_id) &&
            (identical(other.employee_id, employee_id) ||
                other.employee_id == employee_id) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.wage, wage) || other.wage == wage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payroll_id, company_branch_id,
      employee_id, month, year, wage, status, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayrollDataImplCopyWith<_$PayrollDataImpl> get copyWith =>
      __$$PayrollDataImplCopyWithImpl<_$PayrollDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayrollDataImplToJson(
      this,
    );
  }
}

abstract class _PayrollData implements PayrollData {
  factory _PayrollData(
          {@JsonKey(name: 'payroll_id') final int? payroll_id,
          @JsonKey(name: 'company_branch_id') final String? company_branch_id,
          @JsonKey(name: 'employee_id') final String? employee_id,
          @JsonKey(name: 'month') final int? month,
          @JsonKey(name: 'year') final int? year,
          @JsonKey(name: 'wage') final int? wage,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'employee') final Employess? employee}) =
      _$PayrollDataImpl;

  factory _PayrollData.fromJson(Map<String, dynamic> json) =
      _$PayrollDataImpl.fromJson;

  @override
  @JsonKey(name: 'payroll_id')
  int? get payroll_id;
  @override
  @JsonKey(name: 'company_branch_id')
  String? get company_branch_id;
  @override
  @JsonKey(name: 'employee_id')
  String? get employee_id;
  @override
  @JsonKey(name: 'month')
  int? get month;
  @override
  @JsonKey(name: 'year')
  int? get year;
  @override
  @JsonKey(name: 'wage')
  int? get wage;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'employee')
  Employess? get employee;
  @override
  @JsonKey(ignore: true)
  _$$PayrollDataImplCopyWith<_$PayrollDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Employess _$EmployessFromJson(Map<String, dynamic> json) {
  return _Employess.fromJson(json);
}

/// @nodoc
mixin _$Employess {
  @JsonKey(name: 'first_name')
  String? get first_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get last_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployessCopyWith<Employess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployessCopyWith<$Res> {
  factory $EmployessCopyWith(Employess value, $Res Function(Employess) then) =
      _$EmployessCopyWithImpl<$Res, Employess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? first_name,
      @JsonKey(name: 'last_name') String? last_name});
}

/// @nodoc
class _$EmployessCopyWithImpl<$Res, $Val extends Employess>
    implements $EmployessCopyWith<$Res> {
  _$EmployessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_value.copyWith(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployessImplCopyWith<$Res>
    implements $EmployessCopyWith<$Res> {
  factory _$$EmployessImplCopyWith(
          _$EmployessImpl value, $Res Function(_$EmployessImpl) then) =
      __$$EmployessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? first_name,
      @JsonKey(name: 'last_name') String? last_name});
}

/// @nodoc
class __$$EmployessImplCopyWithImpl<$Res>
    extends _$EmployessCopyWithImpl<$Res, _$EmployessImpl>
    implements _$$EmployessImplCopyWith<$Res> {
  __$$EmployessImplCopyWithImpl(
      _$EmployessImpl _value, $Res Function(_$EmployessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_$EmployessImpl(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployessImpl implements _Employess {
  _$EmployessImpl(
      {@JsonKey(name: 'first_name') this.first_name,
      @JsonKey(name: 'last_name') this.last_name});

  factory _$EmployessImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployessImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? first_name;
  @override
  @JsonKey(name: 'last_name')
  final String? last_name;

  @override
  String toString() {
    return 'Employess(first_name: $first_name, last_name: $last_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployessImpl &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployessImplCopyWith<_$EmployessImpl> get copyWith =>
      __$$EmployessImplCopyWithImpl<_$EmployessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployessImplToJson(
      this,
    );
  }
}

abstract class _Employess implements Employess {
  factory _Employess(
      {@JsonKey(name: 'first_name') final String? first_name,
      @JsonKey(name: 'last_name') final String? last_name}) = _$EmployessImpl;

  factory _Employess.fromJson(Map<String, dynamic> json) =
      _$EmployessImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get first_name;
  @override
  @JsonKey(name: 'last_name')
  String? get last_name;
  @override
  @JsonKey(ignore: true)
  _$$EmployessImplCopyWith<_$EmployessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
