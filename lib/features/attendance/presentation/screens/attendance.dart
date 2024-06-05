import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/request_attandance.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/card_attandance_today.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/attendance/presentation/widget/attendance_list.dart';
import 'package:meraih_mobile/features/attendance/presentation/provider/attancande_recap_provider.dart';
import 'package:meraih_mobile/features/attendance/presentation/provider/attandance_today_provider.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/request_attandance.dart';

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                "Kehadiran",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ],
          )),
      body: Column(
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
                            ? Colors.white
                            : Colors.black,
                      ),
                    )),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: selectAttandance == "Hari ini"
                  ? attandanceToday.when(
                      data: (attandanceToday) => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 16.0),
                        child: CardAttandanceToday(
                            attandanceToday: attandanceToday),
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
                              child: const RequestAttandance())
                          : Container(),
            ),
          )
        ],
      ),
    );
  }
}
