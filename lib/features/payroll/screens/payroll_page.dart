import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PayrollPage extends StatefulWidget {
  const PayrollPage({Key? key}) : super(key: key);

  @override
  _PayrollPageState createState() => _PayrollPageState();
}

class _PayrollPageState extends State<PayrollPage> {
  int? selectedMonth;
  int? selectedYear;
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  static const List<String> months = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  // Dummy values for income items
  double basicSalary = 5000000;
  double overtimeSalary = 1000000;
  double bonus = 2000000;
  double penalties = 500000;

  void _showMonthPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Pilih Bulan"),
          children: List.generate(
            12,
            (index) => SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, index + 1);
              },
              child: Text('${months[index]}'),
            ),
          ),
        );
      },
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedMonth = value;
          monthController.text = months[selectedMonth! - 1];
        });
      }
    });
  }

  void _showYearPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Pilih Tahun"),
          children: List.generate(
            50,
            (index) => SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, DateTime.now().year - index);
              },
              child: Text('${DateTime.now().year - index}'),
            ),
          ),
        );
      },
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedYear = value;
          yearController.text = selectedYear.toString();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalIncome = basicSalary + overtimeSalary + bonus - penalties;

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
              top: 18,
              child: Center(
                child: Text(
                  "Slip Gaji",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilih bulan dan tahun:',
              style: TextStyle(fontSize: 16.0),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => _showMonthPicker(context),
                    child: InputDecorator(
                      decoration: InputDecoration(
                        hintText: selectedMonth != null
                            ? "Bulan: ${months[selectedMonth! - 1]}"
                            : "Pilih Bulan",
                        hintStyle: TextStyle(
                            color:
                                Colors.black), 
                        border: OutlineInputBorder(),
                      ),
                      child: TextField(
                        controller: monthController,
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 46),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () => _showYearPicker(context),
                    child: InputDecorator(
                      decoration: InputDecoration(
                        hintText: selectedYear != null
                            ? "Tahun: $selectedYear"
                            : "Pilih Tahun",
                        border: OutlineInputBorder(),
                      ),
                      child: TextField(
                        controller: yearController,
                        enabled: false,
                        textAlign: TextAlign.center, // Align text to center
                        style: TextStyle(fontSize: 46), // Increase text size
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Pendapatan',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Gaji Pokok'),
                    trailing: Text('Rp ${basicSalary.toStringAsFixed(0)}'),
                  ),
                  ListTile(
                    title: Text('Gaji Lembur'),
                    trailing: Text('Rp ${overtimeSalary.toStringAsFixed(0)}'),
                  ),
                  ListTile(
                    title: Text('Bonus'),
                    trailing: Text('Rp ${bonus.toStringAsFixed(0)}'),
                  ),
                  ListTile(
                    title: Text(
                      'Pelanggaran',
                      style: TextStyle(color: Colors.red),
                    ),
                    trailing: Text(
                      'Rp ${penalties.toStringAsFixed(0)}',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Total:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 10),
            Text(
              'Rp ${totalIncome.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.green),
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
              // Perform action on button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: const Text(
              "Download Slip Gaji",
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
}
