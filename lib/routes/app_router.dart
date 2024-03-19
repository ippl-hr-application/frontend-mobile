import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/login_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meraih_mobile/pengajuan/izin/presentation/screens/submission_izin.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/izin",
    routes: [
      GoRoute(
        path: "/izin",
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: SubmissionIzin(),
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
