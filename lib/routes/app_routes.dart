import 'package:flutter/material.dart';
import '../presentation/daftar_pengajuan_container_screen/daftar_pengajuan_container_screen.dart';
import '../presentation/informasi_pribadi_screen/informasi_pribadi_screen.dart';
import '../presentation/pop_up_filter_screen/pop_up_filter_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/pengajuan_resign_screen/pengajuan_resign_screen.dart';
import '../presentation/absensi_page/absensi_page.dart';
import '../presentation/absensi_tab_container_screen/absensi_tab_container_screen.dart';

class AppRoutes {
  static const String daftarPengajuanPage = '/daftar_pengajuan_page';

  static const String daftarPengajuanContainerScreen =
      '/daftar_pengajuan_container_screen';

  static const String profilePage = '/profile_page';

  static const String informasiPribadiScreen = '/informasi_pribadi_screen';

  static const String popUpFilterScreen = '/pop_up_filter_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String pengajuanResignScreen = '/pengajuan_resign_screen';

  static const String absensiPage = '/absensi_page';

  static const String absensiTabContainerScreen =
      '/absensi_tab_container_screen';

  static Map<String, WidgetBuilder> routes = {
    daftarPengajuanContainerScreen: (context) =>
        DaftarPengajuanContainerScreen(),
    informasiPribadiScreen: (context) => InformasiPribadiScreen(),
    popUpFilterScreen: (context) => PopUpFilterScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    pengajuanResignScreen: (context) => PengajuanResignScreen(),
    absensiPage: (context) => AbsensiPage(),
    absensiTabContainerScreen: (context) => AbsensiTabContainerScreen(),
    initialRoute: (context) => AbsensiTabContainerScreen(),
  };
}
