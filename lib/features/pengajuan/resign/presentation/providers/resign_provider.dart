import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/pengajuan/resign/domain/resign.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resign_provider.g.dart';

@riverpod
class ResignController extends _$ResignController {
  @override
  FutureOr<void> build() {}
  Future<void> handleResign(
      {required String permission_reason,
      required String? permission_file}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      // ignore: void_checks
      return Future.value(ResignRequest(
        permission_reason: permission_reason,
        permission_file: permission_file,
      ));
    });
  }
}
