import 'package:flutter/material.dart';
import 'package:meraih_mobile/models/kehadiran_model.dart';
import 'package:meraih_mobile/data/kehadiran.dart';

class RequestAttandance extends StatelessWidget {
  const RequestAttandance({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            child: Text("Kalender"),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
              ),
            ),
            child: Column(
              children: [
                for (KehadiranModel datas in statusKehadiran)
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 186, 186, 186)),
                      ),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                datas.time,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                datas.date,
                                style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                            child: Center(
                                child: Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Text(
                            datas.status,
                            style: TextStyle(
                                color: datas.status == "Check In"
                                    ? Colors.green[600]
                                    : Colors.red[400],
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )))
                      ],
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
