import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/checkout_success.dart';

import 'package:meraih_mobile/features/attendance/presentation/screens/request_attandance.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/review_picture_screen.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/attendance_list.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/request_attandance.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/forget_password.dart';

import 'package:meraih_mobile/features/payroll/presentation/screens/payroll_page.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/DaftarPengajuanPage.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/review_picture_screen.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/login_page.dart';
import 'package:meraih_mobile/features/homepage/presentation/screens/home_page.dart';

import 'package:meraih_mobile/features/profile/presentation/screens/my_profile.dart';
import 'package:meraih_mobile/features/profile/presentation/screens/profile_page.dart';
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
        path: "/",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: HomeScreen());
        },
      ),
      GoRoute(
        path: "/izin-test",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: SubmissionIzin());
        },
      ),
      GoRoute(
        path: "/attendance-list",
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: AttendanceList());
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
          return const NoTransitionPage(
            child: DaftarPengajuanScreen(),
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
        path: '/review',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: ReviewPictureScreen(),
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
        path: '/review',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: ReviewPictureScreen(),
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
        path: '/checkout-success',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: CheckoutSuccess(),
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
      GoRoute(
        path: '/izin',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: SubmissionIzin(),
          );
        },
      ),
      GoRoute(
        path: '/cuti',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: SubmissionCuti(),
          );
        },
      ),
      GoRoute(
        path: '/sick',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: FormSakit(),
          );
        },
      ),
      GoRoute(
        path: '/resign',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: PengajuanResign(),
          );
        },
      ),
      GoRoute(
        path: '/change-shift',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: SubmissionShift(),
          );
        },
      ),
      GoRoute(
        path: '/mutasi',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: SubmissionMutasi(),
          );
        },
      ),
      
      GoRoute(
        path: '/payroll',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: PayrollPage(),
          );
        },
      ),
      GoRoute(
        path: '/attandance-request',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: RequestAttandance(),
          );
        },
      ),
      GoRoute(
        path: '/reset-password',
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: ForgetPassword(),
          );
        },
      ),
    ],
  );
}