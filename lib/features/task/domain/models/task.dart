import 'package:task_track_app/features/task/domain/models/task_status.dart';

class Task {
  Task({
    required this.uuid,
    required this.name,
    required this.description,
    required this.status,
  });

  final String uuid;
  final String name;
  final String description;
  TaskStatus status;
}
