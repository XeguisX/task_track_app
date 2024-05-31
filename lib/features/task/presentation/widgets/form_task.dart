import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track_app/features/task/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/task/presentation/widgets/keys_form_task.dart';
import 'package:task_track_app/generated/l10n.dart';
import 'package:task_track_app/shared/widgets/ui/color.dart';
import 'package:task_track_app/shared/widgets/ui/padding.dart';
import 'package:task_track_app/shared/widgets/ui/sizing.dart';
import 'package:task_track_app/shared/widgets/ui/spacing.dart';

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
          Padding(
            padding: UIPadding.horizontal_4,
            child: Row(
              children: [
                Icon(
                  size: UISizing.value_32,
                  Icons.add_task,
                  color: UIColor.primary,
                ),
                UISpacing.horizontal_12,
                Text(
                  AppLocalizations.of(context).addNewTask,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          UISpacing.vertical_16,
          TextFormField(
            key: inputNameKey,
            controller: _nameCtrl,
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context).name,
              border: const OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.task,
                color: UIColor.primary,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppLocalizations.of(context).pleaseInsertName;
              }
              return null;
            },
          ),
          UISpacing.vertical_16,
          TextFormField(
            key: inputDescriptionKey,
            controller: _descriptionCtrl,
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context).description,
              border: const OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.description,
                color: UIColor.primary,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppLocalizations.of(context).pleaseInsertDescription;
              }
              return null;
            },
          ),
          UISpacing.vertical_20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                key: btnCloseKey,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                label: Text(
                  AppLocalizations.of(context).close,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
              ElevatedButton.icon(
                key: btnAddKey,
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(UIColor.primary),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<TaskController>().add(
                          TaskEvent.addTask(
                            name: _nameCtrl.text,
                            description: _descriptionCtrl.text,
                          ),
                        );
                    Navigator.pop(context);
                  }
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: Text(
                  AppLocalizations.of(context).save,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
