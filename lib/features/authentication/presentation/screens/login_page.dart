import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

class LoginPage extends ConsumerWidget {
  final TextEditingController _companyId = TextEditingController();
  final TextEditingController _employeeId = TextEditingController();
  final TextEditingController _password = TextEditingController();

  LoginPage({super.key});
  void onPressedLogin(
      BuildContext context, WidgetRef ref, LoginRequest auth) async {
    try {
      await handleLogin(ref, auth);
      context.pushReplacement('/');
    } on Exception {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"))
                ],
                title: Text("Login Failed"),
              ));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              const SizedBox(height: 30.0),
              TextField(
                controller: _companyId,
                decoration: InputDecoration(
                  labelText: "Company ID",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: _employeeId,
                decoration: InputDecoration(
                  labelText: "Employee ID",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                obscureText: true,
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      context.go('/resset-password');
                    },
                    child: const Text("Lupa Password?"),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("sdnmnds");
                    onPressedLogin(
                        context,
                        ref,
                        LoginRequest(
                            employee_id: _employeeId.text,
                            company_id: _companyId.text,
                            password: _password.text));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(32, 81, 229, 1)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
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
