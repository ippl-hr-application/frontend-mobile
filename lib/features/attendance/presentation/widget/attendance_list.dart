import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart' as cdp;
import 'package:go_router/go_router.dart';

class AttendanceList extends StatefulWidget {
  const AttendanceList({Key? key}) : super(key: key);

  @override
  _CheckinMapState createState() => _CheckinMapState();
}

class _CheckinMapState extends State<AttendanceList> {
  late DateTime _selectedDay;
  Map<DateTime, bool> statusMap = {};

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _initializeStatusMap();
  }

  void _initializeStatusMap() {
    statusMap = {
      DateTime(2024, 4, 1): true,
      DateTime(2024, 4, 2): false,
    };
  }

  void updateStatusMap(Map<DateTime, bool> newStatusMap) {
    setState(() {
      statusMap = newStatusMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            firstDay: DateTime(2024, 1, 1),
            lastDay: DateTime(2024, 12, 31),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
              });
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  statusMap[_selectedDay] = !(statusMap[_selectedDay] ?? false);
                });
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ).copyWith(
                backgroundColor:
                    MaterialStateProperty.resolveWith<Color>((states) {
                  return statusMap[_selectedDay] == true
                      ? Colors.red
                      : Colors.green;
                }),
              ),
              child: Text(
                statusMap[_selectedDay] == true ? 'Absen' : 'Hadir',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
