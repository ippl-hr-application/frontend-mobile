import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/widgets/calender_select.dart';
import 'package:meraih_mobile/widgets/card_absensi.dart';

class AbsensiPage extends ConsumerStatefulWidget {
  const AbsensiPage({super.key});

  @override
  AbsensiPageState createState() => AbsensiPageState();
}

class AbsensiPageState extends ConsumerState<AbsensiPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                top: 15,
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
        body: SizedBox(
          width: 411,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 8.0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 186, 186, 186)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Hari Ini",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Kehadiran",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Request",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 31,
                    right: 26,
                  ),
                  child: Column(
                    children: [
                      cardAbsensi(context),
                      const SizedBox(height: 12),
                      // calenderSelect(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
