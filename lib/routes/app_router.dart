import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/login_page.dart';
import 'package:meraih_mobile/features/homepage/presentation/screens/home_page.dart';
import 'package:meraih_mobile/features/profile/presentation/screens/my_profile.dart';
import 'package:meraih_mobile/features/profile/presentation/screens/profile_page.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/submission.dart';
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
      GoRoute(
        path: '/submission',
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: Submission(),
          );
        },
      ),
      GoRoute(
        path: '/checkin-map',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: CheckinMap(),
          );
        },
      ),
      GoRoute(
        path: '/checkin-prove',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: CheckinProve(),
          );
        },
      ),
      GoRoute(
        path: '/checkin-success',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: CheckinSuccess(),
          );
        },
      ),
      GoRoute(
        path: '/profile',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: Profile(),
          );
        },
      ),
      GoRoute(
        path: '/my-profile',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: MyProfile(),
          );
        },
      ),
      GoRoute(
        path: '/change-password',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: ChangePassword(),
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
    //   return '/login';
    // }
  );
}