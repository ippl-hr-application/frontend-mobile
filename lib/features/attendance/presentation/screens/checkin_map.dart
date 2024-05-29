import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:go_router/go_router.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/map/data/company_map_repository.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/map/domain/company_map.dart';

class CheckinMap extends ConsumerStatefulWidget {
  const CheckinMap({super.key});

  @override
  _CheckinMapState createState() => _CheckinMapState();
}

class _CheckinMapState extends ConsumerState<CheckinMap> {
  LatLng? _userLocation;
  LatLng? _customMarkerLocation;
  String _status = 'Tidak Terjangkau';
  double? _distance;
  
  get longitute => null;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

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
    if (_userLocation != null && _customMarkerLocation != null) {
      final distance = Geolocator.distanceBetween(
        _customMarkerLocation!.latitude,
        _customMarkerLocation!.longitude,
        _userLocation!.latitude,
        _userLocation!.longitude,
      );

      setState(() {
        _distance = distance;
        _status = distance <= 10000000000 ? 'Terjangkau' : 'Tidak Terjangkau';
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
      body: ref.watch(companyBranchIdProvider).when(
            data: (companyBranchId) {
              final companyMapAsyncValue =
                  ref.watch(companyBranchProvider(companyBranchId));
              return companyMapAsyncValue.when(
                data: (companyMap) {
                  final branch = companyMap.data?.branch;
                  print(branch);
                  if (branch == null ||
                      branch.latitude == null ||
                      branch.longitute == null) {
                    return _buildMap(branch?.latitude, branch?.longitute, branch?.hqInitial,
                        branch?.city, branch?.province, branch?.address, null);
                  }

                  _customMarkerLocation =
                      LatLng(branch.latitude!, branch.longitute!);
                  _updateStatus();

                  return _buildMap(
                      branch.latitude,
                      branch.longitute,
                      branch.hqInitial,
                      branch.city,
                      branch.province,
                      branch.address,
                      branch);
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Center(child: Text('Error: $error')),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
    );
  }

  Widget _buildMap(double? latitude, double? longitute, String? hqInitial,
      String? city, String? province, String? address, Branch? branch) {
    _customMarkerLocation = latitude   != null && longitute != null
        ? LatLng(latitude, longitute)
        : null;

    return Stack(
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
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
                          'Your Location!',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            if (_customMarkerLocation != null)
              MarkerLayer(
                markers: [
                  Marker(
                    width: 100.0,
                    height: 100.0,
                    point: _customMarkerLocation!,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                          size: 40.0,
                        ),
                        Text(
                          'HQ Location',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            if (_userLocation != null && _customMarkerLocation != null)
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [
                      _userLocation!,
                      _customMarkerLocation!,
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
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Jarak: ${_distance!.toStringAsFixed(2)} meters',
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                  ),
                ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Status: $_status',
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'HQ Initial: ${hqInitial ?? "null"}',
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'City: ${city ?? "null"}',
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Province: ${province ?? "null"}',
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Address: ${address ?? "null"}',
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black),
                    )),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Longitude: ${longitute ?? "null"}',
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black),
                    )),
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Address: ${latitude ?? "null"}',
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}