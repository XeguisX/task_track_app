part of 'task_controller.dart';

@freezed
class TaskState with _$TaskState {
  const TaskState._();

  factory TaskState({
    @Default(LoadingState()) AsyncState<List<Task>> asyncTasks,
    @Default(InitialTransaction()) TransactionState<String> addTaskTransaction,
    @Default(InitialTransaction())
    TransactionState<String> deleteTaskTransaction,
    @Default(InitialTransaction())
    TransactionState<String> completeTaskTransaction,
  }) = _TaskState;
}
