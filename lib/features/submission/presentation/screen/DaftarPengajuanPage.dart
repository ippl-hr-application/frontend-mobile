import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:meraih_mobile/data/bottom_bar.dart';
import 'package:meraih_mobile/models/buttom_app_model.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';
import 'package:meraih_mobile/widgets/daftarPengajuan/custom_icon_button.dart';
import 'package:meraih_mobile/widgets/daftarPengajuan/popUpFilterPengajuan.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/submission_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/submission_item.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:month_year_picker/month_year_picker.dart';

class DaftarPengajuanScreen extends ConsumerStatefulWidget {
  const DaftarPengajuanScreen({super.key});

  @override
  ConsumerState<DaftarPengajuanScreen> createState() =>
      _DaftarPengajuanScreenState();
}

class _DaftarPengajuanScreenState extends ConsumerState<DaftarPengajuanScreen> {
  DateTime _selectedYearMonth = DateTime.now();
  String year = DateTime.now().year.toString();
  String month = DateTime.now().month.toString().padLeft(2, '0');
  String status = '';

  String showYearMonth = "Bulan ini";
  late Future<dynamic> submissionHistoryData;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    submissionHistoryData = ref.read(submissionProvider({
      'year': year,
      'month': month,
      'status': status,
    }).future);
  }

  Future<void> _selectYearMonth(BuildContext context) async {
    final DateTime? picked = await showMonthYearPicker(
      context: context,
      initialDate: _selectedYearMonth,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (picked != null && picked != _selectedYearMonth) {
      setState(() {
        _selectedYearMonth = picked;
        year = picked.year.toString();
        month = picked.month.toString().padLeft(2, '0');
        showYearMonth =
            "${picked.year}/${picked.month.toString().padLeft(2, '0')}";
        _fetchData();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _refresh() async {
      _fetchData();
      setState(() {});
      await Future.delayed(Duration());
    }

    return RefreshIndicator(
      onRefresh: _refresh,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
          title: const Center(
              child: Text(
            "Pengajuan",
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.w500),
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 0.8),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            showYearMonth,
                            style: const TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _selectYearMonth(context);
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
                      onTap: () {
                        onTapBtnPrefixIcon(context);
                      },
                      child: const Icon(Icons.filter_list_alt)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: FutureBuilder(
                    future: submissionHistoryData,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        if (snapshot.data.isEmpty) {
                          return Center(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 0.0),
                                child: Text("Belum Ada History Pengajuan")),
                          );
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, int index) {
                                return SubmissionItem(
                                  submissionId:
                                      snapshot.data[index].submission_id,
                                  submissionDate:
                                      snapshot.data[index].submission_date,
                                  status: snapshot.data[index].status,
                                  type: snapshot.data[index].type,
                                );
                              });
                        }
                      }
                    },
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
                Icons.swap_horiz,
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
                Icons.swap_horiz,
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
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: 1,
        ),
      ),
    );
  }

  onTapBtnPrefixIcon(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
      builder: (BuildContext context) {
        return SizedBox(
          child: PopUpFilterScreen(
            onFilterChanged: (newStatus) {
              setState(() {
                status = newStatus;
                _fetchData();
              });
            },
          ),
        );
      },
    );
  }
}
