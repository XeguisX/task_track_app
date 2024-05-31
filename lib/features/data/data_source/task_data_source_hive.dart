import 'package:hive/hive.dart';
import 'package:task_track_app/features/data/data_source/task_data_source_local.dart';
import 'package:task_track_app/features/data/dto/task_hive.dart';
import 'package:task_track_app/features/data/mapper/task_mapper.dart';
import 'package:task_track_app/features/domain/models/task.dart';

class TaskDataSourceHive implements TaskDataSourceLocal {
  TaskDataSourceHive(this.taskBox);

  final Box<TaskHive> taskBox;

  @override
  Future<List<Task>> getTask() async {
    return taskBox.values.map((task) => task.toTaskDomain()).toList();
  }

  @override
  Future<void> addTask(Task task) async {
    await taskBox.put(task.uuid, task.toTaskHive());
  }

  @override
  Future<void> completeTask(String uuid) async {
    final task = taskBox.get(uuid);
    if (task != null) {
      final updatedTask = TaskHive(
        uuid: task.uuid,
        name: task.name,
        description: task.description,
        status: (task.status == 0) ? 1 : 0,
      );

      await taskBox.put(task.uuid, updatedTask);
    }
  }

  @override
  Future<void> deleteTask(String uuid) async {
    await taskBox.delete(uuid);
  }
}
