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
              FormBuilderTextField(
                name: 'Alasan',
                decoration: InputDecoration(
                  labelText: 'Alasan Izin',
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
                  labelText: 'Pilih Tanggal Izin',
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
                    allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
                  );
                  setState(() {});
                },
                child: const Text('Upload Bukti'),
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
                        handleIzinSubmission(
                            convertToIso8601(
                                formData['izinDate'].start.toString()),
                            convertToIso8601(
                                formData['izinDate'].end.toString()),
                            formData['Alasan'],
                            File(filePickerResult!.files.first.path ?? ''));
                      }
                    },
                    child: Text('Kirim Pengajuan'),
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
