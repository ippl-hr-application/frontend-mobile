import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isObscured1 = true;
  bool _isObscured2 = true;
  bool _isObscured3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      // Add navigation logic to go back to the previous page
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Ubah Kata Sandi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: TextField(
                  obscureText: _isObscured1,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi Lama',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        // Toggle the visibility of the password
                        setState(() {
                          _isObscured1 = !_isObscured1;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: TextField(
                  obscureText: _isObscured2,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi Baru',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured2 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        // Toggle the visibility of the password
                        setState(() {
                          _isObscured2 = !_isObscured2;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: TextField(
                  obscureText: _isObscured3,
                  decoration: InputDecoration(
                    labelText: 'Konfirmasi Kata Sandi',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured3 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        // Toggle the visibility of the password
                        setState(() {
                          _isObscured3 = !_isObscured3;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add authentication logic or navigate to the next page here
                  },
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
