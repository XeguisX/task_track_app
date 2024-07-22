import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_track_app/features/task/data/dto/task_hive.dart';
import 'package:task_track_app/features/di/injection.dart';
import 'package:task_track_app/features/task/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/task/presentation/task_view.dart';
import 'package:task_track_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final dir = await getApplicationDocumentsDirectory();
      Hive
        ..init(dir.path)
        ..registerAdapter(TaskHiveAdapter());
      final taskBox = await Hive.openBox<TaskHive>('task');
      initDi(taskBox);
      runApp(const MyApp());
    },
    (error, stack) {
      debugPrint('$stack');
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //test commits

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TaskController>()..add(const TaskEvent.getTask()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        supportedLocales: AppLocalizations.delegate.supportedLocales,
        title: 'Material App',
        home: const TaskView(),
      ),
    );
  }
}
