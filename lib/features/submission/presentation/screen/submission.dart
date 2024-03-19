// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/presentation/screen/providers/submission_provider.dart';

class Submission extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final submissionHistoryData = ref.watch(submissionProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          "Pengajuan",
          style: TextStyle(color: Colors.white, fontSize: 18),
        )),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: submissionHistoryData.when(
              data: (data) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(data?[index].type.toString() ?? ''));
                  },
                );
              },
              error: (error, stackTrace) =>
                  Center(child: Text('Error: $error')),
              loading: () => Center(child: CircularProgressIndicator()),
            )),
      ),
    );
  }
}
