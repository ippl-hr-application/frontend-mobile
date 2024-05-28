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
import 'package:meraih_mobile/features/submission/presentation/providers/company_branch_provider.dart';

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

  String? showFileName = "";
  String? selectTargetBranch = "";
  String errorMessage = '';
  int maxSizeInBytes = 1 * 1024 * 1024;
  FilePickerResult? filePickerResult;

  @override
  Widget build(BuildContext context) {
    final homeHistoryData = ref.watch(homeProvider);
    final companyBranchData = ref.watch(companyBranchProvider);

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
                "Pengajuan Mutasi",
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
                        child: companyBranchData.when(
                      data: (data) {
                        // if (data!.branches == null || data.branches!.isEmpty) {
                        //   return const Center(
                        //       child: Text('No branches available'));
                        // }
                        // print(data.branches!.first.company_branch_id);

                        return FormBuilder(
                          child: FormBuilderDropdown(
                            name: 'cabang',
                            validator: (value) {
                              if (value == null) {
                                return "Cabang tidak boleh kosong";
                              }
                            },
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
                            items: data!.branches!
                                .map((e) => DropdownMenuItem(
                                      child: Text(
                                        e.hq_initial.toString().toUpperCase(),
                                        softWrap: true,
                                      ),
                                      value: e.company_branch_id,
                                    ))
                                .toList(),
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
                          Icons.date_range_outlined,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: FormBuilderTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Alasan tidak boleh kosong";
                          }
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
                // decoration: const BoxDecoration(
                //   border: Border(
                //     bottom: BorderSide(
                //         width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
                //   ),
                // ),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.upload_file_sharp,
                          color: Colors.white,
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
                  padding: EdgeInsets.only(top: 0.0, left: 60.0),
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
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            // color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.saveAndValidate() &&
                  filePickerResult!.files.first.size < maxSizeInBytes) {
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
