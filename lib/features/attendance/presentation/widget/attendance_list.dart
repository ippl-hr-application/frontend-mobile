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
  late DateTime _focusedDay;
  DateTime? _selectedMonth;
  Map<DateTime, bool> statusMap = {};

  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _selectedMonth = DateTime.now();
    fetchAttendanceData(_selectedMonth!);
  }

  Future<void> fetchAttendanceData(DateTime selectedMonth) async {
    final month = selectedMonth.month;
    final year = selectedMonth.year;
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
        _focusedDay = DateTime(picked.year, picked.month, 1);
      });
      fetchAttendanceData(_selectedMonth!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredStatusMap = statusMap.entries.where((entry) {
      return entry.key.year == _selectedMonth?.year && entry.key.month == _selectedMonth?.month;
    }).map((entry) => entry.value).toList();

    int presentCount = filteredStatusMap.where((status) => status == true).length;
    int absentCount = filteredStatusMap.where((status) => status == false).length;

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
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Kehadiran',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          presentCount.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Absen',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          absentCount.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            TableCalendar(
              calendarFormat: CalendarFormat.month,
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(color: Colors.blue),
                weekendStyle: TextStyle(color: Colors.blue),
              ),
              calendarStyle: const CalendarStyle(
                todayTextStyle: TextStyle(color: Colors.white),
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                
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
                          color: (status != null ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  );
                },
              ),
              focusedDay: _focusedDay,
              firstDay: DateTime(2020, 1, 1),
              lastDay: DateTime(2030, 12, 31),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _focusedDay = focusedDay;
                });
              },
              onPageChanged: (focusedDay) {
                setState(() {
                  _selectedMonth = focusedDay;
                  _focusedDay = focusedDay;
                });
                fetchAttendanceData(focusedDay);
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              readOnly: true,
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
