import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/data/bottom_bar.dart';
import 'package:meraih_mobile/data/pengajuan.dart';
import 'package:meraih_mobile/models/buttom_app_model.dart';
import 'package:meraih_mobile/models/pengajuan.dart';
import 'package:meraih_mobile/widgets/daftarPengajuan/custom_icon_button.dart';
import 'package:meraih_mobile/widgets/daftarPengajuan/popUpFilterPengajuan.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/submission_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/submission_item.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DaftarPengajuanScreen extends ConsumerStatefulWidget {
  const DaftarPengajuanScreen({super.key});

  @override
  ConsumerState<DaftarPengajuanScreen> createState() =>
      _DaftarPengajuanScreenState();
}

class _DaftarPengajuanScreenState extends ConsumerState<DaftarPengajuanScreen> {
  String showYears = 'Pilih Tahun';
  DateTime _selectedYear = DateTime.now();
  bool _isPlusIcon = true;

  late String year;
  late String month;
  late String status;

  @override
  void initState() {
    super.initState();
    final currentDate = DateTime.now();
    year = currentDate.year.toString();
    month = currentDate.month.toString().padLeft(2, '0');
    status = 'PENDING';
  }

  @override
  Widget build(BuildContext context) {
    print(month);

    final submissionHistoryData = ref.read(submissionProvider({
      'year': year,
      'month': month,
      'status': status,
    }));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        title: const Center(
            child: Text(
          "Pengajuan",
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w500),
        )),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 60.0,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(32, 81, 229, 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    // width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 0.8),
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 10.0),
                    // width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          showYears,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                selectYear(context);
                              },
                              child: const Icon(Icons.calendar_month),
                            ),
                            const SizedBox(width: 10.0),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                CustomIconButton(
                    height: 38,
                    width: 44,
                    // padding: const EdgeInsets.all(9),
                    onTap: () {
                      onTapBtnPrefixIcon(context);
                    },
                    child: const Icon(Icons.filter_list_alt)),
              ],
            ),
          ),
          Expanded(
            child: Container(
                // color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: submissionHistoryData.when(
                  data: (data) {
                    if (data == null || data.isEmpty) {
                      return const Center(
                        child: Text(
                          "Anda belum Melakukan pengajuan",
                        ),
                      );
                    } else {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, int index) {
                          return SubmissionItem(
                            submissionId: data[index].submission_id,
                            submissionDate: data[index].submission_date,
                            status: data[index].status,
                            type: data[index].type,
                          );
                        },
                      );
                    }
                  },
                  error: (error, stackTrace) =>
                      Center(child: Text('Error: $error')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                )),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            onTap: () {
              context.go('/izin');
            },
            child: const Icon(
              Icons.note_alt_outlined,
              color: Colors.white,
            ),
            label: 'Izin',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
          SpeedDialChild(
            onTap: () {
              context.go('/cuti');
            },
            child: const Icon(
              Icons.date_range_outlined,
              color: Colors.white,
            ),
            label: 'Cuti',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
          SpeedDialChild(
            onTap: () {
              context.go('/sick');
            },
            child: const Icon(
              Icons.health_and_safety_outlined,
              color: Colors.white,
            ),
            label: 'Sakit',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
          SpeedDialChild(
            onTap: () {
              context.go('/resign');
            },
            child: const Icon(
              Icons.leave_bags_at_home_outlined,
              color: Colors.white,
            ),
            label: 'Resign',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
          SpeedDialChild(
            onTap: () {
              context.go('/change-shift');
            },
            child: const Icon(
              Icons.leave_bags_at_home_outlined,
              color: Colors.white,
            ),
            label: 'Ganti Shift',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
          SpeedDialChild(
            onTap: () {
              context.go('/mutasi');
            },
            child: const Icon(
              Icons.leave_bags_at_home_outlined,
              color: Colors.white,
            ),
            label: 'Mutasi',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
        ],
      ),
      bottomNavigationBar: const ButtomBar(),
      // bottomNavigationBar: Container(
      //   child: const ButtomBar(),
      // ),
    );
  }

  onTapBtnPrefixIcon(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
      builder: (BuildContext context) {
        return const SizedBox(
          // decoration: const BoxDecoration(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(16.0),
          //     topRight: Radius.circular(16.0),
          //   ),
          // ),
          child:
              const PopUpFilterScreen(), // Ganti dengan widget layar aktual Anda
        ); // Replace with your actual screen widget
      },
    );
  }

  selectYear(contex) async {
    // print("calling date picker");
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Center(child: Text("Pilih Tahun")),
              content: SizedBox(
                  width: 300,
                  height: 300,
                  child: YearPicker(
                    firstDate: DateTime(DateTime.now().year - 5, 1),
                    // lastDate: DateTime.now(),
                    lastDate: DateTime.now(),
                    // ignore: deprecated_member_use
                    initialDate: DateTime.now(),
                    selectedDate: _selectedYear,
                    onChanged: (DateTime dateTime) {
                      setState(() {
                        _selectedYear = dateTime;
                        showYears = "${dateTime.year}";
                      });
                      Navigator.pop(context);
                    },
                  )));
        });
  }
}
