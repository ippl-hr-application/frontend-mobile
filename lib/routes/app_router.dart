import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/attendance/presentation/screen/absensiPage.dart';
import 'package:meraih_mobile/features/authentication/presentation/screens/login_page.dart';
import 'package:meraih_mobile/features/pengajuan/cuti/presentation/screens/submission_cuti.dart';
import 'package:meraih_mobile/features/pengajuan/daftarPengajuan/DaftarPengajuanPage.dart';
import 'package:meraih_mobile/features/pengajuan/resign/presentation/screens/pengajuan_resign.dart';
import 'package:meraih_mobile/screens/home/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meraih_mobile/features/pengajuan/izin/presentation/screens/submission_izin.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: "/daftarPengajuan",
    routes: [
      GoRoute(
        path: "/",
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: HomeScreen(),
          );
        },
      ),
      GoRoute(
        path: "/daftarPengajuan",
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: DaftarPengajuanScreen(),
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
        path: "/absensi",
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: AbsensiPage(),
          );
        },
      ),
      GoRoute(
        path: "/resign",
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: PengajuanResign(),
          );
        },
      ),
      GoRoute(
        path: "/cuti",
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: SubmissionCuti(),
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
