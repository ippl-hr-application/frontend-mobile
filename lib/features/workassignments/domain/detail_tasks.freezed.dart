// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailTasksHistory _$DetailTasksHistoryFromJson(Map<String, dynamic> json) {
  return _DetailTasksHistory.fromJson(json);
}

/// @nodoc
mixin _$DetailTasksHistory {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Tasks? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailTasksHistoryCopyWith<DetailTasksHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTasksHistoryCopyWith<$Res> {
  factory $DetailTasksHistoryCopyWith(
          DetailTasksHistory value, $Res Function(DetailTasksHistory) then) =
      _$DetailTasksHistoryCopyWithImpl<$Res, DetailTasksHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Tasks? data});

  $TasksCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailTasksHistoryCopyWithImpl<$Res, $Val extends DetailTasksHistory>
    implements $DetailTasksHistoryCopyWith<$Res> {
  _$DetailTasksHistoryCopyWithImpl(this._value, this._then);

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
abstract class _$$DetailTasksHistoryImplCopyWith<$Res>
    implements $DetailTasksHistoryCopyWith<$Res> {
  factory _$$DetailTasksHistoryImplCopyWith(_$DetailTasksHistoryImpl value,
          $Res Function(_$DetailTasksHistoryImpl) then) =
      __$$DetailTasksHistoryImplCopyWithImpl<$Res>;
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
class __$$DetailTasksHistoryImplCopyWithImpl<$Res>
    extends _$DetailTasksHistoryCopyWithImpl<$Res, _$DetailTasksHistoryImpl>
    implements _$$DetailTasksHistoryImplCopyWith<$Res> {
  __$$DetailTasksHistoryImplCopyWithImpl(_$DetailTasksHistoryImpl _value,
      $Res Function(_$DetailTasksHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailTasksHistoryImpl(
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
class _$DetailTasksHistoryImpl implements _DetailTasksHistory {
  _$DetailTasksHistoryImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$DetailTasksHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTasksHistoryImplFromJson(json);

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
    return 'DetailTasksHistory(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTasksHistoryImpl &&
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
  _$$DetailTasksHistoryImplCopyWith<_$DetailTasksHistoryImpl> get copyWith =>
      __$$DetailTasksHistoryImplCopyWithImpl<_$DetailTasksHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTasksHistoryImplToJson(
      this,
    );
  }
}

abstract class _DetailTasksHistory implements DetailTasksHistory {
  factory _DetailTasksHistory(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final Tasks? data}) = _$DetailTasksHistoryImpl;

  factory _DetailTasksHistory.fromJson(Map<String, dynamic> json) =
      _$DetailTasksHistoryImpl.fromJson;

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
  _$$DetailTasksHistoryImplCopyWith<_$DetailTasksHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tasks _$TasksFromJson(Map<String, dynamic> json) {
  return _Tasks.fromJson(json);
}

/// @nodoc
mixin _$Tasks {
  @JsonKey(name: "task")
  List<DetailTasksData>? get task => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksCopyWith<Tasks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksCopyWith<$Res> {
  factory $TasksCopyWith(Tasks value, $Res Function(Tasks) then) =
      _$TasksCopyWithImpl<$Res, Tasks>;
  @useResult
  $Res call({@JsonKey(name: "task") List<DetailTasksData>? task});
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
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as List<DetailTasksData>?,
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
  $Res call({@JsonKey(name: "task") List<DetailTasksData>? task});
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
    Object? task = freezed,
  }) {
    return _then(_$TasksImpl(
      task: freezed == task
          ? _value._task
          : task // ignore: cast_nullable_to_non_nullable
              as List<DetailTasksData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksImpl implements _Tasks {
  _$TasksImpl({@JsonKey(name: "task") final List<DetailTasksData>? task})
      : _task = task;

  factory _$TasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksImplFromJson(json);

  final List<DetailTasksData>? _task;
  @override
  @JsonKey(name: "task")
  List<DetailTasksData>? get task {
    final value = _task;
    if (value == null) return null;
    if (_task is EqualUnmodifiableListView) return _task;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Tasks(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksImpl &&
            const DeepCollectionEquality().equals(other._task, _task));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_task));

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
  factory _Tasks({@JsonKey(name: "task") final List<DetailTasksData>? task}) =
      _$TasksImpl;

  factory _Tasks.fromJson(Map<String, dynamic> json) = _$TasksImpl.fromJson;

  @override
  @JsonKey(name: "task")
  List<DetailTasksData>? get task;
  @override
  @JsonKey(ignore: true)
  _$$TasksImplCopyWith<_$TasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailTasksData _$DetailTasksDataFromJson(Map<String, dynamic> json) {
  return _DetailTasksData.fromJson(json);
}

/// @nodoc
mixin _$DetailTasksData {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailTasksDataCopyWith<DetailTasksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTasksDataCopyWith<$Res> {
  factory $DetailTasksDataCopyWith(
          DetailTasksData value, $Res Function(DetailTasksData) then) =
      _$DetailTasksDataCopyWithImpl<$Res, DetailTasksData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class _$DetailTasksDataCopyWithImpl<$Res, $Val extends DetailTasksData>
    implements $DetailTasksDataCopyWith<$Res> {
  _$DetailTasksDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailTasksDataImplCopyWith<$Res>
    implements $DetailTasksDataCopyWith<$Res> {
  factory _$$DetailTasksDataImplCopyWith(_$DetailTasksDataImpl value,
          $Res Function(_$DetailTasksDataImpl) then) =
      __$$DetailTasksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate});
}

/// @nodoc
class __$$DetailTasksDataImplCopyWithImpl<$Res>
    extends _$DetailTasksDataCopyWithImpl<$Res, _$DetailTasksDataImpl>
    implements _$$DetailTasksDataImplCopyWith<$Res> {
  __$$DetailTasksDataImplCopyWithImpl(
      _$DetailTasksDataImpl _value, $Res Function(_$DetailTasksDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$DetailTasksDataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTasksDataImpl implements _DetailTasksData {
  _$DetailTasksDataImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate});

  factory _$DetailTasksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTasksDataImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;

  @override
  String toString() {
    return 'DetailTasksData(title: $title, description: $description, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTasksDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTasksDataImplCopyWith<_$DetailTasksDataImpl> get copyWith =>
      __$$DetailTasksDataImplCopyWithImpl<_$DetailTasksDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTasksDataImplToJson(
      this,
    );
  }
}

abstract class _DetailTasksData implements DetailTasksData {
  factory _DetailTasksData(
          {@JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'end_date') final String? endDate}) =
      _$DetailTasksDataImpl;

  factory _DetailTasksData.fromJson(Map<String, dynamic> json) =
      _$DetailTasksDataImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$DetailTasksDataImplCopyWith<_$DetailTasksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
