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
              const Text(
                'Ubah Kata Sandi',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 20),
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
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(32, 81, 229, 1)),
                  onPressed: () {},
                  // style: ElevatedButton.styleFrom(
                  //   primary: Color(0xFF2051E5), // Ubah warna latar belakang
                  // ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Text(
                      "Simpan",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
