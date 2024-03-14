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
          icon: Icon(Icons.note_rounded),
          label: 'pengajuan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Notifikasi',
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
        context.go('/izin');
        break;
      case 2:
        context.go('/task');
        break;
      case 3:
        context.go('/login');
        break;
      default:
        break;
    }
  }
}
