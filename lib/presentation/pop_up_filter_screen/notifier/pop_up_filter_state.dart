// ignore_for_file: must_be_immutable

part of 'pop_up_filter_notifier.dart';

/// Represents the state of PopUpFilter in the application.
class PopUpFilterState extends Equatable {
  PopUpFilterState({
    this.dalamProses = false,
    this.diTolak = false,
    this.diTerima = false,
    this.statusPengajuan = "",
    this.popUpFilterModelObj,
  });

  PopUpFilterModel? popUpFilterModelObj;

  bool dalamProses;

  bool diTolak;

  bool diTerima;

  String statusPengajuan;

  @override
  List<Object?> get props => [
        dalamProses,
        diTolak,
        diTerima,
        statusPengajuan,
        popUpFilterModelObj,
      ];

  PopUpFilterState copyWith({
    bool? dalamProses,
    bool? diTolak,
    bool? diTerima,
    String? statusPengajuan,
    PopUpFilterModel? popUpFilterModelObj,
  }) {
    return PopUpFilterState(
      dalamProses: dalamProses ?? this.dalamProses,
      diTolak: diTolak ?? this.diTolak,
      diTerima: diTerima ?? this.diTerima,
      statusPengajuan: statusPengajuan ?? this.statusPengajuan,
      popUpFilterModelObj: popUpFilterModelObj ?? this.popUpFilterModelObj,
    );
  }
}
