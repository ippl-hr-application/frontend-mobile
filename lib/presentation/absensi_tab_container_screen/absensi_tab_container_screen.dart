import 'package:insan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:insan_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:insan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:insan_s_application2/presentation/absensi_page/absensi_page.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/absensi_tab_container_notifier.dart';

class AbsensiTabContainerScreen extends ConsumerStatefulWidget {
  const AbsensiTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AbsensiTabContainerScreenState createState() =>
      AbsensiTabContainerScreenState();
}

class AbsensiTabContainerScreenState
    extends ConsumerState<AbsensiTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Column(
              children: [
                SizedBox(
                  height: 30.v,
                  width: 313.h,
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.black900,
                    labelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                    // unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                    indicatorColor: appTheme.blueGray100,
                    tabs: [
                      Tab(
                        child: Text(
                          "Hari Ini".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Absensi".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Request".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 692.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      AbsensiPage(),
                      AbsensiPage(),
                      AbsensiPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Kehadiran".tr,
      ),
      styleType: Style.bgShadow,
    );
  }
}
