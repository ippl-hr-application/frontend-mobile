import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/login_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meraih_mobile/screens/permintaan/form_sakit.dart';
import 'package:meraih_mobile/screens/permintaan/form_kehadiran_request.dart';
import 'package:meraih_mobile/screens/permintaan/submission_izin.dart';
import 'package:meraih_mobile/screens/home/checkin_map.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
      initialLocation: "/request-hadir",
      routes: [
      GoRoute(
          path: "/login",
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: LoginPage(),
            );
          },
        ),
        GoRoute(
          path: "/sakit",
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: FormSakit(),
            );
          },
        ),
        GoRoute(
          path: "/request-hadir",
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: FormReAbsen(),
            );
          },
        ),
        GoRoute(
          path: "/izin",
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: SubmissionIzin(),
            );
          },
        ),
        GoRoute(
          path: "/map",
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: CheckinMap(),
            );
          },
        ),
      ], 
      // redirect: (context, state) async {
      //   SharedPreferences prefs = await SharedPreferences.getInstance();
      //   String? token = prefs.getString('token');
      //   if (token != null) {
      //     return '/';
      //   }
      //   return '/auth/login';
      // }
      );
}
