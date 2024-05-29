import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/profile/presentation/provider/profile_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/utils/format_date.dart';

class MyProfile extends ConsumerWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileData = ref.watch(profileProvider);

    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                context.go("/profile");
              },
            ),
            elevation: 0,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2)),
                Text(
                  "Data Diri",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
        body: profileData.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Text('Error: $error'),
            data: ((data) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    // Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    //   child: const Text(
                    //     "Informasi Pribadi",
                    //     style: TextStyle(
                    //         fontSize: 24.0, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    const SizedBox(height: 30.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Alamat",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Tanggal Masuk",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "jabatan",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Type Karyawan",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "No Telpon",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(width: 30.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '${data?.user?.firstName.toString()} ${data?.user?.lastName.toString()}',
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  data!.user!.email.toString(),
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  data!.user!.residentialAddress.toString(),
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  formatDate(data!.user!.join_date.toString()),
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  data!.user!.jobPosition!.name.toString(),
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  data!.user!.employmentStatus!.name.toString(),
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  data!.user!.phoneNumber.toString(),
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            })));
  }
}
