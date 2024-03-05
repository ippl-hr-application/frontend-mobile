import 'package:insan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:insan_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:insan_s_application2/widgets/custom_text_form_field.dart';
import 'package:insan_s_application2/core/utils/validation_functions.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/informasi_pribadi_notifier.dart';

class InformasiPribadiScreen extends ConsumerStatefulWidget {
  const InformasiPribadiScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InformasiPribadiScreenState createState() => InformasiPribadiScreenState();
}

class InformasiPribadiScreenState
    extends ConsumerState<InformasiPribadiScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: _buildInformasiPribadi(context),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 58.v,
      leadingWidth: 402.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector13,
        margin: EdgeInsets.fromLTRB(28.h, 24.v, 371.h, 25.v),
      ),
      title: Container(
        height: 1.v,
        width: 11.h,
        margin: EdgeInsets.only(left: 28.h),
        decoration: BoxDecoration(
          color: appTheme.black900,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMuhammadSaman(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          width: 239.h,
          controller:
              ref.watch(informasiPribadiNotifier).muhammadSamanController,
          hintText: "lbl_muhammad_saman".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          width: 240.h,
          controller: ref.watch(informasiPribadiNotifier).frameController,
          hintText: "msg_11211052_student_itk_ac_id".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          width: 239.h,
          controller: ref.watch(informasiPribadiNotifier).frameController1,
          hintText: "msg_jl_sultan_hasanuddin".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          width: 240.h,
          controller: ref.watch(informasiPribadiNotifier).dateController,
          hintText: "lbl_11_11_2005".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          width: 239.h,
          controller: ref.watch(informasiPribadiNotifier).frameController2,
          hintText: "msg_staff_devisi_marketing".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          width: 239.h,
          controller: ref.watch(informasiPribadiNotifier).timeController,
          hintText: "lbl_full_time".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          width: 239.h,
          controller: ref.watch(informasiPribadiNotifier).frameController3,
          hintText: "lbl_082150776601".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInformasiPribadi(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_informasi_pribadi".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 55.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "lbl_nama".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                _buildMuhammadSaman(context),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_email".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                _buildFrame(context),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_alamat".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                _buildFrame1(context),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_tanggal_masuk".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                _buildDate(context),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_jabatan".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                _buildFrame2(context),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_tipe_karyawan".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                _buildTime(context),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    "lbl_nomor_telpon".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                _buildFrame3(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
