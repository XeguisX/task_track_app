import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:task_track_app/features/data/data_source/task_data_source_hive.dart';
import 'package:task_track_app/features/data/data_source/task_data_source_local.dart';
import 'package:task_track_app/features/data/dto/task_hive.dart';
import 'package:task_track_app/features/data/repository/task_repository_impl.dart';
import 'package:task_track_app/features/domain/repository/task_repository.dart';
import 'package:task_track_app/features/domain/use_cases/add_task.dart';
import 'package:task_track_app/features/domain/use_cases/complete_task.dart';
import 'package:task_track_app/features/domain/use_cases/delete_task.dart';
import 'package:task_track_app/features/domain/use_cases/get_task.dart';
import 'package:task_track_app/features/presentation/controller/task_controller.dart';

GetIt getIt = GetIt.instance;

void initDi(Box<TaskHive> taskBox) {
  getIt.registerFactory(
    () => TaskController(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );

  getIt.registerLazySingleton(() => GetTask(getIt()));
  getIt.registerLazySingleton(() => AddTask(getIt()));
  getIt.registerLazySingleton(() => CompleteTask(getIt()));
  getIt.registerLazySingleton(() => DeleteTask(getIt()));

  getIt
      .registerLazySingleton<TaskRepository>(() => TaskRepositoryImpl(getIt()));
  getIt.registerLazySingleton<TaskDataSourceLocal>(
    () => TaskDataSourceHive(taskBox),
  );
}
