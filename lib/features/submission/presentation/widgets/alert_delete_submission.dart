import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/delete_submission_provider.dart';
import 'package:meraih_mobile/features/submission/presentation/providers/submission_provider.dart';

class AlertDeleteSubmission extends ConsumerWidget {
  final String? type;
  final int? submissionId;

  const AlertDeleteSubmission(
      {required this.type, required this.submissionId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoAlertDialog(
      title: const Text("Delete Submission"),
      content: Text("Apakah Anda ingin  menghapus ${type.toString()}"),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('No'),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () async {
            final success = await handleDeleteSubmission(ref, submissionId!);
            if (success) {
              // Muat ulang data di halaman submission
              ref.invalidate(submissionProvider);

              // Navigasikan kembali ke halaman /submission
              // ignore: use_build_context_synchronously
              Navigator.popUntil(context, ModalRoute.withName('/submission'));
            } else {
              // Tampilkan pesan kesalahan atau lakukan sesuatu jika penghapusan gagal
              print('Failed to delete submission');
            }
            // print(submissionId);
            // Navigator.pop(context);
          },
          child: const Text('Yes'),
        ),
      ],
    );
  }

  static void show(BuildContext context, {String? type, int? submissionId}) {
    showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDeleteSubmission(
        type: type,
        submissionId: submissionId,
      ),
    );
  }
}
