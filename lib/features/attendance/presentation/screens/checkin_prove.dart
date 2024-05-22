import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:meraih_mobile/features/attendance/presentation/screens/review_picture_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:go_router/go_router.dart';

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
                context.go("/");
              },
            ),
            const Center(
              child: Text(
                'Check In - Bukti Kehadiran',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      body: const CameraView(),
    );
  }
}

class CameraView extends StatefulWidget {
  const CameraView({super.key});

  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  bool _isFlashOn = false;
  List<CameraDescription>? _cameras;
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _ipController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      _cameras = await availableCameras();
      if (_cameras!.isNotEmpty) {
        _controller = CameraController(
          _cameras![0],
          ResolutionPreset.high,
        );
        _initializeControllerFuture = _controller!.initialize().then((_) {
          if (mounted) {
            setState(() {}); // Refresh UI after camera initialization
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
    _ipController.dispose();
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

  Future<void> _takePicture() async {
    if (_controller != null && _controller!.value.isInitialized) {
      try {
        await _initializeControllerFuture;
        final directory = await getTemporaryDirectory();
        final filePath = '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.png';
        final XFile imageFile = await _controller!.takePicture();
        await imageFile.saveTo(filePath);

        print("Picture taken: $filePath");

        // Check if the widget is still mounted before navigating
        if (mounted) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ReviewPictureScreen(
                imagePath: filePath,
                locationController: _locationController,
                descriptionController: _descriptionController,
                ipController: _ipController,
              ),
            ),
          );
        }
      } catch (e) {
        print("Error taking picture: $e");
      }
    } else {
      print("Camera not initialized");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                _controller != null) {
              return CameraPreview(_controller!);
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
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
              TextField(
                controller: _locationController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Lokasi',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _descriptionController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Keterangan Tambahan',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _ipController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'IP Address',
                  labelStyle: TextStyle(color: Colors.white),
                ),
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
              FloatingActionButton(
                heroTag: 'flashButton',
                onPressed: _toggleFlash,
                child: Icon(_isFlashOn ? Icons.flash_on : Icons.flash_off),
              ),
              FloatingActionButton(
                heroTag: 'takePictureButton',
                onPressed: () {
                  print("Take picture button pressed");
                  _takePicture();
                },
                child: const Icon(Icons.camera),
              ),
              FloatingActionButton(
                heroTag: 'mapButton',
                child: const Icon(Icons.map),
                onPressed: () {
                  context.go('/checkin-map');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
