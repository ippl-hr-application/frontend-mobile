import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlertSuccessForgetPassword extends StatelessWidget {
  final String? message;

  const AlertSuccessForgetPassword({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Lupa Password Diproses'),
      content: Text('Mohon ditunggu'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
