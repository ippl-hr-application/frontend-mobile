import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';

class FormReAbsen extends StatefulWidget {
  const FormReAbsen({Key? key}) : super(key: key);

  @override
  _FormReAbsenState createState() => _FormReAbsenState();
}

class _FormReAbsenState extends State<FormReAbsen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  FilePickerResult? filePickerResult;

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
              context.go("/attandance");
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
                "Pengajuan Lupa Absen",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      // appBar: AppBar(
      //   backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
      //   leading: IconButton(
      //     icon: const Icon(
      //       Icons.arrow_back,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {
      //       context.go('/');
      //     },
      //   ),
      //   flexibleSpace: const Stack(
      //     children: [
      //       Positioned(
      //         left: 0,
      //         right: 0,
      //         top: 18,
      //         child: Center(
      //           child: Text(
      //             "Pengajuan Lupa Absen",
      //             style: TextStyle(fontSize: 18.0, color: Colors.white),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormBuilderTextField(
                  name: 'keterangan',
                  decoration: InputDecoration(
                    labelText: 'Keterangan Absen',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FormBuilderDateRangePicker(
                  name: 'izinDate',
                  format: DateFormat('yyyy-MM-dd'),
                  decoration: InputDecoration(
                    labelText: '  Tanggal Mulai - Akhir Sakit',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    filePickerResult = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['pdf', 'jpg', 'png'],
                    );
                    setState(() {});
                  },
                  child: Text('+ File Bukti'),
                ),
                SizedBox(height: 20),
                Text(
                  'Tanda Tangan Digital:',
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: () async {
                    filePickerResult = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['pdf', 'jpg', 'png'],
                    );
                    setState(() {});
                  },
                  child: Text('+ File Tanda Tangan'),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        Map<String, dynamic> formData =
                            _formKey.currentState!.value;
                        String keterangan = formData['keterangan'];
                        String? buktiReabsen =
                            filePickerResult?.files.first.path;
                        DateTimeRange izinDate = formData['izinDate'];
                        DateTime startDate = izinDate.start;
                        DateTime endDate = izinDate.end;
                      }
                    },
                    child: Text('Kirim Pengajuan'),
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
