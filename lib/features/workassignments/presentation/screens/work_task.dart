import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/workassignments/presentation/provider/tasks_provider.dart';
import 'package:meraih_mobile/features/workassignments/presentation/widget/detail_task.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/workassignments/presentation/widget/detail_task.dart';
import 'package:meraih_mobile/features/workassignments/presentation/widget/item_tasks.dart';

class WorkTask extends ConsumerWidget {
  const WorkTask({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksHistoryData = ref.watch(tasksProvider);
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
                  "Task Pekerjaan",
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
            // const Text("Select Tanggal"),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: tasksHistoryData.when(
                  data: (data) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data == null ? 0 : data.tasks?.length,
                      itemBuilder: (context, int index) {
                        if (data?.tasks?[index] == null) {
                          return Container(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              "Task perkerjaan belum tersedia",
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        } else {
                          return ItemTasks(
                              title: data?.tasks?[index].title,
                              description: data?.tasks?[index].description,
                              endDate: data?.tasks?[index].endDate);
                        }
                      },
                    );
                  },
                  error: (error, stackTrace) =>
                      Center(child: Text('Error: $error')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ))
          ],
        ),
      ),
    );
  }
}
