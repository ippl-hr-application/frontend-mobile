import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/widgets.dart';
import 'package:meraih_mobile/features/payroll/presentation/provider/payroll_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/payroll/presentation/widget/card_payroll.dart';

class PayrollPage extends ConsumerStatefulWidget {
  const PayrollPage({super.key});

  @override
  ConsumerState<PayrollPage> createState() => _PayrollPageState();
}

class _PayrollPageState extends ConsumerState<PayrollPage> {
  String year = 'Pilih Tahun';
  DateTime _selectedYear = DateTime.now();

  @override
  Widget build(BuildContext context) {
    print(year);
    final payrollHistory = ref.read(payrollProvider({'year': year}));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              context.go('/');
            },
          ),
          flexibleSpace: const Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 40,
                child: Center(
                  child: Text(
                    "Pengajuan Izin",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 20.0),
                color: const Color.fromRGBO(32, 81, 229, 1),
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
                        year,
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

              Container(
                padding: EdgeInsets.only(
                    top: 16.0, left: 20.0, right: 20.0, bottom: 0.0),
                child: PayrollItem(),
              )

              // Container(
              //   child: payrollHistory.when(
              //     data: (data) {
              //       final payrolls = data.data?.payrolls ?? [];

              //       if (payrolls == null || payrolls.isEmpty) {
              //         return const Center(
              //           child: Text(
              //             "Gaji tidak ditemukan",
              //           ),
              //         );
              //       } else {
              //         return ListView.builder(
              //           scrollDirection: Axis.vertical,
              //           shrinkWrap: true,
              //           itemCount: payrolls.length,
              //           itemBuilder: (context, int index) {

              //             return PayrollItem(
              //               month: payroll[index].

              //               );
              //           },
              //         );
              //       }
              //     },
              //     error: (error, stackTrace) =>
              //         Center(child: Text('Error: $error')),
              //     loading: () =>
              //         const Center(child: CircularProgressIndicator()),
              //   ),
              // )
            ],
          ),
        )
        // floatingActionButton: SpeedDial(
        //   backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        //   icon: Icons.file_download,
        //   foregroundColor: Colors.white,
        // )
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
                        year = "${dateTime.year}";
                      });
                      Navigator.pop(context);
                    },
                  )));
        });
  }
}
