import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insan_s_application2/presentation/daftar_pengajuan_container_screen/models/daftar_pengajuan_container_model.dart';
part 'daftar_pengajuan_container_state.dart';

final daftarPengajuanContainerNotifier = StateNotifierProvider<
        DaftarPengajuanContainerNotifier, DaftarPengajuanContainerState>(
    (ref) => DaftarPengajuanContainerNotifier(DaftarPengajuanContainerState(
        daftarPengajuanContainerModelObj: DaftarPengajuanContainerModel())));

/// A notifier that manages the state of a DaftarPengajuanContainer according to the event that is dispatched to it.
class DaftarPengajuanContainerNotifier
    extends StateNotifier<DaftarPengajuanContainerState> {
  DaftarPengajuanContainerNotifier(DaftarPengajuanContainerState state)
      : super(state);
}
