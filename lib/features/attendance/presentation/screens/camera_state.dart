import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class CameraState extends ChangeNotifier {
  String _location = '';

  String? _imagePath;
  DateTime? _timestamp;

  String get location => _location;

  String? get imagePath => _imagePath;
  DateTime? get timestamp => _timestamp;

  void setLocation(String value) {
    _location = value;
    notifyListeners();
  }

  void setImagePath(String path) {
    _imagePath = path;
    notifyListeners();
  }

  void setTimestamp(DateTime timestamp) {
    _timestamp = timestamp;
    notifyListeners();
  }

  void clear() {
    _location = '';
    _imagePath = null;
    _timestamp = null;
    notifyListeners();
  }
}

final cameraStateProvider = ChangeNotifierProvider((ref) => CameraState());
