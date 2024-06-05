import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'camera_state.dart';
import 'review_picture_screen.dart';
import 'package:intl/intl.dart'; // Import intl package for date formatting

class CheckinProve extends StatelessWidget {
  const CheckinProve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                context.go('/');
              },
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Bukti Kehadiran',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      body: const CameraView(),
    );
  }
}

class CameraView extends ConsumerStatefulWidget {
  const CameraView({super.key});

  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends ConsumerState<CameraView> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  bool _isFlashOn = false;
  List<CameraDescription>? _cameras;
  String _currentDateTime = '';
  late TextEditingController _locationController;
  late TextEditingController _descriptionController;
  int _selectedCameraIndex = 0;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _updateDateTime();
    _locationController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  void _updateDateTime() {
    setState(() {
      _currentDateTime =
          DateFormat('EEEE, d MMMM yyyy, HH:mm:ss').format(DateTime.now());
    });
  }

  Future<void> _initializeCamera() async {
    try {
      _cameras = await availableCameras();
      if (_cameras!.isNotEmpty) {
        _controller = CameraController(
          _cameras![_selectedCameraIndex],
          ResolutionPreset.high,
        );
        _initializeControllerFuture = _controller!.initialize().then((_) {
          if (mounted) {
            setState(() {});
          }
        }).catchError((e) {
          print("Error initializing camera: $e");
        });
      } else {
        print("No cameras available");
      }
    } catch (e) {
      print("Error initializing camera: $e");
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    _locationController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _toggleFlash() async {
    if (_controller != null) {
      _isFlashOn = !_isFlashOn;
      await _controller!
          .setFlashMode(_isFlashOn ? FlashMode.torch : FlashMode.off);
      setState(() {});
    }
  }

  Future<void> _switchCamera() async {
    if (_cameras != null && _cameras!.length > 1) {
      _selectedCameraIndex = (_selectedCameraIndex + 1) % _cameras!.length;
      await _initializeCamera();
      setState(() {});
    }
  }

  Future<void> _takePicture() async {
    if (_locationController.text.isEmpty) {
      _showValidationError(context,
          'Lokasi harus diisi sebelum mengambil foto ! - Silahkan buka halaman Lokasi terlebih dahulu.');
      return;
    }

    if (_controller != null && _controller!.value.isInitialized) {
      try {
        await _initializeControllerFuture;
        final XFile imageFile = await _controller!.takePicture();
        final imagePath = imageFile.path;

        ref.read(cameraStateProvider.notifier).setImagePath(imagePath);
        ref.read(cameraStateProvider.notifier).setTimestamp(DateTime.now());

        if (mounted && _validateInputs()) {
          context.go('/review');
        } else {
          _showValidationError(context);
        }
      } catch (e) {
        print("Error taking picture: $e");
      }
    } else {
      print("Camera not initialized");
    }
  }

  bool _validateInputs() {
    final location = _locationController.text;
    return location == 'Terjangkau' || location == 'Tidak Terjangkau';
  }

  void _showValidationError(BuildContext context, [String? message]) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message ??
            'Lokasi harus diisi dengan nilai "Terjangkau" atau "Tidak Terjangkau" dari data Checkin Map.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showEditingAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Peringatan'),
        content: const Text(
            'Buka halaman peta terlebih dahulu untuk mengisi lokasi.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cameraState = ref.watch(cameraStateProvider);

    if (_locationController.text != cameraState.location) {
      _locationController.text = cameraState.location;
    }

    return Stack(
      children: [
        FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                _controller != null) {
              return CameraPreview(_controller!);
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        Positioned(
          top: 16,
          left: 16,
          right: 16,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  _showEditingAlert(context);
                },
                child: AbsorbPointer(
                  child: TextField(
                    controller: _locationController,
                    readOnly: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Lokasi',
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Color.fromRGBO(32, 81, 229, 0.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Waktu: $_currentDateTime',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _toggleFlash,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: _isFlashOn
                      ? Colors.yellow
                      : const Color.fromARGB(255, 175, 219, 255),
                  padding: const EdgeInsets.all(20),
                ),
                child: Icon(_isFlashOn ? Icons.flash_on : Icons.flash_off),
              ),
              ElevatedButton(
                onPressed: _locationController.text.isEmpty
                    ? () => _showValidationError(
                        context, 'Lokasi harus diisi sebelum mengambil foto.')
                    : _takePicture,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: const Color.fromARGB(255, 175, 219, 255),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(Icons.camera, size: 30),
              ),
              ElevatedButton(
                onPressed: _switchCamera,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: const Color.fromARGB(255, 175, 219, 255),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(Icons.switch_camera, size: 30),
              ),
              ElevatedButton(
                onPressed: () async {
                  final status = await context.push('/checkin-map');
                  if (status != null && status is String) {
                    ref.read(cameraStateProvider.notifier).setLocation(status);
                    _locationController.text = status;
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: const Color.fromARGB(255, 175, 219, 255),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(Icons.map, size: 30),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
