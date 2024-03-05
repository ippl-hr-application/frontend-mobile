import 'package:insan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:insan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:insan_s_application2/widgets/custom_text_form_field.dart';
import 'package:insan_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/pengajuan_resign_notifier.dart';

class PengajuanResignScreen extends ConsumerStatefulWidget {
  const PengajuanResignScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PengajuanResignScreenState createState() => PengajuanResignScreenState();
}

class PengajuanResignScreenState extends ConsumerState<PengajuanResignScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 402.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 550.v,
                    width: 347.h,
                    margin: EdgeInsets.only(
                      left: 27.h,
                      right: 27.h,
                      bottom: 5.v,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildThirty(context),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle81,
                          height: 627.v,
                          width: 347.h,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        _buildView(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildKirimPengajuan(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Pengajuan Resign".tr,
      ),
      styleType: Style.bgShadow,
      leading: IconButton(
        icon: Icon(
            Icons.arrow_back), // Use the Icons class for the back arrow icon
        onPressed: () {
          onPressedLeftArrow(context);
        }, // Handle back button press by navigating back
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.h,
          top: 12.v,
          right: 12.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.indigo400,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgTelevision,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 6.v),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "Alasan".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 11.v),
            CustomImageView(
              imagePath: ImageConstant.imgVector54,
              height: 1.v,
              width: 326.h,
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 2.h,
              ),
              child: Consumer(
                builder: (context, ref, _) {
                  return CustomTextFormField(
                    controller:
                        ref.watch(pengajuanResignNotifier).alasanController,
                    hintText: "Alasan".tr,
                    textInputAction: TextInputAction.done,
                    maxLines: 10,
                  );
                },
              ),
            ),
            SizedBox(height: 17.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "TTD".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          SizedBox(height: 265.v),
          Container(
            height: 265.v,
            width: 327.h,
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKirimPengajuan(BuildContext context) {
    return CustomElevatedButton(
      text: "Kirim Pengajuan".tr,
      margin: EdgeInsets.fromLTRB(22.h, 10.v, 32.h, 22.v),
    );
  }

  onPressedLeftArrow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.daftarPengajuanContainerScreen,
    );
  }
}
