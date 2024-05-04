import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';

class CheckinProve extends StatelessWidget {
    const CheckinProve({super.key});


  @override
  Widget build(BuildContext context) {
    return _CheckinProve();
  }
}

class _CheckinProve extends StatefulWidget {
  @override
  _CheckinProveState createState() => _CheckinProveState();
}

class _CheckinProveState extends State<_CheckinProve> {
  String ipAddress = 'Loading...';

  @override
  void initState() {
    super.initState();
    _getIPAddress();
  }

  Future<void> _getIPAddress() async {
    try {
      final String result = await _getDeviceIP();
      setState(() {
        ipAddress = result;
      });
    } catch (e) {
      setState(() {
        ipAddress = 'Failed to get IP address';
      });
    }
  }

  Future<String> _getDeviceIP() async {
    for (var interface in await NetworkInterface.list()) {
      for (var addr in interface.addresses) {
        if (!addr.isLoopback) {
          if (addr.type.name.toLowerCase() == 'ipv4') {
            return addr.address;
          }
        }
      }
    }
    throw Exception('No IP address found');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 81, 229, 1),
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                context.go("/");
              },
            ),
            Center(
              child: Text(
                'Check In',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
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
              'Tanggal: 06 Maret 2024\nJam: 09.00 - 17.00',
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
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'IP Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              controller: TextEditingController(text: ipAddress),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/checkin-success');
                },
                child: Text('Check In'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _captureImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {

    }
  }
}