import 'package:flutter/material.dart';
import 'package:meraih_mobile/utils/format_date.dart';

class SubmissionItem extends StatelessWidget {
  final int? submissionId;
  final String? submissionDate;
  final String? status;
  final String? type;
  const SubmissionItem(
      {required this.submissionId,
      required this.submissionDate,
      required this.status,
      required this.type,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type.toString(),
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Text(
              formatDate(submissionDate.toString()),
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              status.toString().toLowerCase(),
              style: TextStyle(
                  color: status.toString() == "PENDING"
                      ? Colors.grey
                      : Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
