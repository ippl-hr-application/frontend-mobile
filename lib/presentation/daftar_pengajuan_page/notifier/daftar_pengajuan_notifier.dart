import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/daftarpengajuan_item_model.dart';
import 'package:insan_s_application2/presentation/daftar_pengajuan_page/models/daftar_pengajuan_model.dart';
part 'daftar_pengajuan_state.dart';

final daftarPengajuanNotifier =
    StateNotifierProvider<DaftarPengajuanNotifier, DaftarPengajuanState>(
        (ref) => DaftarPengajuanNotifier(DaftarPengajuanState(
            selectedDropDownValue: SelectionPopupModel(title: ''),
            daftarPengajuanModelObj: DaftarPengajuanModel(dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ], daftarpengajuanItemList: [
              DaftarpengajuanItemModel(
                  cutiTahunan: "Cuti Tahunan",
                  juni: "21 Juni 2023",
                  dalamProses: "Dalam Proses"),
              DaftarpengajuanItemModel(
                  cutiTahunan: "Izin ",
                  juni: "21 Juni 2023",
                  dalamProses: "Ditolak"),
              DaftarpengajuanItemModel(
                  cutiTahunan: "Sakit",
                  juni: "21 Juni 2023",
                  dalamProses: "Diterima"),
              DaftarpengajuanItemModel(
                  cutiTahunan: "Ganti Shift",
                  juni: "21 Juni 2023",
                  dalamProses: "Diterima")
            ]))));

/// A notifier that manages the state of a DaftarPengajuan according to the event that is dispatched to it.
class DaftarPengajuanNotifier extends StateNotifier<DaftarPengajuanState> {
  DaftarPengajuanNotifier(DaftarPengajuanState state) : super(state);
}
