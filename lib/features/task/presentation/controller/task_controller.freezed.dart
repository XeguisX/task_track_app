// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTask,
    required TResult Function(String name, String description) addTask,
    required TResult Function(Task task) completeTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(TaskStatus? status) filterTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTask,
    TResult? Function(String name, String description)? addTask,
    TResult? Function(Task task)? completeTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(TaskStatus? status)? filterTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTask,
    TResult Function(String name, String description)? addTask,
    TResult Function(Task task)? completeTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(TaskStatus? status)? filterTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskEvent value) getTask,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_CompleteTaskEvent value) completeTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskEvent value)? getTask,
    TResult? Function(_AddTaskEvent value)? addTask,
    TResult? Function(_CompleteTaskEvent value)? completeTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskEvent value)? getTask,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_CompleteTaskEvent value)? completeTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTaskEventImplCopyWith<$Res> {
  factory _$$GetTaskEventImplCopyWith(
          _$GetTaskEventImpl value, $Res Function(_$GetTaskEventImpl) then) =
      __$$GetTaskEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTaskEventImpl>
    implements _$$GetTaskEventImplCopyWith<$Res> {
  __$$GetTaskEventImplCopyWithImpl(
      _$GetTaskEventImpl _value, $Res Function(_$GetTaskEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTaskEventImpl implements _GetTaskEvent {
  const _$GetTaskEventImpl();

  @override
  String toString() {
    return 'TaskEvent.getTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTaskEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTask,
    required TResult Function(String name, String description) addTask,
    required TResult Function(Task task) completeTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(TaskStatus? status) filterTasks,
  }) {
    return getTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTask,
    TResult? Function(String name, String description)? addTask,
    TResult? Function(Task task)? completeTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(TaskStatus? status)? filterTasks,
  }) {
    return getTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTask,
    TResult Function(String name, String description)? addTask,
    TResult Function(Task task)? completeTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(TaskStatus? status)? filterTasks,
    required TResult orElse(),
  }) {
    if (getTask != null) {
      return getTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskEvent value) getTask,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_CompleteTaskEvent value) completeTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
  }) {
    return getTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskEvent value)? getTask,
    TResult? Function(_AddTaskEvent value)? addTask,
    TResult? Function(_CompleteTaskEvent value)? completeTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
  }) {
    return getTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskEvent value)? getTask,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_CompleteTaskEvent value)? completeTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    required TResult orElse(),
  }) {
    if (getTask != null) {
      return getTask(this);
    }
    return orElse();
  }
}

abstract class _GetTaskEvent implements TaskEvent {
  const factory _GetTaskEvent() = _$GetTaskEventImpl;
}

