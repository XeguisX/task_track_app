// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_track_app/features/task/domain/models/task.dart';
import 'package:task_track_app/features/task/domain/models/task_status.dart';
import 'package:task_track_app/features/task/domain/use_cases/add_task.dart';
import 'package:task_track_app/features/task/domain/use_cases/complete_task.dart';
import 'package:task_track_app/features/task/domain/use_cases/delete_task.dart';
import 'package:task_track_app/features/task/domain/use_cases/get_task.dart';
import 'package:task_track_app/shared/utils/async_state.dart';
import 'package:task_track_app/shared/utils/transaction_state.dart';
import 'package:uuid/uuid.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_controller.freezed.dart';

class TaskController extends Bloc<TaskEvent, TaskState> {
  TaskController(
    this.addTask,
    this.getTasks,
    this.completeTask,
    this.deleteTask,
  ) : super(TaskState()) {
    on<_GetTaskEvent>(getTaskEvent);
    on<_AddTaskEvent>(addTaskEvent);
    on<_CompleteTaskEvent>(completeTaskEvent);
    on<_DeleteTaskEvent>(deleteTaskEvent);
    on<_FilterTasksEvent>(filterTasksEvent);
  }

  final AddTask addTask;
  final GetTask getTasks;
  final CompleteTask completeTask;
  final DeleteTask deleteTask;

  List<Task> tasks = [];
  TaskStatus? status;

  Future<void> getTaskEvent(
    _GetTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(asyncTasks: const LoadingState()));

    final response = await getTasks();
    response.when(
      success: (tasks) {
        this.tasks = tasks;
        emit(state.copyWith(asyncTasks: SuccessState(tasks)));
      },
      failure: (failure) {
        emit(
          state.copyWith(asyncTasks: FailureState(failure)),
        );
      },
    );
  }

  Future<void> addTaskEvent(
      _AddTaskEvent event, Emitter<TaskState> emit) async {
    emit(state.copyWith(addTaskTransaction: const LoadingTransaction()));

    final task = Task(
      uuid: const Uuid().v4(),
      name: event.name,
      description: event.description,
      status: TaskStatus.pending,
    );

    final response = await addTask(task);
    response.when(success: (message) {
      emit(
        state.copyWith(
          addTaskTransaction: SuccessTransaction(message),
          asyncTasks: SuccessState([...tasks..add(task)]),
        ),
      );
    }, failure: (failure) {
      emit(
        state.copyWith(addTaskTransaction: FailureTransaction(failure)),
      );
    });

    _filterTasks(status, emit);
  }

  Future<void> completeTaskEvent(
    _CompleteTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(completeTaskTransaction: const LoadingTransaction()));
    final response = await completeTask(event.task.uuid);
    response.when(
      success: (message) {
        event.task.status = event.task.status.isPending
            ? TaskStatus.completed
            : TaskStatus.pending;
        emit(
          state.copyWith(
            asyncTasks: SuccessState([...tasks]),
            completeTaskTransaction: SuccessTransaction(message),
          ),
        );
        _filterTasks(status, emit);
      },
      failure: (failure) {
        emit(
          state.copyWith(completeTaskTransaction: FailureTransaction(failure)),
        );
      },
    );
  }

  void deleteTaskEvent(_DeleteTaskEvent event, Emitter<TaskState> emit) async {
    emit(state.copyWith(deleteTaskTransaction: const LoadingTransaction()));
    final response = await deleteTask(event.task.uuid);
    response.when(success: (message) {
      emit(state.copyWith(
        deleteTaskTransaction: SuccessTransaction(message),
        asyncTasks: SuccessState([...tasks..remove(event.task)]),
      ));
      _filterTasks(status, emit);
    }, failure: (failure) {
      emit(
        state.copyWith(deleteTaskTransaction: FailureTransaction(failure)),
      );
    });
  }

  void filterTasksEvent(_FilterTasksEvent event, Emitter<TaskState> emit) {
    _filterTasks(event.status, emit);
  }

  void _filterTasks(TaskStatus? status, Emitter<TaskState> emit) {
    this.status = status;
    if (status == null) {
      emit(state.copyWith(asyncTasks: SuccessState([...tasks])));
      return;
    }

    final filteredTasks = tasks.where((task) => task.status == status).toList();
    emit(state.copyWith(asyncTasks: SuccessState([...filteredTasks])));
  }
}
