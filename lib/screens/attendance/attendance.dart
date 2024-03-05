import 'package:flutter/material.dart';
import 'package:meraih_mobile/screens/attendance/widget/card_attandance_today.dart';

class TaskWork extends StatelessWidget {
  const TaskWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
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
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: const CardAttandanceToday(),
              ),
              Container()
            ],
          ),
        ));
  }
}
