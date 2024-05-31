import 'package:task_track_app/features/task/data/data_source/task_data_source_local.dart';
import 'package:task_track_app/features/task/domain/models/task.dart';
import 'package:task_track_app/features/task/domain/repository/task_repository.dart';
import 'package:task_track_app/shared/utils/result.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._taskDataSourceLocal);

  final TaskDataSourceLocal _taskDataSourceLocal;

  @override
  Future<Result<List<Task>>> getTasks() async {
    return handlerException<List<Task>>(
      () => _taskDataSourceLocal.getTask(),
    );
  }

  @override
  Future<Result<String>> addTask(Task task) async {
    return handlerException<String>(
      () async {
        await _taskDataSourceLocal.addTask(task);
        return 'Task added successful';
      },
    );
  }

  @override
  Future<Result<String>> completeTask(String uuid) async {
    return handlerException<String>(
      () async {
        await _taskDataSourceLocal.completeTask(uuid);
        return 'Task toggle successful';
      },
    );
  }

  @override
  Future<Result<String>> deleteTask(String uuid) async {
    return handlerException<String>(
      () async {
        _taskDataSourceLocal.deleteTask(uuid);
        return 'Task deleted successful';
      },
    );
  }
}

Future<Result<T>> handlerException<T>(Future<T> Function() execute) async {
  try {
    return Result.success(await execute());
  } catch (_) {
    return const Result.failure(UnknownFailure());
  }
}
