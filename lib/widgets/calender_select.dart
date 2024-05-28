// import 'package:calendar_date_picker2/calendar_date_picker2.dart';
// import 'package:flutter/widgets.dart';

// Widget calenderSelect(BuildContext context) {
//   return SizedBox(
//     height: 350,
//     width: 342,
//     child: Stack(
//       alignment: Alignment.center,
//       children: [
//         const Align(
//           alignment: Alignment.topRight,
//           child: Padding(
//             padding: EdgeInsets.only(
//               top: 58,
//               right: 59,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               mainAxisSize: MainAxisSize.min,
//               children: [],
//             ),
//           ),
//         ),
//         Align(
//           alignment: Alignment.center,
//           child: CalendarDatePicker2(
//             config: CalendarDatePicker2Config(
//               calendarType: CalendarDatePicker2Type.single,
//               firstDate: DateTime(DateTime.now().year - 5),
//               lastDate: DateTime(DateTime.now().year + 5),
//               firstDayOfWeek: 0,
//               dayTextStyle: const TextStyle(
//                 color: Color(0XFF37474F),
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             initialValue: [],
//           ),
//         ),
//       ],
//     ),
//   );
// }
