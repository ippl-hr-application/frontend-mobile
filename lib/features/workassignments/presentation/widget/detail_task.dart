import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DetailTask extends StatelessWidget {
  final String? title;
  final String? description;

  const DetailTask({required this.title, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title.toString(),
                  style: const TextStyle(fontSize: 20.0),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  icon: const Icon(Icons.cancel),
                  color: const Color.fromRGBO(32, 81, 229, 1),
                ),
              ],
            ),
            content: Text(description.toString()),
          ),
        ),
        child: const Text('Detail'),
      ),
    );
  }
}
