// ignore_for_file: must_be_immutable

part of 'absensi_notifier.dart';

/// Represents the state of Absensi in the application.
class AbsensiState extends Equatable {
  AbsensiState({
    this.selectedDropDownValue,
    this.selectedDatesFromCalendar1,
    this.absensiModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  AbsensiModel? absensiModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDatesFromCalendar1,
        absensiModelObj,
      ];

  AbsensiState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    List<DateTime?>? selectedDatesFromCalendar1,
    AbsensiModel? absensiModelObj,
  }) {
    return AbsensiState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      absensiModelObj: absensiModelObj ?? this.absensiModelObj,
    );
  }
}
