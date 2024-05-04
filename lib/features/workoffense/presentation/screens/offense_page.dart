import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/data/pelanggaran.dart';
import 'package:meraih_mobile/models/pelanggaran.dart';
// import 'package:meraih_mobile/screens/pelanggaran/widget/calender_years.dart';

class OffenceScreen extends StatefulWidget {
  const OffenceScreen({super.key});

  @override
  State<OffenceScreen> createState() => _OffenceScreenState();
}

class _OffenceScreenState extends State<OffenceScreen> {
  String showYears = 'Pilih Tahun';
  DateTime _selectedYear = DateTime.now();

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
            context.go("/");
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
                  "Pelanggaran",
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
            Container(
              height: 60.0,
              width: double.infinity,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(32, 81, 229, 1)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 16.0), // Add padding here
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 0.8),
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          showYears,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectYear(context);
                          },
                          child: const Icon(Icons.calendar_month),
                        )
                      ],
                    )),
              ),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                // decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (Pelanggaran data in pelanggaranData)
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 186, 186, 186)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title,
                              style: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              data.date,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              data.descriptions,
                              style: const TextStyle(fontSize: 16.0),
                            )
                          ],
                        ),
                      )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  selectYear(contex) async {
    // print("calling date picker");
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Center(child: Text("Pilih Tahun")),
              content: SizedBox(
                  width: 300,
                  height: 300,
                  child: YearPicker(
                    firstDate: DateTime(DateTime.now().year - 5, 1),
                    // lastDate: DateTime.now(),
                    lastDate: DateTime.now(),
                    // ignore: deprecated_member_use
                    initialDate: DateTime.now(),
                    selectedDate: _selectedYear,
                    onChanged: (DateTime dateTime) {
                      setState(() {
                        _selectedYear = dateTime;
                        showYears = "${dateTime.year}";
                      });
                      Navigator.pop(context);
                    },
                  )));
        });
  }
}
