import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:meraih_mobile/utils/date.dart';
import 'package:signature/signature.dart';

class RequestAttandance extends ConsumerStatefulWidget {
  const RequestAttandance({super.key});

  @override
  RequestAttandanceState createState() => RequestAttandanceState();
}

class RequestAttandanceState extends ConsumerState<RequestAttandance> {
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
                          child: FormBuilderDateRangePicker(
                            name: 'izinDate',
                            format: DateFormat('yyyy-MM-dd'),
                            decoration: InputDecoration(
                              labelText: 'Pilih Tanggal Izin',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(Duration(days: 365)),
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
                            child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 1.0,
                                      color:
                                          Color.fromARGB(255, 186, 186, 186)),
                                ),
                              ),
                              child: const Text(
                                "Senin, 09:00 - 18:00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: const Row(
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
                                        "09:00",
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
                        ))
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
                                border: Border.all(
                                    color: Colors.black, width: 0.5)),
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
                                      backgroundColor: const Color.fromRGBO(
                                          243, 243, 243, 1),
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
              )),
        ));
  }
}
