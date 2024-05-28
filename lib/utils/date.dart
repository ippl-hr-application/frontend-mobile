String convertToIso8601(String dateString) {
  // Parse string menjadi objek DateTime
  DateTime date = DateTime.parse(dateString);

  // Konversi zona waktu menjadi UTC
  date = date.toUtc();

  // Konversi objek DateTime menjadi string dalam format ISO 8601
  String isoString = date.toIso8601String();
  return isoString;
}
