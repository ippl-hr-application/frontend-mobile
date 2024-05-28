import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meraih_mobile/utils/format_date.dart';
import 'package:meraih_mobile/utils/format_month.dart';

class PayrollItem extends StatelessWidget {
  final int month;
  final String status;
  final int wage;
  const PayrollItem(
      {super.key,
      required this.month,
      required this.status,
      required this.wage});

  @override
  Widget build(BuildContext context) {
    return Table(
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
        },
        border: TableBorder(
          horizontalInside: BorderSide(color: Colors.grey.shade300, width: 0.5),
        ),
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                formatMonth(month),
                style: const TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                status.toString(),
                style: const TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Rp ${wage.toString()}",
                style: const TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),
          ])
        ]);
  }
}
