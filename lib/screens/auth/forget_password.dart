import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ganti Kata Sandi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi Baru',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Konfirmasi Kata Sandi',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika autentikasi atau navigasi ke halaman berikutnya di sini
                  },
                  // style: ElevatedButton.styleFrom(
                  //   primary: Color(0xFF2051E5), // Ubah warna latar belakang
                  // ),
                  child: Text("Simpan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

