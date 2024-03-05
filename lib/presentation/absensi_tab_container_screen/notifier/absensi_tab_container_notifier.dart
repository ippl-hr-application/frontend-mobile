import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insan_s_application2/presentation/absensi_tab_container_screen/models/absensi_tab_container_model.dart';
part 'absensi_tab_container_state.dart';

final absensiTabContainerNotifier = StateNotifierProvider<
    AbsensiTabContainerNotifier, AbsensiTabContainerState>(
  (ref) => AbsensiTabContainerNotifier(AbsensiTabContainerState(
    absensiTabContainerModelObj: AbsensiTabContainerModel(),
  )),
);

/// A notifier that manages the state of a AbsensiTabContainer according to the event that is dispatched to it.
class AbsensiTabContainerNotifier
    extends StateNotifier<AbsensiTabContainerState> {
  AbsensiTabContainerNotifier(AbsensiTabContainerState state) : super(state) {}
}
