import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insan_s_application2/presentation/pengajuan_resign_screen/models/pengajuan_resign_model.dart';
part 'pengajuan_resign_state.dart';

final pengajuanResignNotifier =
    StateNotifierProvider<PengajuanResignNotifier, PengajuanResignState>(
  (ref) => PengajuanResignNotifier(PengajuanResignState(
    alasanController: TextEditingController(),
    pengajuanResignModelObj: PengajuanResignModel(),
  )),
);

/// A notifier that manages the state of a PengajuanResign according to the event that is dispatched to it.
class PengajuanResignNotifier extends StateNotifier<PengajuanResignState> {
  PengajuanResignNotifier(PengajuanResignState state) : super(state) {}
}
