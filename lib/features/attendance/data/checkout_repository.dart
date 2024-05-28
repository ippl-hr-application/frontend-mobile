import 'dart:io';

import 'package:retrofit/retrofit.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/features/attendance/domain/checkout.dart';
import 'package:dio/dio.dart';

part 'checkout_repository.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class CheckoutRepository {
  factory CheckoutRepository(Dio dio, {String baseUrl}) = _CheckoutRepository;
  @POST('/attendance/check-out')
  @MultiPart()
  Future<CheckoutResponse> postCheckout(
    @Part(name: 'attandance_id') String attandance_id,
    @Part(name: 'attendance_file') File attendance_file,
  );
}
