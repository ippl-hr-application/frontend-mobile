import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';
import 'package:meraih_mobile/features/authentication/forgetpassword/domain/forgetpassword.dart';
import 'package:meraih_mobile/features/authentication/forgetpassword/provider/forgetpassword_provider.dart';

class LoginPage extends ConsumerWidget {
  final TextEditingController _employeeId = TextEditingController();
  final TextEditingController _password = TextEditingController();

  LoginPage({super.key});

  void onPressedLogin(
      BuildContext context, WidgetRef ref, LoginRequest auth) async {
    try {
      await handleLogin(ref, auth);
      final token = ref.read(authTokenProvider);
      if (token != null) {
        print('Token after login: $token'); 
        context.pushReplacement('/');
      } else {
        print('No token after login');
      }
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

  void _showForgotPasswordSheet(BuildContext context, WidgetRef ref) {
    final TextEditingController _forgotEmployeeIdController =
        TextEditingController();

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/popforgetpassword.png',
                      width: 350.0,
                      height: 350.0,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lupa Kata Sandi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Masukkan Employee ID Untuk Ubah Kata Sandi',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _forgotEmployeeIdController,
                      decoration: InputDecoration(
                        labelText: "Employee ID",
                        hintText: "Contoh: c5555555-3e33-44a4-a888-77df77df7bc7",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final employeeId = _forgotEmployeeIdController.text;
                          final request = ForgetpasswordRequest(employeeId: employeeId);

                          try {
                            final response = await ref.read(handleForgetPasswordProvider(request).future);

                            Navigator.pop(context);

                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(response.success == true ? "Success" : "Error"),
                                content: Text(
                                  response.success == true
                                      ? "Data berhasil dikirim. Tunggu sebentar, Akun anda segera dipulihkan !"
                                      : response.message ?? "Unknown error",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK"),
                                  ),
                                ],
                              ),
                            );
                          } catch (e) {
                            Navigator.pop(context);

                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Error"),
                                content: Text(e.toString()),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK"),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(32, 81, 229, 1)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 14.0),
                          child: Text(
                            "Kirim",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        });
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
                      context.go("/reset-password");
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
                    onPressedLogin(
                        context,
                        ref,
                        LoginRequest(
                            employee_id: _employeeId.text,
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