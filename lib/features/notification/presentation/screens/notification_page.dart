// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:meraih_mobile/widgets/card_app_bar.dart';

// class Notif_Page extends StatelessWidget {
//   const Notif_Page({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             context.go('/');
//           },
//         ),
//         flexibleSpace: const Stack(
//           children: [
//             Positioned(
//               left: 0,
//               right: 0,
//               top: 40,
//               child: Center(
//                 child: Text(
//                   "Notifikasi",
//                   style: TextStyle(fontSize: 18.0, color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: notifList.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               elevation: 4,
//               child: ListTile(
//                 leading: Icon(Icons.notifications),
//                 title: Text(notifList[index].title),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(notifList[index].subtitle),
//                     Text(
//                       notifList[index].content,
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 trailing: Text(
//                     notifList[index].timestamp), // Trailing untuk timestamp
//               ),
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: Container(
//         child: const ButtomBar(),
//       ),
//     );
//   }
// }

// class Notification {
//   final String title;
//   final String subtitle;
//   final String content;
//   final String timestamp;

//   Notification({
//     required this.title,
//     required this.subtitle,
//     required this.content,
//     required this.timestamp,
//   });
// }

// final List<Notification> notifList = [
//   Notification(
//     title: "Judul Notifikasi 1",
//     subtitle: "Subjudul Notifikasi 1",
//     content: "Isi Notifikasi 1",
//     timestamp: "27 Maret 2024, 10:00",
//   ),
//   Notification(
//     title: "Judul Notifikasi 2",
//     subtitle: "Subjudul Notifikasi 2",
//     content: "Isi Notifikasi 2",
//     timestamp: "27 Maret 2024, 10:30",
//   ),
// ];
