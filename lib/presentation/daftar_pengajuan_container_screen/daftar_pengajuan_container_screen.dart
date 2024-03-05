import 'package:insan_s_application2/presentation/daftar_pengajuan_page/daftar_pengajuan_page.dart';
import 'package:insan_s_application2/presentation/profile_page/profile_page.dart';
import 'package:insan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/daftar_pengajuan_container_notifier.dart';

class DaftarPengajuanContainerScreen extends ConsumerStatefulWidget {
  const DaftarPengajuanContainerScreen({Key? key}) : super(key: key);

  @override
  DaftarPengajuanContainerScreenState createState() =>
      DaftarPengajuanContainerScreenState();
}

// ignore_for_file: must_be_immutable
class DaftarPengajuanContainerScreenState
    extends ConsumerState<DaftarPengajuanContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.daftarPengajuanPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return "/";
      case BottomBarEnum.Notifikasi:
        return "/";
      case BottomBarEnum.Permintaan:
        return AppRoutes.daftarPengajuanPage;
      case BottomBarEnum.Pengaturan:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.daftarPengajuanPage:
        return DaftarPengajuanPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
