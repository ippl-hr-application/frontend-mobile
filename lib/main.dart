import 'package:flutter/material.dart';
import 'package:meraih_mobile/screens/auth/forget_password.dart';
import 'package:meraih_mobile/screens/auth/login_page.dart';
import 'package:meraih_mobile/screens/home/checkin_map.dart';
import 'package:meraih_mobile/screens/home/checkin_prove.dart';
import 'package:meraih_mobile/screens/home/checkin_success.dart';
import 'package:meraih_mobile/screens/permintaan/form_sakit.dart';
import 'package:meraih_mobile/screens/settings/change_password.dart';
import 'package:meraih_mobile/widgets/login/forget_send_email.dart';
import 'package:meraih_mobile/widgets/login/success_password_change.dart';

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
        primaryColor: Color(0xFF2051E5),
      ),
      home: const ForgetSendEmail(),
    );
  }
}
