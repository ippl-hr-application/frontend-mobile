import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:signature/signature.dart';

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
        backgroundColor: Color(0xFF2051E5),
        title: Text(
          'Form Pengajuan Sakit',
          style: TextStyle(color: Colors.white),
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
              Container(
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, 
                    width: 3.0, 
                  ),
                  borderRadius:
                      BorderRadius.circular(5.0),
                ),
                child: Signature(
                  controller: _signatureController,
                  height: 200,
                  backgroundColor: Colors.white,
                ),
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
                      String? buktiSakit =
                          filePickerResult?.files.first.path;
                      DateTimeRange izinDate = formData['izinDate'];
                      DateTime startDate = izinDate.start;
                      DateTime endDate = izinDate.end;

                      // Access the signature image using _signatureController.toPngBytes()
                      // Uint8List? signatureImage = await _signatureController.toPngBytes();
                    }
                  },
                  child: Text('Kirim Pengajuan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
