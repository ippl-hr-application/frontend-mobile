import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/profile/presentation/widget/card_profile.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                width: double.infinity,
                child: const CardProfile(),
              ),
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
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          )
                        ],
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
                              icon: const Icon(Icons.settings_outlined)),
                          const Text(
                            "Ganti Kata Sandi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          )
                        ],
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
                                fontWeight: FontWeight.bold, fontSize: 18.0),
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
      ),
      bottomNavigationBar: Container(
        child: const ButtomBar(),
      ),
    );
  }
}
