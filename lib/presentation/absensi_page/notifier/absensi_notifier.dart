import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:insan_s_application2/presentation/absensi_page/models/absensi_model.dart';
part 'absensi_state.dart';

final absensiNotifier = StateNotifierProvider<AbsensiNotifier, AbsensiState>(
  (ref) => AbsensiNotifier(AbsensiState(
    selectedDropDownValue: SelectionPopupModel(title: ''),
    selectedDatesFromCalendar1: [],
    absensiModelObj: AbsensiModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a Absensi according to the event that is dispatched to it.
class AbsensiNotifier extends StateNotifier<AbsensiState> {
  AbsensiNotifier(AbsensiState state) : super(state) {}
}
