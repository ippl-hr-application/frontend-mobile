import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtomBar extends StatelessWidget {
  const ButtomBar({super.key});

  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      selectedItemColor: Colors.blue,
      onTap: (int index) {
        _handleNavigation(context, index);
      },
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
    );
  }

  void _handleNavigation(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/login');
        break;
      case 2:
        context.go('/submission');
        break;
      case 3:
        context.go('/profile');
        break;
      default:
        break;
    }
  }
}
