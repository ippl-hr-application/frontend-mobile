// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'dart:io' show File;
// // import 'package:flutter/foundation.dart' show kIsWeb;
// // import 'package:go_router/go_router.dart';
// // import 'package:meraih_mobile/features/attendance/domain/checkin.dart';
// // import 'package:meraih_mobile/features/attendance/domain/checkout.dart';
// // import 'package:meraih_mobile/features/attendance/presentation/provider/attandance_today_provider.dart';
// // import 'package:meraih_mobile/features/attendance/presentation/provider/checkin_provider.dart';
// // import 'package:meraih_mobile/features/attendance/presentation/provider/checkout_provider.dart';
// // import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';
// // import 'camera_state.dart';
// // import 'package:intl/intl.dart';

// // class ReviewPictureScreen extends ConsumerWidget {
// //   const ReviewPictureScreen({super.key});

// //   Future<void> _postCheckInToBackend(
// //       BuildContext context, WidgetRef ref) async {
// //     final cameraState = ref.watch(cameraStateProvider);

//     try {
//       await handleCheckin(
//           ref,
//           CheckinRequest(
//             attendance_file: File(cameraState.imagePath ?? ''),
//           ));
//       // Clear the state after posting
//       ref.read(cameraStateProvider.notifier).clear();
//       // Navigate to the success page
//       context.go('/checkin-success');
//     } catch (e) {
//       // Handle errors if any
//       print('Error during check-in: $e');
//     }
//   }

// //   Future<void> _postCheckOutToBackend(
// //       BuildContext context, WidgetRef ref) async {
// //     final cameraState = ref.watch(cameraStateProvider);

//     try {
//       // Simulate a post request
//       await Future.delayed(const Duration(seconds: 2));
//       await handleCheckout(
//           ref,
//           CheckoutRequest(
//             attendance_file: File(cameraState.imagePath ?? ''),
//           ));
//       // Clear the state after posting
//       ref.read(cameraStateProvider.notifier).clear();
//       // Navigate to the success page
//       context.go('/checkout-success');
//     } catch (e) {
//       // Handle errors if any
//       print('Error during check-out: $e');
//     }
//   }

// //   @override
// //   Widget build(BuildContext context, WidgetRef ref) {
// //     final cameraState = ref.watch(cameraStateProvider);
// //     final homeHistoryDataAsyncValue = ref.watch(attandanceTodayProvider);

// //     Widget displayImage;
// //     if (kIsWeb) {
// //       displayImage = cameraState.imagePath != null
// //           ? Image.network(cameraState.imagePath!)
// //           : Container();
// //     } else {
// //       displayImage = cameraState.imagePath != null
// //           ? Image.file(File(cameraState.imagePath!))
// //           : Container();
// //     }

//     String formattedTimestamp = '';
//     if (cameraState.timestamp != null) {
//       formattedTimestamp = DateFormat('EEEE, d MMMM yyyy, HH:mm:ss')
//           .format(cameraState.timestamp!);
//     }
//     print(cameraState.imagePath);
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
//                         style: Theme.of(context).textTheme.titleLarge,
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         cameraState.location,
//                         style: Theme.of(context).textTheme.bodyMedium,
//                       ),
                  
//                       const SizedBox(height: 16),
//                       Text(
//                         'Waktu Pengambilan Foto:',
//                         style: Theme.of(context).textTheme.titleLarge,
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         formattedTimestamp,
//                         style: Theme.of(context).textTheme.bodyMedium,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               homeHistoryDataAsyncValue.when(
//                 data: (data) {
//                   return Column(
//                     children: [
//                       data!.attendanceId == null
//                           ? SizedBox(
//                               width: double.infinity,
//                               child: ElevatedButton(
//                                 onPressed: () async {
//                                   await _postCheckInToBackend(context, ref);
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 16),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   backgroundColor:
//                                       const Color.fromRGBO(32, 81, 229, 1),
//                                 ),
//                                 child: const Text(
//                                   'Submit Check In',
//                                   style: TextStyle(
//                                       fontSize: 18, color: Colors.white),
//                                 ),
//                               ),
//                             )
//                           : SizedBox(
//                               width: double.infinity,
//                               child: ElevatedButton(
//                                 onPressed: () async {
//                                   await _postCheckOutToBackend(context, ref);
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 16),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   backgroundColor: Colors.red,
//                                 ),
//                                 child: const Text(
//                                   'Submit Check Out',
//                                   style: TextStyle(
//                                       fontSize: 18, color: Colors.white),
//                                 ),
//                               ),
//                             ),
//                     ],
//                   );
//                 },
//                 loading: () => const Center(child: CircularProgressIndicator()),
//                 error: (error, stackTrace) =>
//                     const Center(child: Text('Error loading attendance data')),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
