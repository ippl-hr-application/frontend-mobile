import 'package:flutter/material.dart';
import 'package:meraih_mobile/models/user.model.dart';
import 'package:meraih_mobile/data/user_data.dart';
import 'package:meraih_mobile/models/kehadiran_model.dart';
import 'package:meraih_mobile/data/kehadiran.dart';

class CardAttandanceToday extends StatelessWidget {
  const CardAttandanceToday({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModels data = userData[0];
    return SizedBox(
      width: double.infinity,
      // padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
                        data.date,
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
              Text(
                data.time,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(height: 35.0),
        Column(
          children: [
            for (KehadiranModel datas in statusKehadiran)
              Container(
                padding: EdgeInsets.symmetric(vertical: 14.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
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
                                fontSize: 18.0, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            datas.date,
                            style: const TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.normal),
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
        )
      ]),
    );
  }
}
