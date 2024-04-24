import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CheckinMap extends StatelessWidget {
  const CheckinMap({super.key});

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
            Navigator.pop(context);
          },
        ),
        flexibleSpace: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 18,
              child: Center(
                child: Text(
                  "Lokasi Kamu !",
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
              center: LatLng(-2.5489, 118.0149),
              zoom: 5.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
