import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:signature/signature.dart';
import 'package:go_router/go_router.dart';

class FormSakit extends StatefulWidget {
  const FormSakit({Key? key}) : super(key: key);

  @override
  _FormSakitState createState() => _FormSakitState();
}

class _FormSakitState extends State<FormSakit> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );

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
            context.go('/');
          },
        ),
        flexibleSpace: const Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 18,
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
              FormBuilderTextField(
                name: 'keterangan',
                decoration: InputDecoration(
                  labelText: 'Keterangan Sakit',
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
                  labelText: 'Mulai dan Akhir Sakit Tanggal',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(Duration(days: 365)),
              ),
              SizedBox(height: 20),
              Text(
                'Bukti Sakit :',
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
                child: Text('File Bukti'),
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
                child: Text('Tanda Tangan Digital'),
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
           
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: const Text(
              "Download Slip Gaji",
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
