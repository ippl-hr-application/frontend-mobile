import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/pengajuan/izin/data/izin_repository.dart';
import 'package:meraih_mobile/features/pengajuan/izin/domain/izin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'izin_provider.g.dart';

Future<dynamic> handleIzinSubmission(IzinRequest izin) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImE3OTQ0MjFiLTYwMzctNGY5MS1iNTY3LTFjZTZhYTlhNjVlMCIsImNvbXBhbnlfYnJhbmNoX2lkIjo1LCJpYXQiOjE3MTEzNzcyMjcsImV4cCI6MTcxMTk4MjAyN30.uk98Pa8wImSjLINHF553AxQB8ffhj_aDkSLHmkbsVgs";
  final dio = Dio();
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";
  final izinRepository = IzinRepository(dio);
  try {
    final izinSubmission = await izinRepository.postIzin(
        izin.from, izin.permission_reason, izin.permission_file, izin.to);

    if (izinSubmission.success == true) {
      print(izinSubmission.message);
      return izinSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
