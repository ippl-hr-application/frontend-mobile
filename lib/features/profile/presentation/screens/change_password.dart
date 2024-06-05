import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/changepassword/domain/changepassword.dart';
import 'package:meraih_mobile/features/authentication/changepassword/provider/changepassword_provider.dart';

class ChangePassword extends ConsumerStatefulWidget {
  const ChangePassword({super.key});

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends ConsumerState<ChangePassword> {
  bool _isObscured = true;
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _showAlert(String title, String message, VoidCallback onPressed) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: onPressed,
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _handleSubmit() async {
    if (_newPasswordController.text != _confirmPasswordController.text) {
      _showAlert(
        'Error',
        'Kata sandi baru harus sama dengan konfirmasi kata sandi.',
        () {
          Navigator.of(context).pop();
        },
      );
    } else {
      // Proceed with the password change
      final request = ChangepasswordRequest(
        old_password: _oldPasswordController.text,
        password: _newPasswordController.text,
        confirm_password: _confirmPasswordController.text,
      );

      final provider = handleChangePasswordProvider(request);

      ref.read(provider).when(
        data: (response) {
          if (response.success == true) {
            _showAlert(
              'Success',
              response.message ?? 'Password changed successfully',
              () {
                Navigator.of(context).pop();
                context.go('/profile');
              },
            );
          } else {
            _showAlert(
              'Error',
              response.message ?? 'Failed to change password',
              () {
                Navigator.of(context).pop();
              },
            );
          }
        },
        loading: () {
          // Show a loading indicator if needed
        },
        error: (error, stackTrace) {
          if (error is DioException && error.response?.statusCode == 400) {
            _showAlert(
              'Error',
              'Password lama anda tidak sama dengan password sebelumnya !',
              () {
                Navigator.of(context).pop();
              },
            );
          } else {
            _showAlert(
              'Error',
              error.toString(),
              () {
                Navigator.of(context).pop();
              },
            );
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            context.go("/profile");
          },
        ),
        flexibleSpace: const Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 18,
              child: Center(
                child: Text(
                  "Ganti Password",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: _oldPasswordController,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi Lama',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: _newPasswordController,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi Baru',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: _confirmPasswordController,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    labelText: 'Konfirmasi Kata Sandi',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_isObscured ? "Show Password" : "Hide Password"),
                  IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: ElevatedButton(
            onPressed: _handleSubmit,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: const Text(
              "Ganti Password",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
