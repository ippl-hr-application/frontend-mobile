import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:meraih_mobile/features/submission/domain/cuti.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/cuti_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/alert_success_submission.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:meraih_mobile/utils/date.dart';
import 'package:signature/signature.dart';

class SubmissionCuti extends ConsumerStatefulWidget {
  const SubmissionCuti({super.key});

  @override
  SubmissionCutiState createState() => SubmissionCutiState();
}

class SubmissionCutiState extends ConsumerState<SubmissionCuti> {
  // TextEditingController _permission_reason = TextEditingController();
  // TextEditingController _permission_file = TextEditingController();
  // String _from = "";
  // String _to = "";
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );
  bool isSingleDate = true;
  String? showFileName = "";
  String errorMessage = '';
  int maxSizeInBytes = 1 * 1024 * 1024;
  FilePickerResult? filePickerResult;
  final currentDate = DateTime.now();
  final currentEnd = DateTime.now().add(const Duration(days: 1));
  String date = DateFormat('yyyy-MM-dd').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
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
                "Pengajuan Cuti",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
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
                          width: 1.0,
                          color: Color.fromARGB(255, 186, 186, 186)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(32, 81, 229, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: const Icon(
                            Icons.type_specimen,
                            color: Colors.white,
                            size: 30,
                          )),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: FormBuilderDropdown(
                          name: 'Jenis_Cuti',
                          validator: (value) {
                            if (value == null) {
                              return 'Pilih Jenis Cuti!';
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'Pilih Jenis Cuti',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          items: const [
                            DropdownMenuItem(
                              child: Text('Tahunan'),
                              value: 'Tahunan',
                            ),
                            DropdownMenuItem(
                              child: Text('Bulanan'),
                              value: 'Bulanan',
                            ),
                            DropdownMenuItem(
                              child: Text('Lahiran'),
                              value: 'Lahiran',
                            ),
                          ],
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
                          width: 1.0,
                          color: Color.fromARGB(255, 186, 186, 186)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(32, 81, 229, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: const Icon(
                            Icons.edit_square,
                            color: Colors.white,
                            size: 30,
                          )),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: FormBuilderTextField(
                          name: 'Alasan',
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Alasan cuti harus diisi!';
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'Alasan Cuti',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ingin lebih dari 1 hari? ',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: !isSingleDate,
                      onChanged: (value) {
                        setState(() {
                          isSingleDate = !isSingleDate;
                        });
                      },
                      activeColor: const Color.fromRGBO(32, 81, 229, 1),
                      activeTrackColor: Colors.blue[100],
                      inactiveThumbColor: Color.fromARGB(255, 238, 53, 20),
                      inactiveTrackColor: Color.fromARGB(255, 255, 186, 180),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 186, 186, 186)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(32, 81, 229, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: const Icon(Icons.date_range_outlined,
                              color: Colors.white, size: 30)),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: isSingleDate
                            ? FormBuilderDateTimePicker(
                                name: 'cutiDate',
                                format: DateFormat('yyyy-MM-dd'),
                                inputType: InputType.date,
                                decoration: InputDecoration(
                                  labelText: 'Pilih Tanggal Cuti',
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 10.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                initialValue: currentDate,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 365),
                                ),
                                onChanged: (value) {
                                  if (value != null) {
                                    final startDate =
                                        DateFormat('yyyy-MM-dd').format(value);
                                    setState(() {
                                      date = startDate;
                                    });
                                  }
                                },
                              )
                            : FormBuilderDateRangePicker(
                                name: 'cutiDateRange',
                                format: DateFormat('yyyy-MM-dd'),
                                decoration: InputDecoration(
                                  labelText: 'Pilih Tanggal Cuti',
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 10.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                initialValue: DateTimeRange(
                                    start: currentDate, end: currentEnd),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 365),
                                ),
                                onChanged: (value) {
                                  if (value != null) {
                                    final startDate = DateFormat('yyyy-MM-dd')
                                        .format(value.start);
                                    setState(() {
                                      date = startDate;
                                    });
                                  }
                                },
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
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(32, 81, 229, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
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
                                BorderRadius.all(Radius.circular(8.0)),
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
                                        allowedExtensions: [
                                          'pdf',
                                          'jpg',
                                          'png'
                                        ],
                                      );

                                      if (filePickerResult != null) {
                                        // Mendapatkan file yang dipilih
                                        var file =
                                            filePickerResult!.files.first;

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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 13.0, horizontal: 8.0),
                                      backgroundColor: const Color.fromRGBO(
                                          243, 243, 243, 1),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                    ),
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
                    padding: const EdgeInsets.only(top: 0.0, left: 75.0),
                    child: Text(
                      errorMessage,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 186, 186, 186)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
                Map<String, dynamic> formData = _formKey.currentState!.value;

                print(formData['Alasan']);
                print(File(filePickerResult!.files.first.path ?? '').path);
                if (filePickerResult != null) {
                  handleCutiSubmission(
                      ref,
                      CutiRequest(
                        from: isSingleDate
                            ? convertToIso8601(formData['cutiDate'].toString())
                            : convertToIso8601(
                                formData['cutiDateRange'].start.toString()),
                        leaveReason: formData['Alasan'],
                        leave_file:
                            File(filePickerResult!.files.first.path ?? ''),
                        leaveType: formData['Jenis_Cuti'],
                        to: isSingleDate
                            ? convertToIso8601(formData['cutiDate'].toString())
                            : convertToIso8601(
                                formData['cutiDateRange'].end.toString()),
                      )).then((cutiSubmission) {
                    return showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertSuccessSubmission(
                        message: cutiSubmission.message,
                      ),
                    );
                  });
                }
              }
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
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
