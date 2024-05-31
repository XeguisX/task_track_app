import 'package:task_track_app/features/task/domain/models/task.dart';
import 'package:task_track_app/shared/utils/result.dart';

abstract class TaskRepository {
  Future<Result<List<Task>>> getTasks();

  Future<Result<String>> addTask(Task task);

  Future<Result<String>> completeTask(String taskId);

  Future<Result<String>> deleteTask(String taskId);
}
