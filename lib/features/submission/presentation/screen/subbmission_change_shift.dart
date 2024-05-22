import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:meraih_mobile/core.dart';
import 'package:meraih_mobile/utils/date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:signature/signature.dart';
import 'package:meraih_mobile/features/submission/domain/change_shift.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/change_shift.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/shift_company_provider.dart';
import 'package:meraih_mobile/features/homepage/presentation/provider/home_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/alert_success_submission.dart';

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
    final shiftCompanyData = ref.watch(shiftCompanyProvider);
    final homeHistoryData = ref.watch(homeProvider);

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
                        validator: (value) {
                          if (value == null) {
                            return 'Pilih Tanggal!';
                          }
                        },
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
                        child: homeHistoryData.when(
                      data: (data) {
                        return FormBuilderTextField(
                            initialValue: data!.shiftName.toString(),
                            readOnly: true,
                            name: "shift",
                            validator: (value) {
                              if (value == null) {
                                return 'Pilih Shift!';
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Pilih Shift',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                      width: 1.0, color: Colors.black)),
                            ));
                      },
                      error: (error, stackTrace) =>
                          Center(child: Text('Error: $error')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
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
                        child: shiftCompanyData.when(
                      data: (data) {
                        return FormBuilder(
                            child: FormBuilderDropdown(
                          borderRadius: BorderRadius.circular(8.0),
                          name: 'shift-baru',
                          validator: (value) {
                            if (value == null) {
                              return 'Pilih Shift Baru!';
                            }
                          },
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
                          items: (data!.shifts!
                              .map(
                                (e) => DropdownMenuItem(
                                  child: Text(e.name.toString()),
                                  value: e.shift_id,
                                ),
                              )
                              .toList()),
                        ));
                      },
                      error: (error, stackTrace) =>
                          Center(child: Text('Error: $error')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
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
                          Icons.timelapse_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'keterangan',
                        validator: (value) {
                          if (value == null) {
                            return 'Alasan ganti shift harus diisi!';
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          labelText: 'Alasan ganti shift',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
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

                // print(formData['izinDate']);
                // print(selectedShiftBaru);
                // print(homeHistoryData.asData!.value!.shiftId);

                handleChangeShift(
                        ref,
                        ChangeShiftRequest(
                            targetDate: convertToIso8601(
                                formData['izinDate'].start.toString()),
                            currentShift: int.parse(homeHistoryData
                                .asData!.value!.shiftId
                                .toString()),
                            targetShift: selectedShiftBaru!,
                            reason: formData['keterangan']))
                    .then((changeShiftSubmission) {
                  return showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertSuccessSubmission(
                      message: changeShiftSubmission.message,
                    ),
                  );
                });
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
