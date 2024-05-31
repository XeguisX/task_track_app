import 'package:task_track_app/features/task/domain/repository/task_repository.dart';
import 'package:task_track_app/shared/utils/result.dart';

class DeleteTask {
  DeleteTask(this._taskRepository);

  final TaskRepository _taskRepository;

  Future<Result<String>> call(String taskId) {
    return _taskRepository.deleteTask(taskId);
  }
}
