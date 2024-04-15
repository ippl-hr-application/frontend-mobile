import 'package:flutter/material.dart';
import 'package:meraih_mobile/features/profile/presentation/screens/profile_page.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/DaftarPengajuanPage.dart';
import 'package:meraih_mobile/features/Homepage/presentation/screens/home_page.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _currentIndex = 0;

  List<Widget> pagesList = const [
    HomeScreen(),
    DaftarPengajuanScreen(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
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
            activeIcon: Icon(Icons.content_paste_sharp),
            icon: Icon(Icons.content_paste_sharp),
            label: 'pengajuan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pengaturan',
          )
        ],
      ),
    );
  }
}
