import 'package:task_track_app/features/task/domain/models/task.dart';

abstract class TaskDataSourceLocal {
  Future<List<Task>> getTask();

  Future<void> addTask(Task task);

  Future<void> completeTask(String uuid);

  Future<void> deleteTask(String uuid);
}
