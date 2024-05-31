import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track_app/features/domain/models/task.dart';
import 'package:task_track_app/features/domain/models/task_status.dart';
import 'package:task_track_app/features/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/presentation/widgets/padding.dart';
import 'package:task_track_app/features/presentation/widgets/sizing.dart';

class ItemTask extends StatelessWidget {
  final Task task;

  const ItemTask({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(UISizing.value_24),
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)]),
      // elevation: UISizing.value_4,
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
          style: const TextStyle(
            color: Color.fromARGB(255, 121, 121, 121),
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
