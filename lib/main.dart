import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_track_app/features/data/dto/task_hive.dart';
import 'package:task_track_app/features/di/injection.dart';
import 'package:task_track_app/features/presentation/controller/task_controller.dart';
import 'package:task_track_app/features/presentation/task_view.dart';
import 'package:task_track_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive
    ..init(dir.path)
    ..registerAdapter(TaskHiveAdapter());
  final taskBox = await Hive.openBox<TaskHive>('task');
  initDi(taskBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TaskController>()..add(const TaskEvent.getTask()),
      child: MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(
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
