import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

String formatDate(String dateTimeString) {
  initializeDateFormatting('id_ID', null);
  DateTime dateTime = DateTime.parse(dateTimeString);
  final DateFormat formatter = DateFormat.yMMMMd('id_ID');
  return formatter.format(dateTime);
}
