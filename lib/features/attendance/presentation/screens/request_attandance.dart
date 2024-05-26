import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/attendance/presentation/provider/attandance_history_provider.dart';
import 'package:meraih_mobile/utils/format_date.dart';

class RequestAttandance extends ConsumerStatefulWidget {
  const RequestAttandance({super.key});

  @override
  RequestAttandanceState createState() => RequestAttandanceState();
}

class RequestAttandanceState extends ConsumerState<RequestAttandance> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  bool isSingleDate = true;
  String? showFileName = "";
  FilePickerResult? filePickerResult;
  final currentDate = DateTime.now();
  final currentEnd = DateTime.now().add(const Duration(days: 1));
  String date = DateFormat('yyyy-MM-dd').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    final submissionHistoryDate = ref.read(attandanceHistoryProvider(date));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            context.go('/attendance');
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
                  "Request Kehadiran",
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
                              name: 'izinDate',
                              format: DateFormat('yyyy-MM-dd'),
                              inputType: InputType.date,
                              decoration: InputDecoration(
                                labelText: 'Pilih Tanggal Izin',
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
                              name: 'izinDateRange',
                              format: DateFormat('yyyy-MM-dd'),
                              decoration: InputDecoration(
                                labelText: 'Pilih Tanggal Izin',
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
                                  final startDate =
                                      DateFormat('yyyy-MM-dd')
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lebih dari satu hari ?',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSingleDate,
                    onChanged: (value) {
                      setState(() {
                        isSingleDate = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 238, 53, 20),
                    activeTrackColor: Color.fromARGB(255, 255, 186, 180),
                    inactiveThumbColor: const Color.fromRGBO(32, 81, 229, 1),
                    inactiveTrackColor: Colors.blue[100],
                  ),
                ],
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(8))),
                        child: const Icon(Icons.date_range_outlined,
                            color: Colors.white, size: 30)),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: submissionHistoryDate.when(
                            data: (data) {
                              return Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.0,
                                            color: Color.fromARGB(
                                                255, 186, 186, 186)),
                                      ),
                                    ),
                                    child: Text(
                                      formatDate(data!.startTime.toString()),
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Check in",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromRGBO(
                                                      171, 171, 171, 1.0)),
                                            ),
                                            Text(
                                              data.checkInTime.toString(),
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Check in",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromRGBO(
                                                      171, 171, 171, 1.0)),
                                            ),
                                            Text(
                                              "-",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                            error: (error, stack) =>
                                Center(child: Text('Error: $error')),
                            loading: () =>
                                Center(child: CircularProgressIndicator())))
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.timelapse_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'keterangan',
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          labelText: 'Alasan ',
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
                            borderRadius: const BorderRadius.all(
                                Radius.circular(8.0)),
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
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.saveAndValidate()) {
                Map<String, dynamic> formData = _formKey.currentState!.value;

                print(formData['izinDate']);
                print(formData['keterangan']);
                print(File(filePickerResult!.files.first.path ?? '').path);

                // handleCutiSubmission(
                //     ref,
                //     CutiRequest(
                //       from: convertToIso8601(
                //           formData['CutiDate'].start.toString()),
                //       leaveReason: formData['keterangan'],
                //       leave_file:
                //           File(filePickerResult!.files.first.path ?? ''),
                //       leaveType: formData['Jenis_Cuti'],
                //       to: convertToIso8601(formData['CutiDate'].end.toString()),
                //     )).then((cutiSubmission) {
                //   return showDialog<String>(
                //     context: context,
                //     builder: (BuildContext context) => AlertSuccessSubmission(
                //       message: cutiSubmission.message,
                //     ),
                //   );
                // });
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
