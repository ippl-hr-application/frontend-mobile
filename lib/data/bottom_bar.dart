import 'package:flutter/material.dart';
import 'package:meraih_mobile/models/buttom_app_model.dart';

var bottomBar = [
  NavigationsBarApps(
      imageAssets: 'assets/home.png', category: "Beranda", path: "/"),
  NavigationsBarApps(
      imageAssets: 'assets/notifications.png',
      category: "Notifikasi",
      path: "/"),
  NavigationsBarApps(
      imageAssets: 'assets/submission.png',
      category: "Pengajuan",
      path: "/pengajuan"),
  NavigationsBarApps(
      imageAssets: 'assets/setting.png', category: "Penganturan", path: "/"),
];
