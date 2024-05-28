import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/request_attandance.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/card_attandance_today.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/attendance_list.dart';
import 'package:meraih_mobile/features/attendance/presentation/provider/attancande_recap_provider.dart';
import 'package:meraih_mobile/features/attendance/presentation/provider/attandance_today_provider.dart';

class Attendance extends ConsumerStatefulWidget {
  const Attendance({super.key});

  @override
  ConsumerState<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends ConsumerState<Attendance> {
  String? selectAttandance = "Hari ini";

  @override
  Widget build(BuildContext context) {
    final attandanceToday = ref.watch(attandanceTodayProvider);
    final attandanceRecap =
        ref.watch(attandanceRecapProvider as ProviderListenable);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            context.go("/");
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
                  "Kehadiran",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          selectAttandance = "Hari ini";
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: selectAttandance == "Hari ini"
                            ? const Color.fromRGBO(32, 81, 229, 1)
                            : Colors.transparent,
                      ),
                      child: Text(
                        "Hari ini",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: selectAttandance == "Hari ini"
                              ? Colors.white // Warna putih jika dipilih
                              : Colors.black,
                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          selectAttandance = "Kehadiran";
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: selectAttandance == "Kehadiran"
                            ? const Color.fromRGBO(32, 81, 229, 1)
                            : Colors.transparent,
                      ),
                      child: Text(
                        "Kehadiran",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: selectAttandance == "Kehadiran"
                              ? Colors.white // Warna putih jika dipilih
                              : Colors.black,
                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          selectAttandance = "Request";
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: selectAttandance == "Request"
                            ? const Color.fromRGBO(32, 81, 229, 1)
                            : Colors.transparent,
                      ),
                      child: Text(
                        "Request",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: selectAttandance == "Request"
                              ? Colors.white // Warna putih jika dipilih
                              : Colors.black,
                        ),
                      )),
                ],
              ),
            ),
            selectAttandance == "Hari ini"
                ? attandanceToday.when(
                    data: (attandanceToday) => Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 16.0),
                      child:
                          CardAttandanceToday(attandanceToday: attandanceToday),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stack) =>
                        Center(child: Text('Error: $error')),
                  )
                : selectAttandance == "Kehadiran"
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 16.0),
                        child: const AttendanceList())
                    : selectAttandance == "Request"
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 16.0),
                            child: const ShowRequestAttandance())
                        : Container(),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: selectAttandance == "Request",
        child: FloatingActionButton(
          onPressed: () {
            context.go("/attandance-request");
          },
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
          child: const Icon(
            Icons.add,
            weight: 4.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
