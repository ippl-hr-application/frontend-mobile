import 'package:intl/intl.dart';

// Fungsi untuk mengonversi angka bulan menjadi teks bulan
String formatMonth(int month) {
  // List teks bulan dalam bahasa Indonesia
  List<String> namaBulan = [
    "",
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  // Mengembalikan teks bulan berdasarkan indeks angka bulan
  return namaBulan[month];
}
