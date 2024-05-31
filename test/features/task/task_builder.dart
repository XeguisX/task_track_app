import 'package:task_track_app/features/task/domain/models/task.dart';
import 'package:task_track_app/features/task/domain/models/task_status.dart';
import 'package:uuid/uuid.dart';

class TaskBuilder {
  String uuid = const Uuid().v4();
  String name = 'Name';
  String description = 'Description';
  TaskStatus status = TaskStatus.pending;

  Task build() => Task(
        uuid: uuid,
        name: name,
        description: description,
        status: status,
      );

  TaskBuilder withStatus(TaskStatus status) {
    this.status = status;
    return this;
  }
}

List<Task> generateTasks([int length = 2]) => List.generate(
      length,
      (index) => TaskBuilder()
          .withStatus(
            index % 2 == 0 ? TaskStatus.pending : TaskStatus.completed,
          )
          .build(),
    );
