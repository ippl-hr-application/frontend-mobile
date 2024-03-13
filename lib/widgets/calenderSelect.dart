import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class CustomCalendarPicker extends StatelessWidget {
  final List<DateTime>? selectedDates;
  final void Function(List<DateTime>?)? onDateSelected;

  const CustomCalendarPicker({
    super.key,
    this.selectedDates,
    this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker2(
      config: CalendarDatePicker2Config(
        calendarType: CalendarDatePicker2Type.single,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
        firstDayOfWeek: 0,
        dayTextStyle: const TextStyle(
          color: Color(0XFF37474F),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      value: selectedDates ?? [],
      onValueChanged: onDateSelected != null
          ? (dates) {
              onDateSelected!(dates.cast<DateTime>());
            }
          : null,
    );
  }
}
