import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({super.key});

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _handleNavigation(context, index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.notifications),
        //   label: 'Notifikasi',
        // ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.content_paste_sharp,
          ),
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
    // setState(() {
    //   _currentIndex = index;
    // });
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/submission');
        break;
      case 2:
        context.go('/profile');
        break;
      default:
        break;
    }

    // setState(() {
    //   _currentIndex = index;
    // });
  }
}