/// @nodoc
abstract class _$$AddTaskEventImplCopyWith<$Res> {
  factory _$$AddTaskEventImplCopyWith(
          _$AddTaskEventImpl value, $Res Function(_$AddTaskEventImpl) then) =
      __$$AddTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$AddTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskEventImpl>
    implements _$$AddTaskEventImplCopyWith<$Res> {
  __$$AddTaskEventImplCopyWithImpl(
      _$AddTaskEventImpl _value, $Res Function(_$AddTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$AddTaskEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTaskEventImpl implements _AddTaskEvent {
  const _$AddTaskEventImpl({required this.name, required this.description});

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'TaskEvent.addTask(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      __$$AddTaskEventImplCopyWithImpl<_$AddTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTask,
    required TResult Function(String name, String description) addTask,
    required TResult Function(Task task) completeTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(TaskStatus? status) filterTasks,
  }) {
    return addTask(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTask,
    TResult? Function(String name, String description)? addTask,
    TResult? Function(Task task)? completeTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(TaskStatus? status)? filterTasks,
  }) {
    return addTask?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTask,
    TResult Function(String name, String description)? addTask,
    TResult Function(Task task)? completeTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(TaskStatus? status)? filterTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskEvent value) getTask,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_CompleteTaskEvent value) completeTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskEvent value)? getTask,
    TResult? Function(_AddTaskEvent value)? addTask,
    TResult? Function(_CompleteTaskEvent value)? completeTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskEvent value)? getTask,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_CompleteTaskEvent value)? completeTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTaskEvent implements TaskEvent {
  const factory _AddTaskEvent(
      {required final String name,
      required final String description}) = _$AddTaskEventImpl;

  String get name;
  String get description;
  @JsonKey(ignore: true)
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteTaskEventImplCopyWith<$Res> {
  factory _$$CompleteTaskEventImplCopyWith(_$CompleteTaskEventImpl value,
          $Res Function(_$CompleteTaskEventImpl) then) =
      __$$CompleteTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$CompleteTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$CompleteTaskEventImpl>
    implements _$$CompleteTaskEventImplCopyWith<$Res> {
  __$$CompleteTaskEventImplCopyWithImpl(_$CompleteTaskEventImpl _value,
      $Res Function(_$CompleteTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$CompleteTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$CompleteTaskEventImpl implements _CompleteTaskEvent {
  const _$CompleteTaskEventImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.completeTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTaskEventImplCopyWith<_$CompleteTaskEventImpl> get copyWith =>
      __$$CompleteTaskEventImplCopyWithImpl<_$CompleteTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTask,
    required TResult Function(String name, String description) addTask,
    required TResult Function(Task task) completeTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(TaskStatus? status) filterTasks,
  }) {
    return completeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTask,
    TResult? Function(String name, String description)? addTask,
    TResult? Function(Task task)? completeTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(TaskStatus? status)? filterTasks,
  }) {
    return completeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTask,
    TResult Function(String name, String description)? addTask,
    TResult Function(Task task)? completeTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(TaskStatus? status)? filterTasks,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskEvent value) getTask,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_CompleteTaskEvent value) completeTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskEvent value)? getTask,
    TResult? Function(_AddTaskEvent value)? addTask,
    TResult? Function(_CompleteTaskEvent value)? completeTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskEvent value)? getTask,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_CompleteTaskEvent value)? completeTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class _CompleteTaskEvent implements TaskEvent {
  const factory _CompleteTaskEvent({required final Task task}) =
      _$CompleteTaskEventImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$CompleteTaskEventImplCopyWith<_$CompleteTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskEventImplCopyWith<$Res> {
  factory _$$DeleteTaskEventImplCopyWith(_$DeleteTaskEventImpl value,
          $Res Function(_$DeleteTaskEventImpl) then) =
      __$$DeleteTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$DeleteTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteTaskEventImpl>
    implements _$$DeleteTaskEventImplCopyWith<$Res> {
  __$$DeleteTaskEventImplCopyWithImpl(
      _$DeleteTaskEventImpl _value, $Res Function(_$DeleteTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$DeleteTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$DeleteTaskEventImpl implements _DeleteTaskEvent {
  const _$DeleteTaskEventImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      __$$DeleteTaskEventImplCopyWithImpl<_$DeleteTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTask,
    required TResult Function(String name, String description) addTask,
    required TResult Function(Task task) completeTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(TaskStatus? status) filterTasks,
  }) {
    return deleteTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTask,
    TResult? Function(String name, String description)? addTask,
    TResult? Function(Task task)? completeTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(TaskStatus? status)? filterTasks,
  }) {
    return deleteTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTask,
    TResult Function(String name, String description)? addTask,
    TResult Function(Task task)? completeTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(TaskStatus? status)? filterTasks,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskEvent value) getTask,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_CompleteTaskEvent value) completeTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskEvent value)? getTask,
    TResult? Function(_AddTaskEvent value)? addTask,
    TResult? Function(_CompleteTaskEvent value)? completeTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskEvent value)? getTask,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_CompleteTaskEvent value)? completeTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTaskEvent implements TaskEvent {
  const factory _DeleteTaskEvent({required final Task task}) =
      _$DeleteTaskEventImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTasksEventImplCopyWith<$Res> {
  factory _$$FilterTasksEventImplCopyWith(_$FilterTasksEventImpl value,
          $Res Function(_$FilterTasksEventImpl) then) =
      __$$FilterTasksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskStatus? status});
}

/// @nodoc
class __$$FilterTasksEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FilterTasksEventImpl>
    implements _$$FilterTasksEventImplCopyWith<$Res> {
  __$$FilterTasksEventImplCopyWithImpl(_$FilterTasksEventImpl _value,
      $Res Function(_$FilterTasksEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$FilterTasksEventImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
    ));
  }
}

/// @nodoc

class _$FilterTasksEventImpl implements _FilterTasksEvent {
  const _$FilterTasksEventImpl({required this.status});

  @override
  final TaskStatus? status;

  @override
  String toString() {
    return 'TaskEvent.filterTasks(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTasksEventImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTasksEventImplCopyWith<_$FilterTasksEventImpl> get copyWith =>
      __$$FilterTasksEventImplCopyWithImpl<_$FilterTasksEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTask,
    required TResult Function(String name, String description) addTask,
    required TResult Function(Task task) completeTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(TaskStatus? status) filterTasks,
  }) {
    return filterTasks(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTask,
    TResult? Function(String name, String description)? addTask,
    TResult? Function(Task task)? completeTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(TaskStatus? status)? filterTasks,
  }) {
    return filterTasks?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTask,
    TResult Function(String name, String description)? addTask,
    TResult Function(Task task)? completeTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(TaskStatus? status)? filterTasks,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTaskEvent value) getTask,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_CompleteTaskEvent value) completeTask,
    required TResult Function(_DeleteTaskEvent value) deleteTask,
    required TResult Function(_FilterTasksEvent value) filterTasks,
  }) {
    return filterTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTaskEvent value)? getTask,
    TResult? Function(_AddTaskEvent value)? addTask,
    TResult? Function(_CompleteTaskEvent value)? completeTask,
    TResult? Function(_DeleteTaskEvent value)? deleteTask,
    TResult? Function(_FilterTasksEvent value)? filterTasks,
  }) {
    return filterTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTaskEvent value)? getTask,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_CompleteTaskEvent value)? completeTask,
    TResult Function(_DeleteTaskEvent value)? deleteTask,
    TResult Function(_FilterTasksEvent value)? filterTasks,
    required TResult orElse(),
  }) {
    if (filterTasks != null) {
      return filterTasks(this);
    }
    return orElse();
  }
}

