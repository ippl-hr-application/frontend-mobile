import 'package:flutter/material.dart';

class DetailTask extends StatelessWidget {
  const DetailTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Rekapitulasi',
                  style: TextStyle(fontSize: 20.0),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  icon: const Icon(Icons.cancel),
                  color: const Color.fromRGBO(32, 81, 229, 1),
                ),
              ],
            ),
            content: const Text("1. Menghitung laporan keuangan bulan ini"),
          ),
        ),
        child: const Text('Detail'),
      ),
    );
  }
}
