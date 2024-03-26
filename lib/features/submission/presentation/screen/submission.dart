// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/submission_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/widgets/submission_item.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';

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
        )),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Text("Tanggal"),
                Text("Filter"),
              ],
            ),
            Container(
                padding: const EdgeInsets.all(16.0),
                child: submissionHistoryData.when(
                  data: (data) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data?.length,
                      itemBuilder: (context, index) {
                        return SubmissionItem(
                          submissionId: data?[index].submission_id,
                          submissionDate: data?[index].submission_date,
                          status: data?[index].status,
                          type: data?[index].type,
                        );
                      },
                    );
                  },
                  error: (error, stackTrace) =>
                      Center(child: Text('Error: $error')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                )),
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
}
