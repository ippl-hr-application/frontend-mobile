import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/widgets.dart';
import 'package:meraih_mobile/features/payroll/domain/payroll_domain.dart';
import 'package:meraih_mobile/features/payroll/presentation/provider/payroll_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/payroll/presentation/widget/card_payroll.dart';

class PayrollPage extends ConsumerStatefulWidget {
  const PayrollPage({super.key});

  @override
  ConsumerState<PayrollPage> createState() => _PayrollPageState();
}

class _PayrollPageState extends ConsumerState<PayrollPage> {
  late String year;
  late Future<dynamic> payrollData;
  DateTime _selectedYear = DateTime.now();

  @override
  void initState() {
    super.initState();
    final currentDate = DateTime.now();
    year = currentDate.year.toString();
    _fetchData();
  }

  void _fetchData() {
    payrollData = ref.read(payrollProvider({'year': year}).future);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                context.go("/");
              },
            ),
            elevation: 0,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2)),
                Text(
                  "Slip Gaji",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ],
            )),
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
              const SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 0.5),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(32, 81, 229, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        // color: const Color.fromRGBO(32, 81, 229, 1),
                        child: Table(
                          columnWidths: const {
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(1),
                            2: FlexColumnWidth(1),
                          },
                          border: const TableBorder(
                            horizontalInside:
                                BorderSide(color: Colors.white, width: 0.5),
                          ),
                          children: const [
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Bulan",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Status",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Total",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ])
                          ],
                        ),
                      ),
                      Container(
                        child: FutureBuilder(
                            future: payrollData,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
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
                                        child: Text("Belum Ada History Gaji")),
                                  );
                                } else {
                                  return ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: snapshot.data.length,
                                      itemBuilder: (context, int index) {
                                        return PayrollItem(
                                          month: snapshot.data[index].month,
                                          status: snapshot.data[index].status,
                                          wage: snapshot.data[index].wage,
                                        );
                                      });
                                }
                              }
                            }),
                      )
                    ],
                  ),
                ),
              )
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
                        _fetchData();
                      });
                      Navigator.pop(context);
                    },
                  )));
        });
  }
}
