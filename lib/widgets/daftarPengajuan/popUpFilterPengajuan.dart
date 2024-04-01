import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'custom_checkbox_button.dart';
import 'custom_radio_button.dart';
// import 'notifier/pop_up_filter_notifier.dart';
import 'package:flutter/material.dart';

class PopUpFilterScreen extends StatefulWidget {
  const PopUpFilterScreen({super.key});

  @override
  PopUpFilterScreenState createState() => PopUpFilterScreenState();
}

class PopUpFilterScreenState extends State<PopUpFilterScreen> {
  // bool isIconClose = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      // width: 398,
      padding: const EdgeInsets.symmetric(
        horizontal: 38,
        vertical: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Status pengajuan",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // context.go('/submission')
                },
                child: Container(
                  height: 20,
                  // width: double.infinity,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(right: 1),
                  child: const Icon(Icons.close),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20.0),
          _buildDalamProses(context),
          const SizedBox(height: 10),
          _buildDiTolak(context),
          const SizedBox(height: 10),
          _buildDiTerima(context),
          const SizedBox(height: 15),
          // const Padding(
          //   padding: EdgeInsets.only(left: 1),
          //   child: Text(
          //     "Keterangan Pengajuan",
          //     style: TextStyle(
          //       color: Color(0XFF000000),
          //       fontSize: 20,
          //       fontFamily: 'Open Sans',
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 16),
          // _buildStatusPengajuan(context),
        ],
      ),
    ));
  }

  /// Section Widget
  Widget _buildDalamProses(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomCheckboxButton(
            text: "dalam proses",
            value: true,
            padding: const EdgeInsets.symmetric(vertical: 4),
            onChange: (value) {},
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDiTolak(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomCheckboxButton(
            text: "ditolak",
            value: true,
            padding: const EdgeInsets.symmetric(vertical: 4),
            onChange: (value) {},
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDiTerima(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomCheckboxButton(
            text: "diterima",
            value: true,
            padding: const EdgeInsets.symmetric(vertical: 4),
            onChange: (value) {},
          );
        },
      ),
    );
  }

  /// Section Widget
  // Widget _buildStatusPengajuan(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.only(
  //       left: 5,
  //       right: 230,
  //     ),
  //     child: Consumer(
  //       builder: (context, ref, _) {
  //         return Column(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.only(right: 27),
  //               child: CustomRadioButton(
  //                 text: "izin",
  //                 value: "true",
  //                 groupValue: "statusPengajuan",
  //                 padding: const EdgeInsets.symmetric(vertical: 2),
  //                 onChange: (value) {},
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(
  //                 top: 10,
  //                 right: 18,
  //               ),
  //               child: CustomRadioButton(
  //                 text: "sakit",
  //                 value: "",
  //                 groupValue: "statusPengajuan",
  //                 padding: const EdgeInsets.symmetric(vertical: 2),
  //                 onChange: (value) {},
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(
  //                 top: 10,
  //                 right: 20,
  //               ),
  //               child: CustomRadioButton(
  //                 text: "shift",
  //                 value: "",
  //                 groupValue: "statusPengajuan",
  //                 padding: const EdgeInsets.symmetric(vertical: 2),
  //                 onChange: (value) {},
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(
  //                 top: 10,
  //                 right: 7,
  //               ),
  //               child: CustomRadioButton(
  //                 text: "mutasi",
  //                 value: "",
  //                 groupValue: "statusPengajuan",
  //                 padding: const EdgeInsets.symmetric(vertical: 2),
  //                 onChange: (value) {},
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(top: 10),
  //               child: CustomRadioButton(
  //                 text: "lembur",
  //                 value: "",
  //                 groupValue: "statusPengajuan",
  //                 padding: const EdgeInsets.symmetric(vertical: 2),
  //                 onChange: (value) {},
  //               ),
  //             ),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  // }
}
