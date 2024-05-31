import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track_app/features/presentation/controller/task_controller.dart';
import 'package:task_track_app/shared/utils/transaction_state.dart';

class TaskListeners extends StatelessWidget {
  const TaskListeners({
    super.key,
    required this.child,
  });

  final Widget child;

  void showSnackbar(BuildContext context, SuccessTransaction<String> success) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(success.data!)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TaskController, TaskState>(
          listenWhen: (previous, current) =>
              previous.completeTaskTransaction !=
              current.completeTaskTransaction,
          listener: (context, state) {
            if (state.completeTaskTransaction is SuccessTransaction<String>) {
              showSnackbar(
                context,
                (state.completeTaskTransaction as SuccessTransaction<String>),
              );
            }
          },
        ),
        BlocListener<TaskController, TaskState>(
          listenWhen: (previous, current) =>
              previous.addTaskTransaction != current.addTaskTransaction,
          listener: (context, state) {
            if (state.addTaskTransaction is SuccessTransaction<String>) {
              showSnackbar(
                context,
                (state.addTaskTransaction as SuccessTransaction<String>),
              );
            }
          },
        ),
        BlocListener<TaskController, TaskState>(
          listenWhen: (previous, current) =>
              previous.deleteTaskTransaction != current.deleteTaskTransaction,
          listener: (context, state) {
            if (state.deleteTaskTransaction is SuccessTransaction<String>) {
              showSnackbar(
                context,
                (state.deleteTaskTransaction as SuccessTransaction<String>),
              );
            }
          },
        ),
      ],
      child: child,
    );
  }
}
