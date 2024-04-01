import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:meraih_mobile/utils/date.dart';

class SubmissionShift extends StatelessWidget {
  const SubmissionShift({super.key});

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
                  "Pengajuan Ganti Shift",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
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
                      child: FormBuilderDateRangePicker(
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(32, 81, 229, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Icon(
                          Icons.timelapse_outlined,
                          color: Colors.white,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                        child: FormBuilder(
                            // key: _formkey,
                            child: FormBuilderDropdown(
                      name: 'jenis Shift',
                      decoration: InputDecoration(
                        labelText: 'Pilih Shift',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text('Cuti Tahunan'),
                          value: 'Cuti Tahunan',
                        ),
                        DropdownMenuItem(
                          child: Text('Cuti Bulanan'),
                          value: 'Cuti Bulanan',
                        ),
                        DropdownMenuItem(
                          child: Text('Cuti Lahiran'),
                          value: 'Cuti Lahiran',
                        ),
                      ],
                    )))
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
                        child: FormBuilder(
                            // key: _formkey,
                            child: FormBuilderDropdown(
                      name: 'jenis Shift',
                      decoration: InputDecoration(
                        labelText: 'Pilih Shift Baru',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text('Cuti Tahunan'),
                          value: 'Cuti Tahunan',
                        ),
                        DropdownMenuItem(
                          child: Text('Cuti Bulanan'),
                          value: 'Cuti Bulanan',
                        ),
                        DropdownMenuItem(
                          child: Text('Cuti Lahiran'),
                          value: 'Cuti Lahiran',
                        ),
                      ],
                    )))
                  ],
                ),
              ),
              // const Spacer(),
              //     Align(
              //   alignment: Alignment.bottomCenter,
              //   child: SizedBox(
              //     width: double.infinity,
              //     child: ElevatedButton(
              //       onPressed: () {
              //         if (_formKey.currentState!.saveAndValidate()) {
              //           Map<String, dynamic> formData =
              //               _formKey.currentState!.value;

              //           print(formData['Alasan']);
              //           print(File(filePickerResult!.files.first.path ?? '')
              //               .path);
              //           handleCutiSubmission(CutiRequest(
              //             from: convertToIso8601(
              //                 formData['CutiDate'].start.toString()),
              //             leave_reason: formData['Alasan'],
              //             leave_file:
              //                 File(filePickerResult!.files.first.path ?? ''),
              //             leave_type: formData['Jenis_Cuti'],
              //             to: convertToIso8601(
              //                 formData['CutiDate'].end.toString()),
              //           ));
              //         }
              //       },
              //       child: Text('Kirim Pengajuan'),
              //     ),
              //   ),
              // ),
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
            onPressed: () {},
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
