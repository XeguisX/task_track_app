import 'package:task_track_app/features/task/domain/models/task.dart';
import 'package:task_track_app/features/task/domain/repository/task_repository.dart';
import 'package:task_track_app/shared/utils/result.dart';

class GetTask {
  GetTask(this._taskRepository);

  final TaskRepository _taskRepository;

  Future<Result<List<Task>>> call() {
    return _taskRepository.getTasks();
  }
}
