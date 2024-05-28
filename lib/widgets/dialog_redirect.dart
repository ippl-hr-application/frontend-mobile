// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogRedirect extends StatelessWidget {
  const DialogRedirect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Sesi Anda Telah habis silahkan login kembali",
        style: TextStyle(fontSize: 16),
      ),
      titlePadding: EdgeInsets.only(top: 16, left: 16),
      actionsPadding: EdgeInsets.only(bottom: 6, right: 16),
      actions: [
        TextButton(
            child: Text("OK",
                style: TextStyle(color: Color.fromRGBO(32, 81, 229, 1))),
            onPressed: () {
              context.go('/login');
            })
      ],
    );
  }
}
