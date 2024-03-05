import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insan_s_application2/presentation/informasi_pribadi_screen/models/informasi_pribadi_model.dart';
part 'informasi_pribadi_state.dart';

final informasiPribadiNotifier =
    StateNotifierProvider<InformasiPribadiNotifier, InformasiPribadiState>(
  (ref) => InformasiPribadiNotifier(InformasiPribadiState(
    muhammadSamanController: TextEditingController(),
    frameController: TextEditingController(),
    frameController1: TextEditingController(),
    dateController: TextEditingController(),
    frameController2: TextEditingController(),
    timeController: TextEditingController(),
    frameController3: TextEditingController(),
    informasiPribadiModelObj: InformasiPribadiModel(),
  )),
);

/// A notifier that manages the state of a InformasiPribadi according to the event that is dispatched to it.
class InformasiPribadiNotifier extends StateNotifier<InformasiPribadiState> {
  InformasiPribadiNotifier(InformasiPribadiState state) : super(state) {}
}