abstract class _FilterTasksEvent implements TaskEvent {
  const factory _FilterTasksEvent({required final TaskStatus? status}) =
      _$FilterTasksEventImpl;

  TaskStatus? get status;
  @JsonKey(ignore: true)
  _$$FilterTasksEventImplCopyWith<_$FilterTasksEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  AsyncState<List<Task>> get asyncTasks => throw _privateConstructorUsedError;
  TransactionState<String> get addTaskTransaction =>
      throw _privateConstructorUsedError;
  TransactionState<String> get deleteTaskTransaction =>
      throw _privateConstructorUsedError;
  TransactionState<String> get completeTaskTransaction =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {AsyncState<List<Task>> asyncTasks,
      TransactionState<String> addTaskTransaction,
      TransactionState<String> deleteTaskTransaction,
      TransactionState<String> completeTaskTransaction});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncTasks = null,
    Object? addTaskTransaction = null,
    Object? deleteTaskTransaction = null,
    Object? completeTaskTransaction = null,
  }) {
    return _then(_value.copyWith(
      asyncTasks: null == asyncTasks
          ? _value.asyncTasks
          : asyncTasks // ignore: cast_nullable_to_non_nullable
              as AsyncState<List<Task>>,
      addTaskTransaction: null == addTaskTransaction
          ? _value.addTaskTransaction
          : addTaskTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionState<String>,
      deleteTaskTransaction: null == deleteTaskTransaction
          ? _value.deleteTaskTransaction
          : deleteTaskTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionState<String>,
      completeTaskTransaction: null == completeTaskTransaction
          ? _value.completeTaskTransaction
          : completeTaskTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionState<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncState<List<Task>> asyncTasks,
      TransactionState<String> addTaskTransaction,
      TransactionState<String> deleteTaskTransaction,
      TransactionState<String> completeTaskTransaction});
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncTasks = null,
    Object? addTaskTransaction = null,
    Object? deleteTaskTransaction = null,
    Object? completeTaskTransaction = null,
  }) {
    return _then(_$TaskStateImpl(
      asyncTasks: null == asyncTasks
          ? _value.asyncTasks
          : asyncTasks // ignore: cast_nullable_to_non_nullable
              as AsyncState<List<Task>>,
      addTaskTransaction: null == addTaskTransaction
          ? _value.addTaskTransaction
          : addTaskTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionState<String>,
      deleteTaskTransaction: null == deleteTaskTransaction
          ? _value.deleteTaskTransaction
          : deleteTaskTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionState<String>,
      completeTaskTransaction: null == completeTaskTransaction
          ? _value.completeTaskTransaction
          : completeTaskTransaction // ignore: cast_nullable_to_non_nullable
              as TransactionState<String>,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl extends _TaskState {
  _$TaskStateImpl(
      {this.asyncTasks = const LoadingState(),
      this.addTaskTransaction = const InitialTransaction(),
      this.deleteTaskTransaction = const InitialTransaction(),
      this.completeTaskTransaction = const InitialTransaction()})
      : super._();

  @override
  @JsonKey()
  final AsyncState<List<Task>> asyncTasks;
  @override
  @JsonKey()
  final TransactionState<String> addTaskTransaction;
  @override
  @JsonKey()
  final TransactionState<String> deleteTaskTransaction;
  @override
  @JsonKey()
  final TransactionState<String> completeTaskTransaction;

  @override
  String toString() {
    return 'TaskState(asyncTasks: $asyncTasks, addTaskTransaction: $addTaskTransaction, deleteTaskTransaction: $deleteTaskTransaction, completeTaskTransaction: $completeTaskTransaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            (identical(other.asyncTasks, asyncTasks) ||
                other.asyncTasks == asyncTasks) &&
            (identical(other.addTaskTransaction, addTaskTransaction) ||
                other.addTaskTransaction == addTaskTransaction) &&
            (identical(other.deleteTaskTransaction, deleteTaskTransaction) ||
                other.deleteTaskTransaction == deleteTaskTransaction) &&
            (identical(
                    other.completeTaskTransaction, completeTaskTransaction) ||
                other.completeTaskTransaction == completeTaskTransaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncTasks, addTaskTransaction,
      deleteTaskTransaction, completeTaskTransaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState extends TaskState {
  factory _TaskState(
          {final AsyncState<List<Task>> asyncTasks,
          final TransactionState<String> addTaskTransaction,
          final TransactionState<String> deleteTaskTransaction,
          final TransactionState<String> completeTaskTransaction}) =
      _$TaskStateImpl;
  _TaskState._() : super._();

  @override
  AsyncState<List<Task>> get asyncTasks;
  @override
  TransactionState<String> get addTaskTransaction;
  @override
  TransactionState<String> get deleteTaskTransaction;
  @override
  TransactionState<String> get completeTaskTransaction;
  @override
  @JsonKey(ignore: true)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
