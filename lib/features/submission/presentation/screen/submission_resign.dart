import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/submission/domain/resign.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/resign_provider.dart';
import 'package:signature/signature.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/alert_success_submission.dart';

class PengajuanResign extends ConsumerStatefulWidget {
  const PengajuanResign({super.key});

  @override
  PengajuanResignState createState() => PengajuanResignState();
}

class PengajuanResignState extends ConsumerState<PengajuanResign> {
  // TextEditingController _permission_reason = TextEditingController();
  // TextEditingController _permission_file = TextEditingController();
  // String _from = "";
  // String _to = "";
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );

  String? showFileName = "";
  String errorMessage = '';
  int maxSizeInBytes = 1 * 1024 * 1024;
  FilePickerResult? filePickerResult;

  @override
  Widget build(BuildContext context) {
    bool isSubmitting = false;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              context.go("/submission");
            },
          ),
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 2)),
              Text(
                "Pengajuan Resign",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.timelapse_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'keterangan',
                        validator: (value) {
                          if (value == null || value.isEmpty || value == '') {
                            return 'Alasan resign harus diisi!';
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          labelText: 'Alasan Resign',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                // decoration: const BoxDecoration(
                //   border: Border(
                //     bottom: BorderSide(
                //         width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
                //   ),
                // ),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.upload_file_sharp,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all(color: Colors.black, width: 0.5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () async {
                                    filePickerResult =
                                        await FilePicker.platform.pickFiles(
                                      type: FileType.custom,
                                      allowedExtensions: ['pdf', 'jpg', 'png'],
                                    );

                                    if (filePickerResult != null) {
                                      // Mendapatkan file yang dipilih
                                      var file = filePickerResult!.files.first;

                                      // Ukuran maksimum dalam byte (1 MB = 1 * 1024 * 1024 bytes)

                                      if (file.size > maxSizeInBytes) {
                                        // Jika ukuran file lebih dari 1 MB, perbarui state dengan pesan kesalahan
                                        setState(() {
                                          errorMessage =
                                              'Ukuran file tidak boleh lebih dari 1 MB';
                                          showFileName = '';
                                        });
                                      } else {
                                        // Jika ukuran file sesuai, perbarui state dengan nama file
                                        setState(() {
                                          showFileName = file.name;
                                          errorMessage =
                                              ''; // Clear any previous error message
                                        });
                                      }
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 13.0, horizontal: 8.0),
                                    backgroundColor:
                                        Color.fromRGBO(243, 243, 243, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                  ),
                                  child: Text(
                                    'Pilih File',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      showFileName!,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (errorMessage.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(top: 0.0, left: 75.0),
                  child: Text(
                    errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              print(isSubmitting);

              if (_formKey.currentState!.saveAndValidate() &&
                  filePickerResult!.files.first.size < maxSizeInBytes) {
                Map<String, dynamic> formData = _formKey.currentState!.value;

                setState(() {
                  isSubmitting = true;
                  print(isSubmitting);
                });

                print(formData['keterangan']);

                handleResignSubmission(
                        ref,
                        ResignRequest(
                            reason: formData['keterangan'],
                            resign_file:
                                File(filePickerResult!.files.first.path ?? '')))
                    .then((resignSubmission) {
                  setState(() {
                    isSubmitting = false;
                  });

                  return showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertSuccessSubmission(
                      message: resignSubmission.message,
                    ),
                  );
                }).catchError((error) {
                  setState(() {
                    isSubmitting = false;
                  });
                });
              }

              setState(() {
                isSubmitting = false;
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Kirim Pengajuan',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
