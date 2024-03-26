import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/profile/presentation/provider/profile_provider.dart';
import 'package:meraih_mobile/features/profile/presentation/widget/card_profile.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';
import 'package:go_router/go_router.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileData = ref.watch(profileProvider);

    return Scaffold(
      body: profileData.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Text('Error: $error'),
        data: ((data) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 50.0),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      width: double.infinity,
                      child: CardProfile(
                          firstName: data?.firstName,
                          lastName: data?.lastName,
                          positon: data?.jobPosition?.name)),
                  const SizedBox(height: 50.0),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 1.0,
                                  color: Color.fromARGB(255, 186, 186, 186)),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              context.go('/my-profile');
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    iconSize: 35.0,
                                    onPressed: () {},
                                    icon: const Icon(Icons.person_outlined)),
                                const Text(
                                  "Profile Saya",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 1.0,
                                  color: Color.fromARGB(255, 186, 186, 186)),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              context.go('/change-password');
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    iconSize: 35.0,
                                    onPressed: () {},
                                    icon: const Icon(Icons.settings_outlined)),
                                const Text(
                                  "Ganti Kata Sandi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 1.0,
                                  color: Color.fromARGB(255, 186, 186, 186)),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  iconSize: 35.0,
                                  onPressed: () {},
                                  icon: const Icon(Icons.person_outlined)),
                              const Text(
                                "Keluar",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: Container(
        child: const ButtomBar(),
      ),
    );
  }
}
