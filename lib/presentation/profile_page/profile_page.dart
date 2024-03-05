import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/profile_notifier.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 1000.h,
          padding: EdgeInsets.only(bottom: 290.v),
          decoration: AppDecoration.outlineBlack,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 47.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildProfile(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Column(
        children: [
          Container(
            width: 328.h,
            margin: EdgeInsets.symmetric(horizontal: 1.h),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_muhammad_saman".tr,
                  style: CustomTextStyles.titleLargeMontserrat,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_manager_accounting".tr,
                  style: CustomTextStyles.bodyMediumRobotoGray700,
                ),
                SizedBox(height: 11.v),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          SizedBox(
            height: 176.v,
            width: 328.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 176.v,
                    width: 325.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.black900.withOpacity(0.05),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle359,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapBtnInformasiPribadi(context);
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 5.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_akun_saya".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiSettings,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 3.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "msg_ganti_kata_sandi".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 4.v,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "lbl_keluar".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onTapBtnInformasiPribadi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.informasiPribadiScreen,
    );
  }
}
