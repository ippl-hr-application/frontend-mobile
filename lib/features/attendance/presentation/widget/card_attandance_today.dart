import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:meraih_mobile/features/attendance/domain/attandance_today.dart';
import 'package:meraih_mobile/models/user.model.dart';
import 'package:meraih_mobile/data/user_data.dart';
import 'package:meraih_mobile/models/kehadiran_model.dart';
import 'package:meraih_mobile/data/kehadiran.dart';
import 'package:meraih_mobile/utils/format_date.dart';
import 'package:meraih_mobile/utils/format_time.dart';
import 'package:meraih_mobile/utils/format_time.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardAttandanceToday extends StatelessWidget {
  final DataResponse? attandanceToday;

  const CardAttandanceToday({required this.attandanceToday, super.key});

  @override
  Widget build(BuildContext context) {
    if (attandanceToday == null) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black, width: 0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No data available",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black, width: 0.8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/date.png'),
                      const SizedBox(width: 8.0),
                      Text(
                        formatDate(attandanceToday!.date.toString()),
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    attandanceToday?.from?.toString() ?? "-",
                    style: const TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "-",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    attandanceToday?.to?.toString() ?? "-",
                    style: const TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 35.0),
        attandanceToday?.checks != null && attandanceToday!.checks!.isNotEmpty
            ? Column(
                children: attandanceToday!.checks!.map((check) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 186, 186, 186),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                formatTime(check.time.toString()),
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                check.status.toString(),
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Text(
                                check.type.toString(),
                                style: TextStyle(
                                  color: check.type.toString() == "CHECK_IN"
                                      ? Colors.green[400]
                                      : Colors.red[400],
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            : const Center(
                child: Text(
                  "Belum ada absensi hari ini",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
      ]),
    );
  }
}
