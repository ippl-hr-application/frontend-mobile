import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import "package:meraih_mobile/data/user_data.dart";
import "package:meraih_mobile/models/user.model.dart";

class CardAttendance extends StatelessWidget {
  const CardAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final UserModels data = userData[0];
    return Container(
        height: 330.0,
        width: screenWidth,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]),
        // padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
              width: screenWidth,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.5, color: Color.fromARGB(255, 186, 186, 186)),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(data.imageAsset),
                  const SizedBox(height: 6.0),
                  Text(
                    data.company,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    data.position,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
              width: screenWidth,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.5, color: Color.fromARGB(255, 186, 186, 186)),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(data.dateImage),
                    const SizedBox(width: 10.0),
                    Text(
                      data.date,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(
                  data.time,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {},
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 40.0),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(79, 199, 177, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                          // border: Border.all(color: Colors.black, width: 1.0)
                          ),
                      child: const Text('CHECK IN'))),
            )
          ],
        ));
  }
}
