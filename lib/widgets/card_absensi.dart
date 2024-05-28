import 'package:flutter/widgets.dart';

Widget cardAbsensi(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 56,
      vertical: 15,
    ),
    decoration: BoxDecoration(
      color: const Color(0XFFFFFFFF),
      border: Border.all(
        color: const Color(0XFF000000),
        width: 4,
      ),
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
    child: const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hadir",
                  style: TextStyle(
                    color: Color(0XFFAAAAAA),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Absen",
                  style: TextStyle(
                    color: Color(0XFFAAAAAA),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(
            left: 23,
            right: 17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "30",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "0",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
