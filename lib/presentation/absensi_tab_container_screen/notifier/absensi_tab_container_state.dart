// ignore_for_file: must_be_immutable

part of 'absensi_tab_container_notifier.dart';

/// Represents the state of AbsensiTabContainer in the application.
class AbsensiTabContainerState extends Equatable {
  AbsensiTabContainerState({this.absensiTabContainerModelObj});

  AbsensiTabContainerModel? absensiTabContainerModelObj;

  @override
  List<Object?> get props => [
        absensiTabContainerModelObj,
      ];

  AbsensiTabContainerState copyWith(
      {AbsensiTabContainerModel? absensiTabContainerModelObj}) {
    return AbsensiTabContainerState(
      absensiTabContainerModelObj:
          absensiTabContainerModelObj ?? this.absensiTabContainerModelObj,
    );
  }
}
