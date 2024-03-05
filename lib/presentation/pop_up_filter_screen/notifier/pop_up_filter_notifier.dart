import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insan_s_application2/presentation/pop_up_filter_screen/models/pop_up_filter_model.dart';
part 'pop_up_filter_state.dart';

final popUpFilterNotifier =
    StateNotifierProvider<PopUpFilterNotifier, PopUpFilterState>(
  (ref) => PopUpFilterNotifier(PopUpFilterState(
    dalamProses: false,
    diTolak: false,
    diTerima: false,
    statusPengajuan: '',
    popUpFilterModelObj: PopUpFilterModel(radioList: [
      "lbl_izin2",
      "lbl_sakit",
      "lbl_shift",
      "lbl_mutasi",
      "lbl_lembur"
    ]),
  )),
);

/// A notifier that manages the state of a PopUpFilter according to the event that is dispatched to it.
class PopUpFilterNotifier extends StateNotifier<PopUpFilterState> {
  PopUpFilterNotifier(PopUpFilterState state) : super(state) {}

  void changeCheckBox1(bool value) {
    state = state.copyWith(dalamProses: value);
  }

  void changeCheckBox2(bool value) {
    state = state.copyWith(diTolak: value);
  }

  void changeCheckBox3(bool value) {
    state = state.copyWith(diTerima: value);
  }

  void changeRadioButton1(String value) {
    state = state.copyWith(statusPengajuan: value);
  }
}
