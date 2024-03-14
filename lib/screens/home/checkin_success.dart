import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckinSuccess extends StatelessWidget {
  const CheckinSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Kehadiran Berhasil !',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '11 Maret 2024',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              'Jam Kerja:',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              '09.00 - 17.00',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              '09.00',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                context.go("/");
              },
              child: Text('Kembali ke Beranda'),
            ),
          ],
        ),
      ),
    );
  }
}
