// ignore_for_file: must_be_immutable

part of 'daftar_pengajuan_container_notifier.dart';

/// Represents the state of DaftarPengajuanContainer in the application.
class DaftarPengajuanContainerState extends Equatable {
  DaftarPengajuanContainerState({this.daftarPengajuanContainerModelObj});

  DaftarPengajuanContainerModel? daftarPengajuanContainerModelObj;

  @override
  List<Object?> get props => [
        daftarPengajuanContainerModelObj,
      ];

  DaftarPengajuanContainerState copyWith(
      {DaftarPengajuanContainerModel? daftarPengajuanContainerModelObj}) {
    return DaftarPengajuanContainerState(
      daftarPengajuanContainerModelObj: daftarPengajuanContainerModelObj ??
          this.daftarPengajuanContainerModelObj,
    );
  }
}
