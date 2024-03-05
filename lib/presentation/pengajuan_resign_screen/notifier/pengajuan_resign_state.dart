// ignore_for_file: must_be_immutable

part of 'pengajuan_resign_notifier.dart';

/// Represents the state of PengajuanResign in the application.
class PengajuanResignState extends Equatable {
  PengajuanResignState({
    this.alasanController,
    this.pengajuanResignModelObj,
  });

  TextEditingController? alasanController;

  PengajuanResignModel? pengajuanResignModelObj;

  @override
  List<Object?> get props => [
        alasanController,
        pengajuanResignModelObj,
      ];

  PengajuanResignState copyWith({
    TextEditingController? alasanController,
    PengajuanResignModel? pengajuanResignModelObj,
  }) {
    return PengajuanResignState(
      alasanController: alasanController ?? this.alasanController,
      pengajuanResignModelObj:
          pengajuanResignModelObj ?? this.pengajuanResignModelObj,
    );
  }
}
