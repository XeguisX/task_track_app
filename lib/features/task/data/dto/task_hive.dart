import 'package:hive/hive.dart';

part 'task_hive.g.dart';

@HiveType(typeId: 0)
class TaskHive extends HiveObject {
  TaskHive({
    required this.uuid,
    required this.name,
    required this.description,
    required this.status,
  });

  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final int status;
}
