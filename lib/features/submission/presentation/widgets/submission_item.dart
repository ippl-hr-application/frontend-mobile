import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom:
              BorderSide(width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
        ),
      ),
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20.0),
                ),
                const SizedBox(height: 6.0),
                Text(
                  formatDate(submissionDate.toString()),
                  style: const TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
                const SizedBox(height: 6.0),
                Text(
                  status.toString().toLowerCase(),
                  style: TextStyle(
                      fontSize: 16.0,
                      color: status.toString() == "PENDING"
                          ? Colors.grey
                          : status.toString() == "ACCEPTED"
                              ? Colors.green
                              : Colors.red),
                ),
              ],
            ),
            Container(
                child: status.toString() == 'PENDING'
                    ? IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      )
                    : SizedBox())
          ],
        ),
      ),
    );
  }
}  