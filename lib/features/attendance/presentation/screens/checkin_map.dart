import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CheckinMap extends StatefulWidget {
  const CheckinMap({Key? key}) : super(key: key);

  @override
  _CheckinMapState createState() => _CheckinMapState();
}

class _CheckinMapState extends State<CheckinMap> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2051E5),
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
      body: GoogleMap(
        onMapCreated: (controller) {
          setState(() {
            mapController = controller;
          });
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(40.7128, -74.0060),
          zoom: 15.0,
        ),
      ),
    );
  }
}
