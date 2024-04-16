// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/submission_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/widgets/submission_item.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';

class Submission extends ConsumerWidget {
  const Submission({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final submissionHistoryData = ref.watch(submissionProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
        title: const Center(
          child: Text(
            "Pengajuan",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text("Tanggal"),
                Text("Filter"),
              ],
            ),
            ElevatedButton(
              onPressed: () => _showMonthPicker(context),
              child: Text('Choose Month & Year'),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
      ),
      bottomNavigationBar: Container(
        child: const ButtomBar(),
      ),
    );
  }

  Future<void> _showMonthPicker(BuildContext context) async {
    final DateTime? picked = await showMonthPicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      print('picked: $picked');
    }
  }
}
