String formatTime(String timeString) {
  List<String> timeParts = timeString
      .split(':'); // Membagi string waktu menjadi bagian-bagian terpisah
  String formattedTime =
      '${timeParts[0]}:${timeParts[1]}'; // Menggabungkan hanya bagian jam dan menit

  return formattedTime;
}
