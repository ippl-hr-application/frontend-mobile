import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:meraih_mobile/features/submission/domain/sakit.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/sakit_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/alert_success_submission.dart';
import 'package:meraih_mobile/utils/date.dart';
import 'package:signature/signature.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';

class FormSakit extends ConsumerStatefulWidget {
  const FormSakit({super.key});

  @override
  SakitSubmissionState createState() => SakitSubmissionState();
}

class SakitSubmissionState extends ConsumerState<FormSakit> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            context.go("/submission");
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
                  "Pengajuan Sakit",
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
                            return 'Keterangan sakit harus diisi!';
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          labelText: 'Keterangan Sakit',
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
                        name: 'sakitDate',
                        validator: (value) {
                          if (value == null) {
                            return 'Pilih Tanggal!';
                          }
                        },
                        format: DateFormat('yyyy-MM-dd'),
                        decoration: InputDecoration(
                            labelText: 'Mulai dan Akhir Sakit Tanggal',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 10.0)),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                  padding: EdgeInsets.only(left: 75.0),
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
              ),
              const SizedBox(height: 20),
              const Spacer(),
              Align(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (filePickerResult == null) {
                        setState(() {
                          errorMessage = 'Pilih file terlebih dahulu!';
                          showFileName = '';
                        });
                      }
                      if (_formKey.currentState!.saveAndValidate() &&
                          filePickerResult!.files.first.size < maxSizeInBytes) {
                        Map<String, dynamic> formData =
                            _formKey.currentState!.value;
                        print(formData['keterangan']);
                        print(File(filePickerResult!.files.first.path ?? "")
                            .path);
                        if (filePickerResult != null) {
                          handleSakitSubmission(
                                  ref,
                                  SakitRequest(
                                      from: convertToIso8601(
                                          formData['sakitDate']
                                              .start
                                              .toString()),
                                      permissionReason: formData['keterangan'],
                                      to: convertToIso8601(
                                          formData['sakitDate'].end.toString()),
                                      sickFile: File(
                                          filePickerResult!.files.first.path ??
                                              '')))
                              .then((sakitSubmission) {
                            return showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  AlertSuccessSubmission(
                                message: sakitSubmission.message,
                              ),
                            );
                          });
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Kirim Pengajuan',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
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
