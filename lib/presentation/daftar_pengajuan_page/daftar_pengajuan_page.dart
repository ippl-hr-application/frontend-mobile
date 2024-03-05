import 'package:insan_s_application2/presentation/pop_up_filter_screen/pop_up_filter_screen.dart';
import 'package:insan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:insan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:insan_s_application2/widgets/custom_drop_down.dart';
import 'models/daftar_pengajuan_model.dart';
import 'package:insan_s_application2/widgets/custom_icon_button.dart';
import 'widgets/daftarpengajuan_item_widget.dart';
import 'models/daftarpengajuan_item_model.dart';
import 'package:insan_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/daftar_pengajuan_notifier.dart';

class DaftarPengajuanPage extends ConsumerStatefulWidget {
  const DaftarPengajuanPage({Key? key}) : super(key: key);

  @override
  DaftarPengajuanPageState createState() => DaftarPengajuanPageState();
}

class DaftarPengajuanPageState extends ConsumerState<DaftarPengajuanPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 196.v),
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildTwentyTwo(context),
                              SizedBox(height: 23.v),
                              _buildDaftarPengajuan(context)
                            ])))),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "lbl_pengajuan".tr),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h, right: 12.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(child: Consumer(builder: (context, ref, _) {
                return CustomDropDown(
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 14.v, 7.h, 14.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 10.v,
                            width: 15.h)),
                    hintText: "msg_juni_2023_agustus".tr,
                    items: ref
                            .watch(daftarPengajuanNotifier)
                            .daftarPengajuanModelObj
                            ?.dropdownItemList ??
                        [],
                    onChanged: (value) {
                      ref.watch(daftarPengajuanNotifier).selectedDropDownValue =
                          value;
                    });
              })),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: CustomIconButton(
                      height: 38.v,
                      width: 44.h,
                      padding: EdgeInsets.all(9.h),
                      onTap: () {
                        onTapBtnPrefixIcon(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPrefixIcon)))
            ])));
  }

  /// Section Widget
  Widget _buildDaftarPengajuan(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.5.v),
                    child: SizedBox(
                        width: 348.h,
                        child: Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.gray300)));
              },
              itemCount: ref
                      .watch(daftarPengajuanNotifier)
                      .daftarPengajuanModelObj
                      ?.daftarpengajuanItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                DaftarpengajuanItemModel model = ref
                        .watch(daftarPengajuanNotifier)
                        .daftarPengajuanModelObj
                        ?.daftarpengajuanItemList[index] ??
                    DaftarpengajuanItemModel();
                return DaftarpengajuanItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: appTheme.indigoA700,
        child: CustomImageView(
            imagePath: ImageConstant.imgGrid, height: 25.0.v, width: 25.0.h));
  }

  /// Navigates to the popUpFilterScreen when the action is triggered.
  onTapBtnPrefixIcon(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return PopUpFilterScreen(); // Replace with your actual screen widget
      },
    );
  }
}
