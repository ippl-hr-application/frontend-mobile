import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:meraih_mobile/utils/date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:signature/signature.dart';
import 'dart:io';
import 'package:meraih_mobile/features/submission/domain/change_shift.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/change_shift.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/shift_company_provider.dart';

class SubmissionShift extends ConsumerStatefulWidget {
  const SubmissionShift({super.key});

  @override
  ChangeShiftState createState() => ChangeShiftState();
}

class ChangeShiftState extends ConsumerState<SubmissionShift> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
  );

  int? selectedShiftBaru;

  @override
  Widget build(BuildContext context) {
    final int shiftId = 1;
    final shiftCompanyData = ref.watch(shiftCompanyProvider);

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
                  "Pengajuan Ganti Shift",
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
                            borderRadius: BorderRadius.all(Radius.circular(8))),
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
                          Icons.timelapse_sharp,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: FormBuilderTextField(
                      // key: _formkey,
                      initialValue: "1",
                      readOnly: true,
                      name: "shift",
                      decoration: InputDecoration(
                        labelText: 'Pilih Shift',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(
                                width: 1.0, color: Colors.black)),
                      ),
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
                        padding: const EdgeInsets.all(12.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.type_specimen,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: FormBuilder(
                            child: FormBuilderDropdown(
                      borderRadius: BorderRadius.circular(8.0),
                      name: 'shift-baru',
                      decoration: InputDecoration(
                        labelText: 'Pilih Shift Baru',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedShiftBaru = value;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          child: Text('Pagi 07:00 - 12:00'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('Siang 12:00 - 18:00'),
                          value: 2,
                        ),
                        // DropdownMenuItem(
                        //   child: Text('Malam 19:00 - 23:59'),
                        //   value: 3,
                        // ),
                      ],
                    )))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Spacer(),
              Align(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        Map<String, dynamic> formData =
                            _formKey.currentState!.value;
                        print(int.parse(formData['shift']));
                        print(formData['izinDate']);
                        print(selectedShiftBaru);

                        handleChangeShift(ChangeShiftRequest(
                            targetDate: convertToIso8601(
                                formData['izinDate'].start.toString()),
                            currentShift: int.parse(formData['shift']),
                            targetShift: selectedShiftBaru!));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
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
            ],
          ),
        ),
      ),
    );
  }
}
