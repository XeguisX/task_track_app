import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task_track_app/features/task/data/data_source/task_data_source_local.dart';
import 'package:task_track_app/features/task/data/repository/task_repository_impl.dart';
import 'package:task_track_app/features/task/domain/models/task_status.dart';
import 'package:task_track_app/shared/utils/result.dart';
import 'package:uuid/uuid.dart';

import '../../task_builder.dart';

class MockTaskDataSource extends Mock implements TaskDataSourceLocal {}

void main() {
  late MockTaskDataSource mockTaskDataSource;
  late TaskRepositoryImpl taskRepositoryImpl;

  setUp(() {
    mockTaskDataSource = MockTaskDataSource();
    taskRepositoryImpl = TaskRepositoryImpl(mockTaskDataSource);
  });

  group('TaskRepository', () {
    test(
      'When getTasks should return a list of tasks',
      () async {
        //Arrange
        when(() => mockTaskDataSource.getTask()).thenAnswer(
          (_) async => generateTasks(),
        );

        //Act
        final result = await taskRepositoryImpl.getTasks();

        //Assert
        result.when(success: (tasks) {
          expect(tasks.length, 2);
          expect(tasks[0].name, 'Name');
          expect(tasks[1].status, TaskStatus.completed);
        }, failure: (failure) {
          fail('Should not have failed: $failure');
        });

        verify(() => mockTaskDataSource.getTask()).called(1);
      },
    );

    test(
      'When getTasks should returns empty list',
      () async {
        //Arrange
        when(() => mockTaskDataSource.getTask()).thenAnswer((_) async => []);

        //Act
        final result = await taskRepositoryImpl.getTasks();

        //Assert
        result.when(success: (tasks) {
          expect(tasks, isEmpty);
        }, failure: (failure) {
          fail('Should not have failed: $failure');
        });

        verify(() => mockTaskDataSource.getTask()).called(1);
      },
    );

    test(
      'When getTasks should returns failure',
      () async {
        //Arrange
        when(() => mockTaskDataSource.getTask()).thenAnswer(
          (_) async => throw Exception(),
        );

        //Act
        final result = await taskRepositoryImpl.getTasks();

        //Assert
        result.when(success: (tasks) {
          fail('Should not have success');
        }, failure: (failure) {
          expect(failure, isA<UnknownFailure>());
        });

        verify(() => mockTaskDataSource.getTask()).called(1);
      },
    );

    test(
      'When addTask should return successful',
      () async {
        //Arrange
        final newTask = TaskBuilder().build();

        when(() => mockTaskDataSource.addTask(newTask)).thenAnswer(
          (_) async => true,
        );

        //Act
        final result = await taskRepositoryImpl.addTask(newTask);

        //Assert
        result.when(success: (message) {
          expect(message, 'Task added successful');
        }, failure: (failure) {
          fail('Should not have failed: $failure');
        });

        verify(() => mockTaskDataSource.addTask(newTask)).called(1);
      },
    );

    test(
      'When addTask should return failure',
      () async {
        //Arrange
        final newTask = TaskBuilder().build();

        when(() => mockTaskDataSource.addTask(newTask)).thenAnswer(
          (_) async => throw Exception(),
        );

        //Act
        final result = await taskRepositoryImpl.addTask(newTask);

        //Assert
        result.when(success: (message) {
          fail('Should not have success: $message');
        }, failure: (failure) {
          expect(failure, isA<UnknownFailure>());
        });

        verify(() => mockTaskDataSource.addTask(newTask)).called(1);
      },
    );

    test(
      'When completeTask should return successful',
      () async {
        //Arrange
        final uuidTask = const Uuid().v4();
        when(() => mockTaskDataSource.completeTask(uuidTask)).thenAnswer(
          (_) async => true,
        );

        //Act
        final result = await taskRepositoryImpl.completeTask(uuidTask);

        //Assert
        result.when(success: (message) {
          expect(message, 'Task toggle successful');
        }, failure: (failure) {
          fail('Should not have failed: $failure');
        });

        verify(() => mockTaskDataSource.completeTask(uuidTask)).called(1);
      },
    );

    test(
      'When completeTask should return failure',
      () async {
        //Arrange
        final uuidTask = const Uuid().v4();
        when(() => mockTaskDataSource.completeTask(uuidTask)).thenAnswer(
          (_) async => throw Exception(),
        );

        //Act
        final result = await taskRepositoryImpl.completeTask(uuidTask);

        //Assert
        result.when(success: (message) {
          fail('Should not have success: $message');
        }, failure: (failure) {
          expect(failure, isA<UnknownFailure>());
        });

        verify(() => mockTaskDataSource.completeTask(uuidTask)).called(1);
      },
    );

    test(
      'When deleteTask should return successful',
      () async {
        //Arrange
        final uuidTask = const Uuid().v4();
        when(() => mockTaskDataSource.deleteTask(uuidTask)).thenAnswer(
          (_) async => true,
        );

        //Act
        final result = await taskRepositoryImpl.deleteTask(uuidTask);

        //Assert
        result.when(success: (message) {
          expect(message, 'Task deleted successful');
        }, failure: (failure) {
          fail('Should not have failed: $failure');
        });

        verify(() => mockTaskDataSource.deleteTask(uuidTask)).called(1);
      },
    );
  });
}
