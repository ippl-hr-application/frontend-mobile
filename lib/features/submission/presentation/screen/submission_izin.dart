import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:meraih_mobile/features/submission/domain/izin.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/izin_provider.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:meraih_mobile/utils/date.dart';
import 'package:signature/signature.dart';

class SubmissionIzin extends ConsumerStatefulWidget {
  const SubmissionIzin({super.key});

  @override
  SubmissionIzinState createState() => SubmissionIzinState();
}

class SubmissionIzinState extends ConsumerState<SubmissionIzin> {
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
                  "Pengajuan Izin",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
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
                          Icons.date_range_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: FormBuilderDateRangePicker(
                        name: 'izinDate',
                        format: DateFormat('yyyy-MM-dd'),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          labelText: 'Pilih Tanggal',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
                          Icons.edit_square,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'Alasan',
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          labelText: 'Alasan Izin',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all(color: Colors.black, width: 0.5)),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              filePickerResult =
                                  await FilePicker.platform.pickFiles(
                                type: FileType.custom,
                                allowedExtensions: ['pdf', 'jpg', 'png'],
                              );

                              if (filePickerResult != null) {
                                setState(() {
                                  showFileName =
                                      filePickerResult!.files.first.name;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 13.0, horizontal: 8.0),
                                backgroundColor:
                                    const Color.fromRGBO(243, 243, 243, 1),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)))),
                            child: const Text(
                              'Pilih File',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              showFileName.toString(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        Map<String, dynamic> formData =
                            _formKey.currentState!.value;

                        print(formData['Alasan']);
                        print(File(filePickerResult!.files.first.path ?? '')
                            .path);
                        handleIzinSubmission(IzinRequest(
                          from: convertToIso8601(
                              formData['izinDate'].start.toString()),
                          permission_reason: formData['Alasan'],
                          permission_file:
                              File(filePickerResult!.files.first.path ?? ''),
                          to: convertToIso8601(
                              formData['izinDate'].end.toString()),
                        ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: const Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Kirim Pengajuan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white),
                      ),
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