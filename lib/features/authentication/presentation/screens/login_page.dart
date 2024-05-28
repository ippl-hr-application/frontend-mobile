import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ConsumerState<LoginPage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  bool isHidePassword = true;
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 100.0,
                  height: 100.0,
                ),
                const SizedBox(height: 10.0),
                FormBuilderTextField(
                  name: 'employeeId',
                  validator: (value) {
                    if (value == null || value.isEmpty || value == '') {
                      return 'Employee ID Tidak Boleh Kosong';
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10.0),
                    labelText: 'Employee ID',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                // TextField(
                //   controller: _employeeId,
                //   decoration: InputDecoration(
                //     labelText: "Employee ID",
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15.0)),
                //   ),
                // ),
                const SizedBox(height: 10.0),
                FormBuilderTextField(
                  obscureText: isHidePassword,
                  name: 'password',
                  validator: (value) {
                    if (value == null || value.isEmpty || value == '') {
                      return 'Password Tidak Boleh Kosong';
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10.0),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          isHidePassword = !isHidePassword;
                        });
                      },
                    ),
                  ),
                ),
                // TextField(
                //   obscureText: true,
                //   controller: _password,
                //   decoration: InputDecoration(
                //     labelText: "Password",
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15.0)),
                //     suffixIcon: IconButton(
                //       icon: Icon(Icons.visibility),
                //       onPressed: () {},
                //     ),
                //   ),
                // ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.go('/reset-password');
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
                      if (_formKey.currentState!.saveAndValidate()) {
                        Map<String, dynamic> formData =
                            _formKey.currentState!.value;

                        onPressedLogin(
                            context,
                            ref,
                            LoginRequest(
                                employee_id: formData['employeeId'],
                                password: formData['password']));
                      } else {}
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
      ),
    );
  }
}
