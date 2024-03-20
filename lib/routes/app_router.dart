import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/login_page.dart';
import 'package:meraih_mobile/features/homepage/presentation/screens/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/",
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
        path: "/",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: HomeScreen());
        },
      ),
      GoRoute(
        path: "/resset-password",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: ForgetPassword());
        },
      ),
      GoRoute(
        path: "/attendance",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: Attendance());
        },
      ),
      GoRoute(
        path: "/work-assignment",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: WorkTask());
        },
      ),
      GoRoute(
        path: "/work-offense",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: OffenceScreen());
        },
      ),
    ],
    // redirect: (context, state) async {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   String? token = prefs.getString('token');
    //   if (token != null) {
    //     return '/';
    //   }
    //   return '/login';
    // }
  );
}
