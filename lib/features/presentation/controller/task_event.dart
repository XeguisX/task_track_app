part of 'task_controller.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.getTask() = _GetTaskEvent;

  const factory TaskEvent.addTask({
    required String name,
    required String description,
  }) = _AddTaskEvent;

  const factory TaskEvent.completeTask({
    required Task task,
  }) = _CompleteTaskEvent;

  const factory TaskEvent.deleteTask({
    required Task task,
  }) = _DeleteTaskEvent;

  const factory TaskEvent.filterTasks({
    required TaskStatus? status,
  }) = _FilterTasksEvent;
}
