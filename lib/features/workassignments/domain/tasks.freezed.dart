// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasksHistory _$TasksHistoryFromJson(Map<String, dynamic> json) {
  return _TasksHistory.fromJson(json);
}

/// @nodoc
mixin _$TasksHistory {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Tasks? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksHistoryCopyWith<TasksHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksHistoryCopyWith<$Res> {
  factory $TasksHistoryCopyWith(
          TasksHistory value, $Res Function(TasksHistory) then) =
      _$TasksHistoryCopyWithImpl<$Res, TasksHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Tasks? data});

  $TasksCopyWith<$Res>? get data;
}

/// @nodoc
class _$TasksHistoryCopyWithImpl<$Res, $Val extends TasksHistory>
    implements $TasksHistoryCopyWith<$Res> {
  _$TasksHistoryCopyWithImpl(this._value, this._then);

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
              as Tasks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TasksCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TasksCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TasksHistoryImplCopyWith<$Res>
    implements $TasksHistoryCopyWith<$Res> {
  factory _$$TasksHistoryImplCopyWith(
          _$TasksHistoryImpl value, $Res Function(_$TasksHistoryImpl) then) =
      __$$TasksHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Tasks? data});

  @override
  $TasksCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TasksHistoryImplCopyWithImpl<$Res>
    extends _$TasksHistoryCopyWithImpl<$Res, _$TasksHistoryImpl>
    implements _$$TasksHistoryImplCopyWith<$Res> {
  __$$TasksHistoryImplCopyWithImpl(
      _$TasksHistoryImpl _value, $Res Function(_$TasksHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TasksHistoryImpl(
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
              as Tasks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksHistoryImpl implements _TasksHistory {
  _$TasksHistoryImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$TasksHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksHistoryImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Tasks? data;

  @override
  String toString() {
    return 'TasksHistory(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksHistoryImpl &&
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
  _$$TasksHistoryImplCopyWith<_$TasksHistoryImpl> get copyWith =>
      __$$TasksHistoryImplCopyWithImpl<_$TasksHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksHistoryImplToJson(
      this,
    );
  }
}

abstract class _TasksHistory implements TasksHistory {
  factory _TasksHistory(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final Tasks? data}) = _$TasksHistoryImpl;

  factory _TasksHistory.fromJson(Map<String, dynamic> json) =
      _$TasksHistoryImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  Tasks? get data;
  @override
  @JsonKey(ignore: true)
  _$$TasksHistoryImplCopyWith<_$TasksHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tasks _$TasksFromJson(Map<String, dynamic> json) {
  return _Tasks.fromJson(json);
}

/// @nodoc
mixin _$Tasks {
  @JsonKey(name: "tasks")
  List<TasksData>? get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksCopyWith<Tasks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksCopyWith<$Res> {
  factory $TasksCopyWith(Tasks value, $Res Function(Tasks) then) =
      _$TasksCopyWithImpl<$Res, Tasks>;
  @useResult
  $Res call({@JsonKey(name: "tasks") List<TasksData>? tasks});
}

/// @nodoc
class _$TasksCopyWithImpl<$Res, $Val extends Tasks>
    implements $TasksCopyWith<$Res> {
  _$TasksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TasksData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksImplCopyWith<$Res> implements $TasksCopyWith<$Res> {
  factory _$$TasksImplCopyWith(
          _$TasksImpl value, $Res Function(_$TasksImpl) then) =
      __$$TasksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "tasks") List<TasksData>? tasks});
}

/// @nodoc
class __$$TasksImplCopyWithImpl<$Res>
    extends _$TasksCopyWithImpl<$Res, _$TasksImpl>
    implements _$$TasksImplCopyWith<$Res> {
  __$$TasksImplCopyWithImpl(
      _$TasksImpl _value, $Res Function(_$TasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$TasksImpl(
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TasksData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksImpl implements _Tasks {
  _$TasksImpl({@JsonKey(name: "tasks") final List<TasksData>? tasks})
      : _tasks = tasks;

  factory _$TasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksImplFromJson(json);

  final List<TasksData>? _tasks;
  @override
  @JsonKey(name: "tasks")
  List<TasksData>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Tasks(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksImplCopyWith<_$TasksImpl> get copyWith =>
      __$$TasksImplCopyWithImpl<_$TasksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksImplToJson(
      this,
    );
  }
}

abstract class _Tasks implements Tasks {
  factory _Tasks({@JsonKey(name: "tasks") final List<TasksData>? tasks}) =
      _$TasksImpl;

  factory _Tasks.fromJson(Map<String, dynamic> json) = _$TasksImpl.fromJson;

  @override
  @JsonKey(name: "tasks")
  List<TasksData>? get tasks;
  @override
  @JsonKey(ignore: true)
  _$$TasksImplCopyWith<_$TasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksData _$TasksDataFromJson(Map<String, dynamic> json) {
  return _TasksData.fromJson(json);
}

/// @nodoc
mixin _$TasksData {
  @JsonKey(name: 'task_id')
  int? get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_branch_id')
  String? get companybranchid => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  String? get employeeid => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'given_by')
  GivenData? get givenbyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksDataCopyWith<TasksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksDataCopyWith<$Res> {
  factory $TasksDataCopyWith(TasksData value, $Res Function(TasksData) then) =
      _$TasksDataCopyWithImpl<$Res, TasksData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'task_id') int? taskId,
      @JsonKey(name: 'company_branch_id') String? companybranchid,
      @JsonKey(name: 'employee_id') String? employeeid,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_date') String? startdate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'given_by') GivenData? givenbyId});

  $GivenDataCopyWith<$Res>? get givenbyId;
}

/// @nodoc
class _$TasksDataCopyWithImpl<$Res, $Val extends TasksData>
    implements $TasksDataCopyWith<$Res> {
  _$TasksDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = freezed,
    Object? companybranchid = freezed,
    Object? employeeid = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? startdate = freezed,
    Object? endDate = freezed,
    Object? givenbyId = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      companybranchid: freezed == companybranchid
          ? _value.companybranchid
          : companybranchid // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeid: freezed == employeeid
          ? _value.employeeid
          : employeeid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startdate: freezed == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      givenbyId: freezed == givenbyId
          ? _value.givenbyId
          : givenbyId // ignore: cast_nullable_to_non_nullable
              as GivenData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GivenDataCopyWith<$Res>? get givenbyId {
    if (_value.givenbyId == null) {
      return null;
    }

    return $GivenDataCopyWith<$Res>(_value.givenbyId!, (value) {
      return _then(_value.copyWith(givenbyId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TasksDataImplCopyWith<$Res>
    implements $TasksDataCopyWith<$Res> {
  factory _$$TasksDataImplCopyWith(
          _$TasksDataImpl value, $Res Function(_$TasksDataImpl) then) =
      __$$TasksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'task_id') int? taskId,
      @JsonKey(name: 'company_branch_id') String? companybranchid,
      @JsonKey(name: 'employee_id') String? employeeid,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_date') String? startdate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'given_by') GivenData? givenbyId});

  @override
  $GivenDataCopyWith<$Res>? get givenbyId;
}

/// @nodoc
class __$$TasksDataImplCopyWithImpl<$Res>
    extends _$TasksDataCopyWithImpl<$Res, _$TasksDataImpl>
    implements _$$TasksDataImplCopyWith<$Res> {
  __$$TasksDataImplCopyWithImpl(
      _$TasksDataImpl _value, $Res Function(_$TasksDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = freezed,
    Object? companybranchid = freezed,
    Object? employeeid = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? startdate = freezed,
    Object? endDate = freezed,
    Object? givenbyId = freezed,
  }) {
    return _then(_$TasksDataImpl(
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      companybranchid: freezed == companybranchid
          ? _value.companybranchid
          : companybranchid // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeid: freezed == employeeid
          ? _value.employeeid
          : employeeid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startdate: freezed == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      givenbyId: freezed == givenbyId
          ? _value.givenbyId
          : givenbyId // ignore: cast_nullable_to_non_nullable
              as GivenData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksDataImpl implements _TasksData {
  _$TasksDataImpl(
      {@JsonKey(name: 'task_id') this.taskId,
      @JsonKey(name: 'company_branch_id') this.companybranchid,
      @JsonKey(name: 'employee_id') this.employeeid,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'start_date') this.startdate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'given_by') this.givenbyId});

  factory _$TasksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksDataImplFromJson(json);

  @override
  @JsonKey(name: 'task_id')
  final int? taskId;
  @override
  @JsonKey(name: 'company_branch_id')
  final String? companybranchid;
  @override
  @JsonKey(name: 'employee_id')
  final String? employeeid;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'start_date')
  final String? startdate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'given_by')
  final GivenData? givenbyId;

  @override
  String toString() {
    return 'TasksData(taskId: $taskId, companybranchid: $companybranchid, employeeid: $employeeid, title: $title, description: $description, startdate: $startdate, endDate: $endDate, givenbyId: $givenbyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksDataImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.companybranchid, companybranchid) ||
                other.companybranchid == companybranchid) &&
            (identical(other.employeeid, employeeid) ||
                other.employeeid == employeeid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startdate, startdate) ||
                other.startdate == startdate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.givenbyId, givenbyId) ||
                other.givenbyId == givenbyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, companybranchid,
      employeeid, title, description, startdate, endDate, givenbyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksDataImplCopyWith<_$TasksDataImpl> get copyWith =>
      __$$TasksDataImplCopyWithImpl<_$TasksDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksDataImplToJson(
      this,
    );
  }
}

abstract class _TasksData implements TasksData {
  factory _TasksData(
      {@JsonKey(name: 'task_id') final int? taskId,
      @JsonKey(name: 'company_branch_id') final String? companybranchid,
      @JsonKey(name: 'employee_id') final String? employeeid,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'start_date') final String? startdate,
      @JsonKey(name: 'end_date') final String? endDate,
      @JsonKey(name: 'given_by') final GivenData? givenbyId}) = _$TasksDataImpl;

  factory _TasksData.fromJson(Map<String, dynamic> json) =
      _$TasksDataImpl.fromJson;

  @override
  @JsonKey(name: 'task_id')
  int? get taskId;
  @override
  @JsonKey(name: 'company_branch_id')
  String? get companybranchid;
  @override
  @JsonKey(name: 'employee_id')
  String? get employeeid;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'start_date')
  String? get startdate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'given_by')
  GivenData? get givenbyId;
  @override
  @JsonKey(ignore: true)
  _$$TasksDataImplCopyWith<_$TasksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GivenData _$GivenDataFromJson(Map<String, dynamic> json) {
  return _GivenData.fromJson(json);
}

/// @nodoc
mixin _$GivenData {
  @JsonKey(name: 'employee_id')
  String? get employee_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get first_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get last_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position')
  JobPosition? get job_position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GivenDataCopyWith<GivenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GivenDataCopyWith<$Res> {
  factory $GivenDataCopyWith(GivenData value, $Res Function(GivenData) then) =
      _$GivenDataCopyWithImpl<$Res, GivenData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') String? employee_id,
      @JsonKey(name: 'first_name') String? first_name,
      @JsonKey(name: 'last_name') String? last_name,
      @JsonKey(name: 'job_position') JobPosition? job_position});

  $JobPositionCopyWith<$Res>? get job_position;
}

/// @nodoc
class _$GivenDataCopyWithImpl<$Res, $Val extends GivenData>
    implements $GivenDataCopyWith<$Res> {
  _$GivenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee_id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? job_position = freezed,
  }) {
    return _then(_value.copyWith(
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      job_position: freezed == job_position
          ? _value.job_position
          : job_position // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobPositionCopyWith<$Res>? get job_position {
    if (_value.job_position == null) {
      return null;
    }

    return $JobPositionCopyWith<$Res>(_value.job_position!, (value) {
      return _then(_value.copyWith(job_position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GivenDataImplCopyWith<$Res>
    implements $GivenDataCopyWith<$Res> {
  factory _$$GivenDataImplCopyWith(
          _$GivenDataImpl value, $Res Function(_$GivenDataImpl) then) =
      __$$GivenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') String? employee_id,
      @JsonKey(name: 'first_name') String? first_name,
      @JsonKey(name: 'last_name') String? last_name,
      @JsonKey(name: 'job_position') JobPosition? job_position});

  @override
  $JobPositionCopyWith<$Res>? get job_position;
}

/// @nodoc
class __$$GivenDataImplCopyWithImpl<$Res>
    extends _$GivenDataCopyWithImpl<$Res, _$GivenDataImpl>
    implements _$$GivenDataImplCopyWith<$Res> {
  __$$GivenDataImplCopyWithImpl(
      _$GivenDataImpl _value, $Res Function(_$GivenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee_id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? job_position = freezed,
  }) {
    return _then(_$GivenDataImpl(
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      job_position: freezed == job_position
          ? _value.job_position
          : job_position // ignore: cast_nullable_to_non_nullable
              as JobPosition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GivenDataImpl implements _GivenData {
  _$GivenDataImpl(
      {@JsonKey(name: 'employee_id') this.employee_id,
      @JsonKey(name: 'first_name') this.first_name,
      @JsonKey(name: 'last_name') this.last_name,
      @JsonKey(name: 'job_position') this.job_position});

  factory _$GivenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GivenDataImplFromJson(json);

  @override
  @JsonKey(name: 'employee_id')
  final String? employee_id;
  @override
  @JsonKey(name: 'first_name')
  final String? first_name;
  @override
  @JsonKey(name: 'last_name')
  final String? last_name;
  @override
  @JsonKey(name: 'job_position')
  final JobPosition? job_position;

  @override
  String toString() {
    return 'GivenData(employee_id: $employee_id, first_name: $first_name, last_name: $last_name, job_position: $job_position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GivenDataImpl &&
            (identical(other.employee_id, employee_id) ||
                other.employee_id == employee_id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.job_position, job_position) ||
                other.job_position == job_position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, employee_id, first_name, last_name, job_position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GivenDataImplCopyWith<_$GivenDataImpl> get copyWith =>
      __$$GivenDataImplCopyWithImpl<_$GivenDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GivenDataImplToJson(
      this,
    );
  }
}

abstract class _GivenData implements GivenData {
  factory _GivenData(
          {@JsonKey(name: 'employee_id') final String? employee_id,
          @JsonKey(name: 'first_name') final String? first_name,
          @JsonKey(name: 'last_name') final String? last_name,
          @JsonKey(name: 'job_position') final JobPosition? job_position}) =
      _$GivenDataImpl;

  factory _GivenData.fromJson(Map<String, dynamic> json) =
      _$GivenDataImpl.fromJson;

  @override
  @JsonKey(name: 'employee_id')
  String? get employee_id;
  @override
  @JsonKey(name: 'first_name')
  String? get first_name;
  @override
  @JsonKey(name: 'last_name')
  String? get last_name;
  @override
  @JsonKey(name: 'job_position')
  JobPosition? get job_position;
  @override
  @JsonKey(ignore: true)
  _$$GivenDataImplCopyWith<_$GivenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobPosition _$JobPositionFromJson(Map<String, dynamic> json) {
  return _JobPosition.fromJson(json);
}

/// @nodoc
mixin _$JobPosition {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobPositionCopyWith<JobPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPositionCopyWith<$Res> {
  factory $JobPositionCopyWith(
          JobPosition value, $Res Function(JobPosition) then) =
      _$JobPositionCopyWithImpl<$Res, JobPosition>;
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$JobPositionCopyWithImpl<$Res, $Val extends JobPosition>
    implements $JobPositionCopyWith<$Res> {
  _$JobPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPositionImplCopyWith<$Res>
    implements $JobPositionCopyWith<$Res> {
  factory _$$JobPositionImplCopyWith(
          _$JobPositionImpl value, $Res Function(_$JobPositionImpl) then) =
      __$$JobPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$JobPositionImplCopyWithImpl<$Res>
    extends _$JobPositionCopyWithImpl<$Res, _$JobPositionImpl>
    implements _$$JobPositionImplCopyWith<$Res> {
  __$$JobPositionImplCopyWithImpl(
      _$JobPositionImpl _value, $Res Function(_$JobPositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$JobPositionImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPositionImpl implements _JobPosition {
  _$JobPositionImpl({@JsonKey(name: 'name') this.name});

  factory _$JobPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPositionImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'JobPosition(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPositionImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      __$$JobPositionImplCopyWithImpl<_$JobPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPositionImplToJson(
      this,
    );
  }
}

abstract class _JobPosition implements JobPosition {
  factory _JobPosition({@JsonKey(name: 'name') final String? name}) =
      _$JobPositionImpl;

  factory _JobPosition.fromJson(Map<String, dynamic> json) =
      _$JobPositionImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$JobPositionImplCopyWith<_$JobPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
