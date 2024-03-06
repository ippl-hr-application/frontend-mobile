import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CheckinProve extends StatelessWidget {
  const CheckinProve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            
            
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                
                Navigator.pop(context);
              },
            ),
            Text(
              'Check In',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Tanggal: 06 Maret 2024\nJam: 09.00 - 17.00', // Ganti dengan tanggal dan jam yang sesuai
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                  _captureImage(context);
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.camera_alt, size: 50, color: Colors.blue),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Lokasi',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _captureImage(BuildContext context) async {
    final picker = ImagePicker();
    // final pickedFile = await picker.getImage(source: ImageSource.camera);

    // if (pickedFile != null) {
    // }
  }
}
