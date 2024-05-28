import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meraih_mobile/features/authentication/presentation/providers/auth_provider.dart';

class AuthUtils {
  static bool isTokenExpired(String token) {
    if (token.isEmpty) return true;
    final parts = token.split('.');
    if (parts.length != 3) return true;
    final payload = parts[1];
    final decoded = json
        .decode(utf8.decode(base64Url.decode(base64Url.normalize(payload))));
    if (decoded == null || decoded['exp'] == null) return true;
    final expirationDate =
        DateTime.fromMillisecondsSinceEpoch(decoded['exp'] * 1000);
    return DateTime.now().isAfter(expirationDate);
  }
}
