import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meraih_mobile/features/workassignments/presentation/widget/detail_task.dart';
import 'package:meraih_mobile/utils/format_date.dart';

class ItemTasks extends StatelessWidget {
  final String? title;
  final String? description;
  final String? endDate;
  final String? firstName;
  final String? jobPosition;

  const ItemTasks(
      {required this.title,
      required this.firstName,
      required this.description,
      required this.endDate,
      required this.jobPosition,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom:
              BorderSide(width: 1.0, color: Color.fromARGB(255, 186, 186, 186)),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    firstName.toString(),
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  const Text(
                    "||",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    jobPosition.toString(),
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              DetailTask(title: title, description: description)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toString(),
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.normal),
                  ),
                  Text(formatDate(endDate.toString()))
                ],
              ),
              // const Text("Done")
            ],
          )
        ],
      ),
    );
  }
}
