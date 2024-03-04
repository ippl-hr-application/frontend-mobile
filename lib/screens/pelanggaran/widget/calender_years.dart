import 'package:flutter/material.dart';

class CalenderYears extends StatelessWidget {
  const CalenderYears({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2024));

              if (datePicked != null) {
                print('Date Selected: ${datePicked.year}');
              }
            },
            child: const Text("Pilih Tahun"),
          ),
        ],
      ),
    );
  }
}
