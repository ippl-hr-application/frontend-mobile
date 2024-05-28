// class CameraScreen extends StatefulWidget {
//   final CameraDescription camera;

//   const CameraScreen({Key? key, required this.camera}) : super(key: key);

//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     // Create a CameraController
//     _controller = CameraController(
//       // Get a specific camera from the list of available cameras
//       widget.camera,
//       // Define the resolution to use
//       ResolutionPreset.medium,
//     );

//     // Next, initialize the controller. This returns a Future
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     // Dispose of the controller when the widget is disposed
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Take a Picture')),
//       // Wait until the controller is initialized before displaying the camera preview
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             // If the Future is complete, display the preview
//             return CameraPreview(_controller);
//           } else {
//             // Otherwise, display a loading indicator
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.camera),
//         // Take a picture when the user taps the button
//         onPressed: () async {
//           try {
//             // Ensure that the camera is initialized
//             await _initializeControllerFuture;

//             // Attempt to take a picture and return the result
//             final image = await _controller.takePicture();

//             // Pass the captured image back to the previous screen
//             Navigator.pop(context, File(image.path));
//           } catch (e) {
//             // If an error occurs, log the error to the console
//             print(e);
//           }
//         },
//       ),
//     );
//   }
// }
