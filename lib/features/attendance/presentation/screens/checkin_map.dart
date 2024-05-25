import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:go_router/go_router.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'camera_state.dart';

class CheckinMap extends StatefulWidget {
  const CheckinMap({super.key});

  @override
  _CheckinMapState createState() => _CheckinMapState();
}

class _CheckinMapState extends State<CheckinMap> {
  LatLng? _userLocation;
  final LatLng _customMarkerLocation = const LatLng(-1.2279, 116.8157); // Default position for the custom marker
  String _status = 'Tidak Terjangkau'; // Initial status
  double? _distance; // Distance between the two markers

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    // Check for location permissions.
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // Get the current location of the user.
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _userLocation = LatLng(position.latitude, position.longitude);
      _updateStatus(); // Update status based on the user's location
    });
  }

  void _updateStatus() {
    if (_userLocation != null) {
      final distance = Geolocator.distanceBetween(
        _customMarkerLocation.latitude,
        _customMarkerLocation.longitude,
        _userLocation!.latitude,
        _userLocation!.longitude,
      );


      setState(() {
        _distance = distance;
        // Set the threshold for the distance to 50 meters
        _status = distance <= 120 ? 'Terjangkau' : 'Tidak Terjangkau';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Pass the status back when navigating back
            context.pop(_status);
          },
        ),
        flexibleSpace: const Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 18,
              child: Center(
                child: Text(
                  "Lokasi Kamu!",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: _userLocation ?? const LatLng(-1.2346, 116.8352),
              initialZoom: 15.0,
              onPositionChanged: (MapPosition position, bool hasGesture) {
                _updateStatus();
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: const ['a', 'b', 'c'],
              ),
              if (_userLocation != null)
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 100.0,
                      height: 100.0,
                      point: _userLocation!,
                      child: const Column(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.red,
                            size: 40.0,
                          ),
                          Text(
                            'User Location',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 100.0,
                    height: 100.0,
                    point: _customMarkerLocation,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                          size: 40.0,
                        ),
                        Text(
                          'Custom Location',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (_userLocation != null)
                PolylineLayer(
                  polylines: [
                    Polyline(
                      points: [
                        _userLocation!,
                        _customMarkerLocation,
                      ],
                      color: Colors.green,
                      strokeWidth: 4.0,
                    ),
                  ],
                ),
            ],
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_distance != null)
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Jarak: ${_distance!.toStringAsFixed(2)} meters',
                      style: const TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                  ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Status: $_status',
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
