// ignore_for_file: must_be_immutable

part of 'daftar_pengajuan_notifier.dart';

/// Represents the state of DaftarPengajuan in the application.
class DaftarPengajuanState extends Equatable {
  DaftarPengajuanState({
    this.selectedDropDownValue,
    this.daftarPengajuanModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  DaftarPengajuanModel? daftarPengajuanModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        daftarPengajuanModelObj,
      ];

  DaftarPengajuanState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    DaftarPengajuanModel? daftarPengajuanModelObj,
  }) {
    return DaftarPengajuanState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      daftarPengajuanModelObj:
          daftarPengajuanModelObj ?? this.daftarPengajuanModelObj,
    );
  }
}
