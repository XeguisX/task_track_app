import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:task_track_app/features/task/domain/models/task_status.dart';
import 'package:task_track_app/features/task/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/task/presentation/task_listeners.dart';
import 'package:task_track_app/features/task/presentation/widgets/form_task.dart';
import 'package:task_track_app/features/task/presentation/widgets/list_task.dart';
import 'package:task_track_app/generated/l10n.dart';
import 'package:task_track_app/shared/widgets/ui/color.dart';
import 'package:task_track_app/shared/widgets/ui/padding.dart';
import 'package:task_track_app/shared/widgets/ui/sizing.dart';
import 'package:task_track_app/shared/widgets/ui/spacing.dart';

class TaskFilter {
  TaskFilter({required this.label, this.status});

  final String label;
  final TaskStatus? status;
}

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  final filters = [
    TaskFilter(label: 'All'),
    TaskFilter(label: 'Pending', status: TaskStatus.pending),
    TaskFilter(label: 'Completed', status: TaskStatus.completed),
  ];

  TaskFilter? taskFilterSelected;

  @override
  Widget build(BuildContext context) {
    return TaskListeners(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
          backgroundColor: UIColor.primary,
        ),
        body: Column(
          children: [
            UISpacing.vertical_8,
            Padding(
              padding: UIPadding.vh_8_32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.task,
                    size: UISizing.value_32,
                    color: UIColor.primary,
                  ),
                  UISpacing.horizontal_8,
                  Text(
                    AppLocalizations.of(context).subtitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Spacer(),
                  Container(
                    padding: UIPadding.horizontal_12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<TaskFilter>(
                        value: taskFilterSelected ?? filters.first,
                        icon: const Icon(Icons.filter_list),
                        elevation: 16,
                        underline: Container(height: UISizing.value_2),
                        onChanged: (TaskFilter? value) {
                          context.read<TaskController>().add(
                                TaskEvent.filterTasks(status: value?.status),
                              );
                          setState(() {
                            taskFilterSelected = value;
                          });
                        },
                        items: filters.map<DropdownMenuItem<TaskFilter>>(
                          (TaskFilter value) {
                            return DropdownMenuItem<TaskFilter>(
                              value: value,
                              child: Text(value.label),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: ListTask()),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: UISizing.value_16,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: UISizing.value_32,
                  color: UIColor.primary,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.replay_outlined,
                  size: UISizing.value_32,
                  color: UIColor.primary,
                ),
                onPressed: () {
                  context.read<TaskController>().add(const TaskEvent.getTask());
                },
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: UISizing.value_8,
          backgroundColor: UIColor.primary,
          onPressed: () {
            showGeneralDialog<void>(
              barrierLabel: "Close",
              barrierDismissible: true,
              transitionDuration: const Duration(milliseconds: 300),
              transitionBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: Tween<double>(begin: 0.7, end: 1.0).animate(
                      CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut),
                    ),
                    child: child,
                  ),
                );
              },
              context: context,
              pageBuilder: (
                BuildContext buildContext,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return Dialog(
                  insetPadding: UIPadding.zero,
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: UIPadding.vh_16_32,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            UISpacing.vertical_8,
                            FormTask(),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: UISizing.value_32,
          ),
        ),
      ),
    );
  }
}
