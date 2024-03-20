import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/login_page.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/submission.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
      initialLocation: "/login",
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
          path: '/submission',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: Submission(),
            );
          },
        )
      ],
      redirect: (context, state) async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String? token = prefs.getString('token');
        if (token != null) {
          return '/submission';
        }
        return '/login';
      });
}
