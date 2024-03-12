import 'package:flutter/material.dart';
import 'package:meraih_mobile/screens/home/home_page.dart';
import 'package:meraih_mobile/screens/pelanggaran/offense_page.dart';
import 'package:meraih_mobile/screens/attendance/attendance.dart';
import 'package:meraih_mobile/screens/task_pekerjaan/work_task.dart';
import 'package:meraih_mobile/screens/Pegajuan/submission_izin.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
  FilePicker.platform = FilePicker.platform;
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: '/izin',
    builder: (BuildContext context, GoRouterState state) {
      return const SubmissionIzin();
    },
  ),
  GoRoute(
    path: '/task',
    builder: (BuildContext context, GoRouterState state) {
      return const WorkTask();
    },
  ),
  GoRoute(
    path: '/pelanggaran',
    builder: (BuildContext context, GoRouterState state) {
      return const OffenceScreen();
    },
  ),
  GoRoute(
    path: '/kehadiran_today',
    builder: (BuildContext context, GoRouterState state) {
      return const Attendance();
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routerConfig: _router,
    );
  }
}
