import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlertSuccessAttandance extends StatelessWidget {
  final String? message;

  const AlertSuccessAttandance({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Pengajuan Berhasil'),
      content: Text(message ?? ''),
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
