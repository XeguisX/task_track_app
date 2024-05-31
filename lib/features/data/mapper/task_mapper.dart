import 'package:task_track_app/features/data/dto/task_hive.dart';
import 'package:task_track_app/features/domain/models/task.dart';
import 'package:task_track_app/features/domain/models/task_status.dart';

extension TaskHiveExt on TaskHive {
  Task toTaskDomain() => Task(
        uuid: uuid,
        name: name,
        description: description,
        status: TaskStatus.values[status],
      );
}

extension TaskExt on Task {
  TaskHive toTaskHive() => TaskHive(
        uuid: uuid,
        name: name,
        description: description,
        status: status.index,
      );
}
