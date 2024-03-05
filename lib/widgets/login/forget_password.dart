// forgot_password_widget.dart

import 'package:flutter/material.dart';


class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Ganti warna sesuai kebutuhan
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Lupa Password?",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Masukkan email Anda, kami akan mengirimkan instruksi untuk mereset password Anda.",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 20.0),
          // Text field untuk email
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          // Tombol untuk mengirim instruksi reset password
          ElevatedButton(
            onPressed: () {
              // Tambahkan logika untuk mengirim instruksi reset password
              // Misalnya, panggil fungsi atau lakukan navigasi ke halaman selanjutnya
            },
            child: Text("Kirim Instruksi"),
          ),
        ],
      ),
    );
  }
}
