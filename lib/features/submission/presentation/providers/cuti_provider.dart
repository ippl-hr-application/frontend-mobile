import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/submission/data/cuti_repository.dart';
import 'package:meraih_mobile/features/submission/domain/cuti.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'cuti_provider.g.dart';

Future<dynamic> handleCutiSubmission(CutiRequest cuti) async {
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImFoai1hZGJhZHV5MyIsImNvbXBhbnlfYnJhbmNoX2lkIjoxLCJpYXQiOjE3MTExOTcwNTgsImV4cCI6MTcxMTgwMTg1OH0.Xc1B13g134tdCUB_3M9cexwjf2SB0n6GMiT_sBFQbuM";
  final dio = Dio();
  dio.options.contentType = "multipart/form-data";
  dio.options.headers["Authorization"] = "Bearer $token";
  final cutiRepository = CutiRepository(dio);
  try {
    final cutiSubmission = await cutiRepository.postCuti(cuti.from,
        cuti.leave_reason, cuti.leave_type, cuti.leave_file, cuti.to);

    if (cutiSubmission.success == true) {
      print(cutiSubmission.message);
      return cutiSubmission;
    }
  } on DioException catch (e) {
    if (e.response != null) {
      print(e.response?.data);
    }
  }
}
