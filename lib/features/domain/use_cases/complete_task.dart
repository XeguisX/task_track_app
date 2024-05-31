import 'package:task_track_app/features/domain/repository/task_repository.dart';
import 'package:task_track_app/shared/utils/result.dart';

class CompleteTask {
  CompleteTask(this._taskRepository);

  final TaskRepository _taskRepository;

  Future<Result<String>> call(String taskId) {
    return _taskRepository.completeTask(taskId);
  }
}
