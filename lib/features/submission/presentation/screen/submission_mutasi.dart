import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:meraih_mobile/utils/date.dart';
import 'package:signature/signature.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:meraih_mobile/features/submission/domain/mutasi.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/mutasi_provider.dart';
import 'package:meraih_mobile/utils/format_date.dart';
import 'package:file_picker/file_picker.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';

class SubmissionMutasi extends ConsumerStatefulWidget {
  const SubmissionMutasi({super.key});

  @override
  SubmissionMutasiState createState() => SubmissionMutasiState();
}

class SubmissionMutasiState extends ConsumerState<SubmissionMutasi> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );
  final _keteranganValidator = TextEditingController();
  final _fileController = TextEditingController();
  final _cabangController = TextEditingController();

  final int maxFileSize = 10 * 1024 * 1024; // Contoh: 10 MB

  bool isFileSizeValid(FilePickerResult? result) {
    if (result != null && result.files.isNotEmpty) {
      if (result.files.first.size > maxFileSize) {
        return false;
      }
    }
    return true;
  }

  String? showFileName = "";
  String? selectTargetBranch = "";
  FilePickerResult? filePickerResult;

  @override
  Widget build(BuildContext context) {
    final homeHistoryData = ref.watch(homeProvider);

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
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
                          Icons.type_specimen,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: homeHistoryData.when(
                      data: (data) {
                        return FormBuilderTextField(
                          initialValue: data!.jobPosition.toString(),
                          readOnly: true,
                          name: 'Jabatan',
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 6.0),
                            labelText: 'Jabatan',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        );
                      },
                      error: (error, stackTrace) =>
                          Center(child: Text('Error: $error')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                    ))
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
                          Icons.type_specimen,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: homeHistoryData.when(
                      data: (data) {
                        return FormBuilderTextField(
                          initialValue: data!.companyName.toString(),
                          readOnly: true,
                          name: 'Cabang Sekarang',
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 6.0),
                            labelText: 'Cabang Sekarang',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        );
                      },
                      error: (error, stackTrace) =>
                          Center(child: Text('Error: $error')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                    ))
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
                          Icons.type_specimen,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: FormBuilder(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: FormBuilderDropdown(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Cabang tidak boleh kosong";
                                }
                                return null;
                              },
                              name: 'cabang',
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 6.0),
                                labelText: 'Cabang',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  selectTargetBranch = value;
                                });
                              },
                              items: const [
                                DropdownMenuItem(
                                  child: Text('Balikpapan'),
                                  value: '48931c6d-451e-4183-a9ff-30b3686a7f32',
                                ),
                                DropdownMenuItem(
                                  child: Text('Samarinda'),
                                  value: 'c2f985e5-c77b-4620-8367-ce410d20a9d1',
                                ),
                              ],
                            )))
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
                      child: FormBuilderTextField(
                        controller: _keteranganValidator,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Alasan tidak boleh kosong";
                          }
                          return null;
                        },
                        name: 'keterangan',
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          labelText: 'Alasan Mutasi',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
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
                        padding: const EdgeInsets.all(12.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.drive_file_move,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            border:
                                Border.all(color: Colors.black, width: 0.5)),
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
                                  if (!isFileSizeValid(filePickerResult)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'Ukuran file terlalu besar. Maksimum $maxFileSize bytes.'),
                                      ),
                                    );
                                    return;
                                  }
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(width: 8.0),
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
            // color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.saveAndValidate()) {
                Map<String, dynamic> formData = _formKey.currentState!.value;

                print(formData['keterangan']);
                print(selectTargetBranch);

                // Memeriksa apakah nilai 'keterangan' tidak kosong

                try {
                  handleMutation(
                      ref,
                      MutasiRequest(
                        mutationReason: formData['keterangan'],
                        currenCompanyBranchId: homeHistoryData
                            .asData!.value!.companyBranchId
                            .toString(),
                        targetCompanyBranchId: selectTargetBranch.toString(),
                        mutationFile:
                            File(filePickerResult!.files.first.path ?? ''),
                      ));
                } catch (e) {
                  print("Error: $e");
                }
                // } else {
                //   // Menampilkan pesan kesalahan jika 'keterangan' kosong
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(
                //       content: Text('Alasan mutasi tidak boleh kosong.'),
                //     ),
                //   );
                // }
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
