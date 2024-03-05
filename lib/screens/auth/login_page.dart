import 'package:flutter/material.dart';
import 'package:meraih_mobile/widgets/login/forget_password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo di bagian atas tengah
              // Image.asset(
              //   'lib/images/logo.PNG', // Gantilah dengan path/logo Anda
              //   width: 100.0,
              //   height: 100.0,
              // ),
              SizedBox(height: 5.0),
              // TextFormField dengan outline
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      // Togle visibility password
                    },
                  ),
                ),
              ),
              SizedBox(
                  height:
                      10.0), // Sesuaikan jarak antara password dan "Lupa Password?"
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Logika untuk menangani "Lupa Password?"
                    },
                    child: Text("Lupa Password?"),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              // ElevatedButton dengan lebar sesuai dengan input field
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika autentikasi atau navigasi ke halaman berikutnya di sini
                  },
                  // style: ElevatedButton.styleFrom(
                  //   primary: Color(0xFF2051E5), // Ubah warna latar belakang
                  // ),
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
