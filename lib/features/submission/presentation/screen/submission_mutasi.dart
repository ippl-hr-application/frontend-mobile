import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SubmissionMutasi extends ConsumerStatefulWidget {
  const SubmissionMutasi({super.key});

  @override
  SubmissionMutasiState createState() => SubmissionMutasiState();
}

class SubmissionMutasiState extends ConsumerState<SubmissionMutasi> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  String _alasan = "";
  FilePickerResult? filePickerResult;
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
            context.go('/submission');
          },
        ),
        flexibleSpace: const Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 40,
              child: Center(
                child: Text(
                  "Pengajuan Mutasi",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.date_range_outlined,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 6.0),
                            border: OutlineInputBorder(),
                            hintText: "Muhammad Saman"),
                      ),
                    )
                  ],
                ),
              ),
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.timelapse_outlined,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: FormBuilder(
                            key: _formKey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FormBuilderDropdown(
                                    name: 'Cabang',
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 6.0),
                                      labelText: 'Cabang',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    items: [
                                      DropdownMenuItem(
                                        child: Text('IPPL Merdeka'),
                                        value:
                                            '1b63abc7-59a5-4cfa-914e-5ad4b5235d57',
                                      ),
                                    ],
                                  ),
                                ])))
                  ],
                ),
              ),
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.date_range_outlined,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          _alasan = value;
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 6.0),
                            border: OutlineInputBorder(),
                            hintText: "Alasan"),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () async {
                    filePickerResult = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
                    );
                    setState(() {});
                  },
                  child: const Text('Upload Bukti'),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            // color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.saveAndValidate()) {
                Map<String, dynamic> formData = _formKey.currentState!.value;

                print(formData['Alasan']);
                print(File(filePickerResult!.files.first.path ?? '').path);
                // handleIzinSubmission(
                //     convertToIso8601(formData['izinDate'].start.toString()),
                //     convertToIso8601(formData['izinDate'].end.toString()),
                //     formData['Alasan'],
                //     File(filePickerResult!.files.first.path ?? ''));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: const Text(
              "Kirim Pengajuan",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
