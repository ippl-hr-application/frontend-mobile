import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/pengajuan/izin/presentation/providers/izin_provider.dart';

class SubmissionIzin extends ConsumerWidget {
  TextEditingController _permission_reason = TextEditingController();
  TextEditingController _permission_file = TextEditingController();
  String _from = "";
  String _to = "";

  SubmissionIzin({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            context.go('/');
          },
        ),
        flexibleSpace: const Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 40,
              child: Center(
                child: Text(
                  "Pengajuan Izin",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.8),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 8.0),
                  child: Column(
                    children: [
                      // Tanggal Pengajuan Izin
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 186, 186, 186)),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(32, 81, 229, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Image.asset('assets/dates1.png')),
                            const SizedBox(width: 16.0),
                            const Text("Pili Tanggal")
                          ],
                        ),
                      ),
                      // Alasan Pengajuan Izin
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 186, 186, 186)),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(32, 81, 229, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Image.asset('assets/reason.png')),
                            const SizedBox(width: 16.0),
                            TextField(
                              controller: _permission_reason,
                              cursorColor: Colors.black,
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black),
                                labelText: "Alasan Izin",
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 0.0),
                                // border: OutlineInputBorder(
                                //     borderSide: const BorderSide(
                                //         color: Colors.black, width: 0.5),
                                //     borderRadius: BorderRadius.circular(8.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        // decoration: const BoxDecoration(
                        //   border: Border(
                        //     bottom: BorderSide(
                        //         width: 1.0,
                        //         color: Color.fromARGB(255, 186, 186, 186)),
                        //   ),
                        // ),
                        child: Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 12.0),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(32, 81, 229, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Image.asset('assets/files.png')),
                            const SizedBox(width: 16.0),
                            ElevatedButton(
                                onPressed: selectFile,
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(0, 0, 0, 0),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.0)))),
                                child: const Text(
                                  "Files",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                            const Text("_permission_file as String")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            // color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: ElevatedButton(
            onPressed: () {
              () async {
                await ref.read(izinControllerProvider.notifier).handleIzin(
                    from: _from,
                    permission_reason: _permission_reason.text,
                    permission_file: _permission_file.text,
                    to: _to);
              };
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: const Text(
              "Kirim Pengajuan",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      if (result.files.isNotEmpty && result.files.single.path != null) {
        // User selected a file
        File file_1 = File(result.files.single.path!);
        _permission_file = file_1 as TextEditingController;
      } else {
        // User canceled the picker or no file selected
        print("User canceled the picker or no file selected");
      }
    } else {
      // File picker was closed without making a selection
      print("File picker closed without making a selection");
    }
  }
}
