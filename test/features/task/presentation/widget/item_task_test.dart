import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_track_app/features/task/presentation/widgets/item_task.dart';

import '../../task_builder.dart';

void main() {
  testWidgets(
    'should render ItemTask widget correctly',
    (WidgetTester tester) async {
      final task = TaskBuilder().build();

      await tester.pumpWidget(
        MaterialApp(home: Material(child: ItemTask(task: task))),
      );

      expect(find.text(task.name), findsOneWidget);
      expect(find.text(task.description), findsOneWidget);
      expect(find.text('Pending'), findsOneWidget);
      expect(find.byIcon(Icons.radio_button_unchecked), findsOneWidget);
    },
  );
}
