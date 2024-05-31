import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track_app/features/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/presentation/widgets/spacing.dart';

class FormTask extends StatelessWidget {
  FormTask({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _descriptionCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameCtrl,
            decoration: const InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.task),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please, insert name';
              }
              return null;
            },
          ),
          UISpacing.vertical_16,
          TextFormField(
            controller: _descriptionCtrl,
            decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.description),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please, insert description';
              }
              return null;
            },
          ),
          UISpacing.vertical_20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                label: const Text(
                  'Close',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                      const Color.fromARGB(255, 108, 113, 250)),
                ),
                onPressed: () {
                  context.read<TaskController>().add(
                        TaskEvent.addTask(
                          name: _nameCtrl.text,
                          description: _descriptionCtrl.text,
                        ),
                      );
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: const Text(
                  'Add Task',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
