import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/features/attendance/presentation/provider/attancande_recap_provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:month_year_picker/month_year_picker.dart';

class AttendanceList extends ConsumerStatefulWidget {
  const AttendanceList({super.key});

  @override
  ConsumerState<AttendanceList> createState() => _AttendanceListState();
}

class _AttendanceListState extends ConsumerState<AttendanceList> {
  late DateTime _selectedDay;
  DateTime? _selectedMonth;
  Map<DateTime, bool> statusMap = {};

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _selectedMonth = DateTime.now();
    fetchAttendanceData();
  }

  Future<void> fetchAttendanceData() async {
    final month = _selectedMonth?.month ?? DateTime.now().month;
    final year = _selectedMonth?.year ?? DateTime.now().year;
    final response = await ref.read(attandanceRecapProvider({'month': month.toString().padLeft(2, '0'), 'year': year.toString()}).future);

    if (response != null && response.detail != null) {
      final newStatusMap = <DateTime, bool>{};
      for (final detail in response.detail!) {
        final date = DateTime.parse(detail.date!);
        newStatusMap[date] = detail.isPresent ?? false;
      }
      setState(() {
        statusMap = newStatusMap;
      });
    }
  }

  Future<void> _selectMonth(BuildContext context) async {
    final DateTime? picked = await showMonthYearPicker(
      context: context,
      initialDate: _selectedMonth ?? DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (picked != null && picked != _selectedMonth) {
      setState(() {
        _selectedMonth = picked;
        _selectedDay = DateTime(picked.year, picked.month, 1);
      });
      fetchAttendanceData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance List'),
        backgroundColor: const Color.fromRGBO(32, 81, 229, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              calendarFormat: CalendarFormat.month,
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(color: Colors.blue),
                weekendStyle: TextStyle(color: Colors.red),
              ),
              calendarStyle: const CalendarStyle(
                todayTextStyle: TextStyle(color: Colors.white),
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                weekendTextStyle: TextStyle(color: Colors.red),
                outsideDaysVisible: true,
                outsideTextStyle: TextStyle(color: Colors.grey),
                cellMargin: EdgeInsets.all(2),
              ),
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
              ),
              daysOfWeekHeight: 40,
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, date, _) {
                  bool? status = statusMap[date];
                  bool isWeekend = date.weekday == DateTime.saturday ||
                      date.weekday == DateTime.sunday;
                  return Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: status == true
                          ? Colors.blue
                          : (status == false ? Colors.red : null),
                    ),
                    child: Center(
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(
                          color: isWeekend
                              ? Colors.red
                              : (status != null ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  );
                },
              ),
              focusedDay: _selectedDay,
              firstDay: DateTime(_selectedMonth?.year ?? 2024, 1, 1),
              lastDay: DateTime((_selectedMonth?.year ?? 2024) + 1, 12, 31),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  print(_selectedDay);
                });
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              readOnly: false,
              onTap: () => _selectMonth(context),
              decoration: InputDecoration(
                labelText: 'Selected Month',
                hintText: _selectedMonth != null
                    ? '${_selectedMonth!.month}/${_selectedMonth!.year}'
                    : 'None',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
