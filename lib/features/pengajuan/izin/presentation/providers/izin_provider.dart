import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/pengajuan/izin/domain/izin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'izin_provider.g.dart';

@riverpod
class IzinController extends _$IzinController {
  @override
  FutureOr<void> build() {}
  Future<void> handleIzin(
      {required String from,
      required String permission_reason,
      required String? permission_file,
      required String to}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      // ignore: void_checks
      return Future.value(IzinRequest(
          from: from,
          permission_reason: permission_reason,
          permission_file: permission_file,
          to: to));
    });
  }
}
