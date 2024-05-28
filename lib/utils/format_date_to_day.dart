import 'package:intl/intl.dart';

String formatDateToDay(String dateString) {
  try {
    // Parsing dateString ke objek DateTime
    DateTime date = DateFormat('yyyy-MM-dd').parse(dateString);

    // Mengatur locale ke bahasa Indonesia
    var formatter = DateFormat.EEEE('id_ID');

    // Memformat tanggal ke nama hari
    String dayName = formatter.format(date);

    return dayName;
  } catch (e) {
    // Jika terjadi kesalahan saat parsing, kembalikan pesan kesalahan
    return 'Invalid Date';
  }
}
