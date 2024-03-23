import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/data/bottom_bar.dart';
import 'package:meraih_mobile/data/pengajuan.dart';
import 'package:meraih_mobile/models/buttom_app_model.dart';
import 'package:meraih_mobile/models/pengajuan.dart';
import 'package:meraih_mobile/widgets/daftarPengajuan/custom_icon_button.dart';
import 'package:meraih_mobile/widgets/daftarPengajuan/popUpFilterPengajuan.dart';
// import 'package:meraih_mobile/screens/pelanggaran/widget/calender_years.dart';

class DaftarPengajuanScreen extends StatefulWidget {
  const DaftarPengajuanScreen({super.key});

  @override
  State<DaftarPengajuanScreen> createState() => _DaftarPengajuanScreenState();
}

class _DaftarPengajuanScreenState extends State<DaftarPengajuanScreen> {
  String showYears = 'Pilih Tahun';
  DateTime _selectedYear = DateTime.now();
  bool _isPlusIcon = true;

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
                  "Pengajuan",
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
                  // width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        showYears,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectYear(context);
                            },
                            child: const Icon(Icons.calendar_month),
                          ),
                          const SizedBox(width: 10.0),
                          CustomIconButton(
                              height: 38,
                              width: 44,
                              // padding: const EdgeInsets.all(9),
                              onTap: () {
                                onTapBtnPrefixIcon(context);
                              },
                              child: const Icon(Icons.filter_list_alt)),
                        ],
                      )
                    ],
                  ),
                ), // Replace with your actual widget
              ),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                // decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (Pengajuan data in pengajuanData)
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
      floatingActionButton: SizedBox(
        width: 60,
        height: 60.0,
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
          onPressed: () {
            setState(() {
              _isPlusIcon = !_isPlusIcon; // Mengubah status ikon
            });
            if (_isPlusIcon) {
              // Tutup pop-up
            } else {
              // Tampilkan pop-up
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return AlertDialog(
                        alignment: const Alignment(1.5, 0.5),
                        title:
                            const Center(child: Text("Pilih Jenis Pengajuan")),
                        content: SizedBox(
                          width: 100,
                          height: 300,
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text("Pengajuan Sakit"),
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                  context.go("/pengajuan-sakit");
                                },
                              ),
                              ListTile(
                                title: const Text("Pengajuan Izin"),
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                  context.go("/izin");
                                },
                              ),
                              ListTile(
                                title: const Text("Pengajuan Lembur"),
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                  context.go("/pengajuan-lembur");
                                },
                              ),
                              ListTile(
                                title: const Text("Pengajuan Ganti Shift"),
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                  context.go("/pengajuan-ganti-shift");
                                },
                              ),
                              ListTile(
                                title: const Text("Pengajuan Mutasi"),
                                onTap: () {
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                  context.go("/pengajuan-mutasi");
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }
          },
          child: _isPlusIcon
              ? const Icon(Icons.add, size: 30.0, color: Colors.white)
              : const Icon(Icons.close, size: 30.0, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            for (NavigationsBarApps data in bottomBar)
              InkWell(
                onTap: () {
                  context.go(data.path);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(data.imageAssets),
                    const SizedBox(height: 4.0),
                    Text(
                      data.category,
                      style: const TextStyle(
                          // color: Color(0xFF2196F3)
                          fontSize: 12.0),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }

  onTapBtnPrefixIcon(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const PopUpFilterScreen(); // Replace with your actual screen widget
      },
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
