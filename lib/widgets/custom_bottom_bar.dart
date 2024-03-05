import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavBeranda,
      activeIcon: ImageConstant.imgNavBeranda,
      title: "lbl_beranda".tr,
      type: BottomBarEnum.Beranda,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavNotifikasi,
      activeIcon: ImageConstant.imgNavNotifikasi,
      title: "lbl_notifikasi".tr,
      type: BottomBarEnum.Notifikasi,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPermintaan,
      activeIcon: ImageConstant.imgNavPermintaan,
      title: "lbl_permintaan".tr,
      type: BottomBarEnum.Permintaan,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPengaturan,
      activeIcon: ImageConstant.imgNavPengaturan,
      title: "lbl_pengaturan".tr,
      type: BottomBarEnum.Pengaturan,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray400,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.v,
                  width: 28.h,
                  color: appTheme.gray500,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallRobotoGray500.copyWith(
                      color: appTheme.gray500,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 24.v,
                  width: 20.h,
                  color: appTheme.indigoA700,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallRobotoBluegray400.copyWith(
                      color: appTheme.blueGray400,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Beranda,
  Notifikasi,
  Permintaan,
  Pengaturan,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
