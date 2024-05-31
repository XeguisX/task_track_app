import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:task_track_app/features/domain/models/task_status.dart';
import 'package:task_track_app/features/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/presentation/task_listeners.dart';
import 'package:task_track_app/features/presentation/widgets/form_task.dart';
import 'package:task_track_app/features/presentation/widgets/list_task.dart';
import 'package:task_track_app/features/presentation/widgets/padding.dart';
import 'package:task_track_app/features/presentation/widgets/sizing.dart';
import 'package:task_track_app/features/presentation/widgets/spacing.dart';

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
          title: const Text(
            'Task Trak App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 108, 113, 250),
        ),
        body: Column(
          children: [
            UISpacing.vertical_8,
            Padding(
              padding: UIPadding.vh_8_32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.task,
                    size: UISizing.value_32,
                    color: Color.fromARGB(255, 108, 113, 250),
                  ),
                  UISpacing.horizontal_8,
                  const Text(
                    'My Tasks',
                    style: TextStyle(fontSize: UISizing.value_24),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
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
                              TaskEvent.filterTasks(status: value?.status));
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
                        }).toList(),
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
                icon: const Icon(
                  Icons.home,
                  size: UISizing.value_32,
                  color: Color.fromARGB(255, 108, 113, 250),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.replay_outlined,
                  size: UISizing.value_32,
                  color: Color.fromARGB(255, 108, 113, 250),
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
          backgroundColor: const Color.fromARGB(255, 108, 113, 250),
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Container(
                    padding: UIPadding.all_32,
                    child: FormTask(),
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
