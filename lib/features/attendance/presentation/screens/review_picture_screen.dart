import 'dart:io';
import 'package:flutter/material.dart';

class ReviewPictureScreen extends StatelessWidget {
  final String imagePath;
  final TextEditingController locationController;
  final TextEditingController descriptionController;
  final TextEditingController ipController;

  const ReviewPictureScreen({
    Key? key,
    required this.imagePath,
    required this.locationController,
    required this.descriptionController,
    required this.ipController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        title: const Text('Review and Submit'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.file(File(imagePath)),
            const SizedBox(height: 16),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Lokasi',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Keterangan Tambahan',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: ipController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'IP Address',
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Retake Picture'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement your logic to submit data to the database here.
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
