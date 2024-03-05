import 'package:insan_s_application2/widgets/custom_checkbox_button.dart';
import 'package:insan_s_application2/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/pop_up_filter_notifier.dart';

class PopUpFilterScreen extends ConsumerStatefulWidget {
  const PopUpFilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PopUpFilterScreenState createState() => PopUpFilterScreenState();
}

class PopUpFilterScreenState extends ConsumerState<PopUpFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 398.h,
          padding: EdgeInsets.symmetric(
            horizontal: 38.h,
            vertical: 4.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCloseAction,
                height: 20.adaptSize,
                width: 32.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 1.h),
              ),
              SizedBox(height: 7.v),
              Text(
                "msg_status_pengajuan".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 8.v),
              _buildDalamProses(context),
              SizedBox(height: 10.v),
              _buildDiTolak(context),
              SizedBox(height: 10.v),
              _buildDiTerima(context),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_status_pengajuan".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 16.v),
              _buildStatusPengajuan(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDalamProses(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomCheckboxButton(
            text: "lbl_dalam_proses".tr,
            value: ref.watch(popUpFilterNotifier).dalamProses,
            padding: EdgeInsets.symmetric(vertical: 4.v),
            onChange: (value) {
              ref.read(popUpFilterNotifier.notifier).changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDiTolak(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomCheckboxButton(
            text: "lbl_di_tolak2".tr,
            value: ref.watch(popUpFilterNotifier).diTolak,
            padding: EdgeInsets.symmetric(vertical: 4.v),
            onChange: (value) {
              ref.read(popUpFilterNotifier.notifier).changeCheckBox2(value);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDiTerima(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomCheckboxButton(
            text: "lbl_di_terima2".tr,
            value: ref.watch(popUpFilterNotifier).diTerima,
            padding: EdgeInsets.symmetric(vertical: 4.v),
            onChange: (value) {
              ref.read(popUpFilterNotifier.notifier).changeCheckBox3(value);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusPengajuan(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 230.h,
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 27.h),
                child: CustomRadioButton(
                  text: "lbl_izin2".tr,
                  value: ref
                          .watch(popUpFilterNotifier)
                          .popUpFilterModelObj
                          ?.radioList[0] ??
                      "",
                  groupValue: ref.watch(popUpFilterNotifier).statusPengajuan,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    ref
                        .read(popUpFilterNotifier.notifier)
                        .changeRadioButton1(value);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  right: 18.h,
                ),
                child: CustomRadioButton(
                  text: "lbl_sakit".tr,
                  value: ref
                          .watch(popUpFilterNotifier)
                          .popUpFilterModelObj
                          ?.radioList[1] ??
                      "",
                  groupValue: ref.watch(popUpFilterNotifier).statusPengajuan,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    ref
                        .read(popUpFilterNotifier.notifier)
                        .changeRadioButton1(value);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  right: 20.h,
                ),
                child: CustomRadioButton(
                  text: "lbl_shift".tr,
                  value: ref
                          .watch(popUpFilterNotifier)
                          .popUpFilterModelObj
                          ?.radioList[2] ??
                      "",
                  groupValue: ref.watch(popUpFilterNotifier).statusPengajuan,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    ref
                        .read(popUpFilterNotifier.notifier)
                        .changeRadioButton1(value);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  right: 7.h,
                ),
                child: CustomRadioButton(
                  text: "lbl_mutasi".tr,
                  value: ref
                          .watch(popUpFilterNotifier)
                          .popUpFilterModelObj
                          ?.radioList[3] ??
                      "",
                  groupValue: ref.watch(popUpFilterNotifier).statusPengajuan,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    ref
                        .read(popUpFilterNotifier.notifier)
                        .changeRadioButton1(value);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.v),
                child: CustomRadioButton(
                  text: "lbl_lembur".tr,
                  value: ref
                          .watch(popUpFilterNotifier)
                          .popUpFilterModelObj
                          ?.radioList[4] ??
                      "",
                  groupValue: ref.watch(popUpFilterNotifier).statusPengajuan,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    ref
                        .read(popUpFilterNotifier.notifier)
                        .changeRadioButton1(value);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
