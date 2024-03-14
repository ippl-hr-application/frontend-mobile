import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/data/user_data.dart';
// import 'package:meraih_mobile/widgets/card_home.dart';
import 'package:meraih_mobile/models/user.model.dart';
// import 'package:meraih_mobile/providers.dart';
import 'package:meraih_mobile/widgets/card_attendance.dart';
// import 'package:meraih_mobile/widgets/card_attendance.dart';
import 'package:meraih_mobile/data/image_home.dart';
import 'package:meraih_mobile/models/image_model.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  // final UserModels place;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;
    final UserModels data = userData[0];

    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
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
                            data.name,
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
                          // const SizedBox(height: 20.0),
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
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pengumuman",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Lihat Semua',
                                // style: TextStyle(
                                //   color: Color.fromARGB(31, 12, 113, 235),
                                // ),
                              )
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Libur Imlek 14 February"),
                              Text("02 Feb 2023")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Komponen bagian absen
              Container(
                  margin:
                      const EdgeInsets.only(top: 90.0, left: 16.0, right: 16.0),
                  child: const CardAttendance()),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: ButtomBar(),
        ));
  }
}
