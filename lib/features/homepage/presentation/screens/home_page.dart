import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/attendance/presentation/provider/attandance_today_provider.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/utils/auth.dart';
import 'package:meraih_mobile/widgets/card_attendance.dart';
import 'package:meraih_mobile/data/image_home.dart';
import 'package:meraih_mobile/models/image_model.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/utils/format_date.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';
import 'package:meraih_mobile/widgets/dialog_redirect.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/announcment_provider.dart';
  

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;
    final homeHistoryData = ref.watch(homeProvider);
    final announcmentData = ref.watch(announcmentProvider);
    final homeHistoryDataAsyncValue = ref.watch(attandanceTodayProvider);
    final authProvider = ref.watch(authTokenProvider);
    final attendanceToday = ref.watch(attandanceTodayProvider);

    if (authProvider == null || AuthUtils.isTokenExpired(authProvider)) {
      return const DialogRedirect();
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: Color.fromRGBO(32, 81, 229, 1),
        ),
      ),
      body: homeHistoryData.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: ((data) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        height: 250.0,
                        width: screenWidth,
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(32, 81, 229, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data?.employeeName ?? "",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            const Text(
                              "Jangan Lupa Absen Hari ini!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 200.0),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (ImageModel feature in imageHome)
                              InkWell(
                                onTap: () {
                                  context.go(feature.path);
                                },
                                child: Column(
                                  children: [
                                    Image.asset(feature.imageAssets),
                                    Text(
                                      feature.category,
                                      style: const TextStyle(fontSize: 13.0),
                                    )
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pengumuman",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                // Text(
                                //   'Lihat Semua',
                                //   // style: TextStyle(
                                //   //   color: Color.fromARGB(31, 12, 113, 235),
                                //   // ),
                                // )
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Container(
                              child: announcmentData.when(
                                data: (data) {
                                  return Column(
                                    children: data!
                                        .map((e) => Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Wrap(
                                                      children: [
                                                        Text(
                                                          e.title ?? "-",
                                                          style:
                                                              const TextStyle(
                                                                  fontSize:
                                                                      16.0),
                                                          overflow: TextOverflow
                                                              .visible, // Pastikan teks terpotong jika terlalu panjang
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      width:
                                                          10.0), // Memberikan jarak antara title dan date
                                                  Text(
                                                    formatDate(e.date ?? "-"),
                                                    style: const TextStyle(
                                                        fontSize: 16.0),
                                                  ),
                                                ],
                                              ),
                                            ))
                                        .toList(),
                                  );
                                },
                                error: (error, stackTrace) =>
                                    Center(child: Text('Error: $error')),
                                loading: () => const Center(
                                    child: CircularProgressIndicator()),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Komponen bagian absen
                  Container(
                      margin: const EdgeInsets.only(
                          top: 90.0, left: 16.0, right: 16.0),
                      child: CardAttendance(
                          companyName: data?.companyName,
                          date: data?.date,
                          from: data?.from,
                          to: data?.to,
                          jobPosition: data?.jobPosition,
                          idAttendance: homeHistoryDataAsyncValue
                              .asData?.value?.attendanceId
                              .toString())),
                ],
              ),
            ),
          );
        }),
        error: (Object error, StackTrace stackTrace) {
          return const DialogRedirect();
        },
      ),
      bottomNavigationBar: const ButtomBar(),
    );
  }
}
