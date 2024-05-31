import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track_app/features/task/domain/models/task.dart';
import 'package:task_track_app/features/task/domain/models/task_status.dart';
import 'package:task_track_app/features/task/presentation/controller/task_controller.dart';
import 'package:task_track_app/shared/widgets/ui/padding.dart';
import 'package:task_track_app/shared/widgets/ui/sizing.dart';

class ItemTask extends StatelessWidget {
  final Task task;

  const ItemTask({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(UISizing.value_16),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)],
      ),
      child: ListTile(
        leading: IconButton(
          icon: Icon(
            (task.status == TaskStatus.completed)
                ? Icons.check_circle
                : Icons.radio_button_unchecked,
          ),
          color: (task.status == TaskStatus.completed)
              ? Colors.green
              : Colors.grey,
          onPressed: () {
            context
                .read<TaskController>()
                .add(TaskEvent.completeTask(task: task));
          },
        ),
        title: Text(
          task.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: UISizing.value_16,
          ),
        ),
        subtitle: Text(
          task.description,
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
        trailing: Container(
          padding: UIPadding.vh_4_12,
          decoration: BoxDecoration(
            color: task.status == TaskStatus.completed
                ? Colors.green
                : Colors.orange,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            task.status == TaskStatus.completed ? 'Completed' : 'Pending',
            style: const TextStyle(
              color: Colors.white,
              fontSize: UISizing.value_12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
