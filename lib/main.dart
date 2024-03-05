import 'package:flutter/material.dart';
import 'package:meraih_mobile/screens/auth/forget_password.dart';
import 'package:meraih_mobile/screens/auth/login_page.dart';
import 'package:meraih_mobile/screens/permintaan/form_sakit.dart';
import 'package:meraih_mobile/screens/settings/change_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF2051E5), // Set the primary color
      ),
      home: const ChangePassword(),
    );
  }
}
