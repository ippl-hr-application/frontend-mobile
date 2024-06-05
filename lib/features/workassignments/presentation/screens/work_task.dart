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
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              context.go("/");
            },
          ),
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 2)),
              Text(
                "Task Pekerjaan",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // const Text("Select Tanggal"),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: tasksHistoryData.when(
                data: (data) {
                  if (data == null ||
                      data.tasks == null ||
                      data.tasks!.isEmpty) {
                    return Center(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 0.0),
                          child: Text("Belum Ada Task Pekerjaan")),
                    );
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.tasks!.length,
                    itemBuilder: (context, int index) {
                      return ItemTasks(
                        title: data.tasks![index].title,
                        description: data.tasks![index].description,
                        endDate: data.tasks![index].endDate,
                        firstName: data.tasks![index].givenbyId?.first_name,
                        jobPosition:
                            data.tasks![index].givenbyId?.job_position?.name,
                      );
                    },
                  );
                },
                error: (error, stackTrace) =>
                    Center(child: Text('Error: $error')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
