import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/profile/presentation/provider/profile_provider.dart';
import 'package:meraih_mobile/features/profile/presentation/widget/card_profile.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    bool result = await prefs.remove('token');

    if (result) {
      print('Token removed successfully');
      _showLogoutDialog(context); // Show the logout dialog
    } else {
      print('Failed to remove token');
    }
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Anda Telah Log Out'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                context.go('/login'); 
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileData = ref.watch(profileProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: Color.fromRGBO(32, 81, 229, 1),
        ),
      ),
      body: profileData.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Text('Error: $error'),
        data: ((data) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CardProfile(
                        firstName: data?.firstName,
                        lastName: data?.lastName,
                        positon: data?.jobPosition?.name),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
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
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 186, 186, 186)),
                                      ),
                                    ),
                                    child: const Text(
                                      "Data Diri",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        SizedBox(
                          width: double.infinity,
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
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 186, 186, 186)),
                                      ),
                                    ),
                                    child: const Text(
                                      "Ganti Kata Sandi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        SizedBox(
                          width: double.infinity,
                          child: InkWell(
                            onTap: () {
                              _logout(context);
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    iconSize: 35.0,
                                    onPressed: () {},
                                    icon: const Icon(Icons.logout)),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 186, 186, 186)),
                                      ),
                                    ),
                                    child: const Text(
                                      "Keluar",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: 2),
    );
  }
}
