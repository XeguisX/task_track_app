import 'package:task_track_app/features/domain/models/task.dart';
import 'package:task_track_app/features/domain/repository/task_repository.dart';
import 'package:task_track_app/shared/utils/result.dart';

class AddTask {
  AddTask(this._taskRepository);

  final TaskRepository _taskRepository;

  Future<Result<String>> call(Task task) async {
    return _taskRepository.addTask(task);
  }
}
