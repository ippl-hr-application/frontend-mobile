// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'dart:io' show File;
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'package:go_router/go_router.dart';
// import 'camera_state.dart';
// import 'package:intl/intl.dart';

// class ReviewPictureScreen extends ConsumerWidget {
//   const ReviewPictureScreen({super.key});

//   Future<void> _postToBackend(BuildContext context, WidgetRef ref) async {
//     final cameraState = ref.watch(cameraStateProvider);

//     // Simulate a post request
//     await Future.delayed(const Duration(seconds: 2));

//     print("Post to backend with the following data:");
//     print("Location: ${cameraState.location}");
//     print("Description: ${cameraState.description}");
//     print("Image Path: ${cameraState.imagePath}");
//     print("Timestamp: ${cameraState.timestamp}");

//     // Clear the state after posting
//     ref.read(cameraStateProvider.notifier).clear();

//     // Navigate to the success page
//     context.go('/checkin-success');
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final cameraState = ref.watch(cameraStateProvider);

//     Widget displayImage;
//     if (kIsWeb) {
//       displayImage = cameraState.imagePath != null
//           ? Image.network(cameraState.imagePath!)
//           : Container();
//     } else {
//       displayImage = cameraState.imagePath != null
//           ? Image.file(File(cameraState.imagePath!))
//           : Container();
//     }

//     String formattedTimestamp = '';
//     if (cameraState.timestamp != null) {
//       formattedTimestamp = DateFormat('EEEE, d MMMM yyyy, HH:mm:ss').format(cameraState.timestamp!);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
//         title: Row(
//           children: [
//             IconButton(
//               icon: const Icon(Icons.arrow_back, color: Colors.white),
//               onPressed: () {
//                 context.go('/checkin-prove');
//               },
//             ),
//             const Center(
//               child: Text(
//                 'Review Bukti Kehadiran',
//                 style: TextStyle(color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: displayImage,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Lokasi:',
//                         style: Theme.of(context).textTheme.headline6,
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         cameraState.location,
//                         style: Theme.of(context).textTheme.bodyText2,
//                       ),
//                       const SizedBox(height: 16),
//                       Text(
//                         'Keterangan Tambahan:',
//                         style: Theme.of(context).textTheme.headline6,
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         cameraState.description,
//                         style: Theme.of(context).textTheme.bodyText2,
//                       ),
//                       const SizedBox(height: 16),
//                       Text(
//                         'Waktu Pengambilan Foto:',
//                         style: Theme.of(context).textTheme.headline6,
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         formattedTimestamp,
//                         style: Theme.of(context).textTheme.bodyText2,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () async {
//                   await _postToBackend(context, ref);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
//                 ),
//                 child: const Text(
//                   'Submit',
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
