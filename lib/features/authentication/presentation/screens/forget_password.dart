import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/authentication/domain/forget_password.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/forget_password_provider.dart';
import 'package:meraih_mobile/features/authentication/presentation/widget/alert_success_submission.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/alert_success_submission.dart';

class ForgetPassword extends ConsumerStatefulWidget {
  const ForgetPassword({super.key});

  @override
  ForgetPasswordState createState() => ForgetPasswordState();
}

class ForgetPasswordState extends ConsumerState<ForgetPassword> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  bool isHidePassword = true;
  bool isHidePassword2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: const Color.fromRGBO(32, 81, 229, 1),
          ),
          onPressed: () {
            context.go("/login");
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Lupa Password',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Silahkan Kirim Emplolyee ID Anda',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 15),
                FormBuilderTextField(
                  name: 'employeeId',
                  validator: (value) {
                    if (value == null || value.isEmpty || value == '') {
                      return 'Masukkan Employee ID Anda';
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
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(32, 81, 229, 1)),
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        Map<String, dynamic> formData =
                            _formKey.currentState!.value;
                        handleForgetPassword(
                          ref,
                          ForgetpasswordRequest(
                              employeeId: formData['employeeId']),
                        ).then((forgetPasswordPost) {
                          return showDialog<String>(
                            context: context,
                            builder: (BuildContext context) =>
                                AlertSuccessForgetPassword(
                              message: forgetPasswordPost.message,
                            ),
                          );
                        });
                      }
                    },
                    // style: ElevatedButton.styleFrom(
                    //   primary: Color(0xFF2051E5), // Ubah warna latar belakang
                    // ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        "Kirim",
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
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
