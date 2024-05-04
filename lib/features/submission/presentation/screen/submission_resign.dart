import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/submission/domain/resign.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/resign_provider.dart';
import 'package:signature/signature.dart';

class PengajuanResign extends ConsumerStatefulWidget {
  const PengajuanResign({super.key});

  @override
  PengajuanResignState createState() => PengajuanResignState();
}

class PengajuanResignState extends ConsumerState<PengajuanResign> {
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
              top: 20,
              child: Center(
                child: Text(
                  "Pengajuan Resign",
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
                name: 'Keterangan',
                decoration: InputDecoration(
                  labelText: 'Keterangan',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
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
                child: Text('Upload File'),
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
                        handleResignSubmission(ResignRequest(
                            reason: formData['Keterangan'],
                            resign_file: File(
                                filePickerResult!.files.first.path ?? '')));
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
