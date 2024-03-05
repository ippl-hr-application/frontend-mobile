// ignore_for_file: must_be_immutable

part of 'informasi_pribadi_notifier.dart';

/// Represents the state of InformasiPribadi in the application.
class InformasiPribadiState extends Equatable {
  InformasiPribadiState({
    this.muhammadSamanController,
    this.frameController,
    this.frameController1,
    this.dateController,
    this.frameController2,
    this.timeController,
    this.frameController3,
    this.informasiPribadiModelObj,
  });

  TextEditingController? muhammadSamanController;

  TextEditingController? frameController;

  TextEditingController? frameController1;

  TextEditingController? dateController;

  TextEditingController? frameController2;

  TextEditingController? timeController;

  TextEditingController? frameController3;

  InformasiPribadiModel? informasiPribadiModelObj;

  @override
  List<Object?> get props => [
        muhammadSamanController,
        frameController,
        frameController1,
        dateController,
        frameController2,
        timeController,
        frameController3,
        informasiPribadiModelObj,
      ];

  InformasiPribadiState copyWith({
    TextEditingController? muhammadSamanController,
    TextEditingController? frameController,
    TextEditingController? frameController1,
    TextEditingController? dateController,
    TextEditingController? frameController2,
    TextEditingController? timeController,
    TextEditingController? frameController3,
    InformasiPribadiModel? informasiPribadiModelObj,
  }) {
    return InformasiPribadiState(
      muhammadSamanController:
          muhammadSamanController ?? this.muhammadSamanController,
      frameController: frameController ?? this.frameController,
      frameController1: frameController1 ?? this.frameController1,
      dateController: dateController ?? this.dateController,
      frameController2: frameController2 ?? this.frameController2,
      timeController: timeController ?? this.timeController,
      frameController3: frameController3 ?? this.frameController3,
      informasiPribadiModelObj:
          informasiPribadiModelObj ?? this.informasiPribadiModelObj,
    );
  }
}
