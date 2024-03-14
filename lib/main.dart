import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/screens/home/home_page.dart';
import 'package:meraih_mobile/screens/pelanggaran/offense_page.dart';
import 'package:meraih_mobile/screens/attendance/attendance.dart';
import 'package:meraih_mobile/screens/task_pekerjaan/work_task.dart';
import 'package:meraih_mobile/screens/permintaan/submission_izin.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/screens/auth/forget_password.dart';
import 'package:meraih_mobile/screens/auth/login_page.dart';
import 'package:meraih_mobile/screens/home/checkin_map.dart';
import 'package:meraih_mobile/screens/home/checkin_prove.dart';
import 'package:meraih_mobile/screens/home/checkin_success.dart';
import 'package:meraih_mobile/screens/permintaan/form_sakit.dart';
import 'package:meraih_mobile/screens/settings/change_password.dart';
import 'package:meraih_mobile/widgets/login/forget_send_email.dart';
import 'package:meraih_mobile/widgets/login/success_password_change.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
  GoRoute(
    path: '/login',
    builder: (BuildContext context, GoRouterState state) {
      return const LoginPage();
    },
  ),
  GoRoute(
    path: '/lupa_password',
    builder: (BuildContext context, GoRouterState state) {
      return const ForgetPassword();
    },
  ),
  GoRoute(
    path: '/checkin',
    builder: (BuildContext context, GoRouterState state) {
      return const CheckinProve();
    },
  ),
  GoRoute(
    path: '/checkin_success',
    builder: (BuildContext context, GoRouterState state) {
      return const CheckinSuccess();
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routerConfig: _router,
    );
  }
}
