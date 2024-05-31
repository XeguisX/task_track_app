import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track_app/features/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/presentation/widgets/item_task.dart';
import 'package:task_track_app/features/presentation/widgets/padding.dart';
import 'package:task_track_app/features/presentation/widgets/sizing.dart';
import 'package:task_track_app/shared/utils/async_state.dart';

class ListTask extends StatelessWidget {
  const ListTask({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskController, TaskState>(
      builder: (context, state) {
        return switch (state.asyncTasks) {
          LoadingState() => const SizedBox.shrink(),
          SuccessState(data: final tasks) => tasks.isNotEmpty
              ? Scrollbar(
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Container(
                          margin: UIPadding.vh_4_16,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Dismissible(
                            key: Key(task.uuid),
                            background: Container(
                              color: Colors.transparent,
                              alignment: Alignment.centerLeft,
                              padding: UIPadding.horizontal_24,
                              child:
                                  const Icon(Icons.delete, color: Colors.white),
                            ),
                            secondaryBackground: Container(
                              color: Colors.transparent,
                              alignment: Alignment.centerRight,
                              padding: UIPadding.horizontal_24,
                              child:
                                  const Icon(Icons.delete, color: Colors.white),
                            ),
                            direction: DismissDirection.horizontal,
                            onDismissed: (_) {
                              context
                                  .read<TaskController>()
                                  .add(TaskEvent.deleteTask(task: task));
                            },
                            child: ItemTask(task: task),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : const Icon(
                  Icons.splitscreen,
                  size: UISizing.value_64,
                ),
          FailureState() => const SizedBox.shrink(),
        };
      },
    );
  }
}
