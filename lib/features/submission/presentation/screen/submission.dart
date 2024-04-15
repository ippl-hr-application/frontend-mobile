import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/submission_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/widgets/submission_item.dart';
import 'package:meraih_mobile/widgets/card_app_bar.dart';
import 'package:go_router/go_router.dart';

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
                // color: Colors.white,
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
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            onTap: () {
              context.go('/izin');
            },
            child: const Icon(
              Icons.note_alt_outlined,
              color: Colors.white,
            ),
            label: 'Izin',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
          SpeedDialChild(
            onTap: () {
              context.go('/cuti');
            },
            child: const Icon(
              Icons.date_range_outlined,
              color: Colors.white,
            ),
            label: 'Cuti',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
            shape: const CircleBorder(),
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   child: const ButtomBar(),
      // ),
    );
  }
}
