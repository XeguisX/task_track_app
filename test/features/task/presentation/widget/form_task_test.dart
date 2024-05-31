import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_track_app/features/task/presentation/widgets/form_task.dart';
import 'package:task_track_app/features/task/presentation/widgets/keys_form_task.dart';

void main() {
  testWidgets(
    'should render FormTask widget correctly',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(home: Material(child: FormTask())),
      );

      expect(find.text('Add New Task'), findsOneWidget);
      expect(find.byKey(inputNameKey), findsOneWidget);
      expect(find.byKey(inputDescriptionKey), findsOneWidget);
      expect(find.byKey(btnAddKey), findsOneWidget);
      expect(find.byKey(btnCloseKey), findsOneWidget);
    },
  );
}
