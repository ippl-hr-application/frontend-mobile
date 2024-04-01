import 'package:flutter/material.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/profile/presentation/screens/profile_page.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/DaftarPengajuanPage.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int currentIndex = 0;
  List pages = const [HomeScreen(), DaftarPengajuanScreen(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
          backgroundColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_sharp),
              label: 'pengajuan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Pengaturan',
            )
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
