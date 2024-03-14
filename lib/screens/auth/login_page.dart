import 'package:flutter/material.dart';
import 'package:meraih_mobile/widgets/login/forget_send_email.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 100.0,
                height: 100.0,
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Lupa Password?"),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
