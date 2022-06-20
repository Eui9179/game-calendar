import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../utils.dart';
import 'UI/ColorPlate.dart';

class Calendar2 extends StatefulWidget {
  const Calendar2({Key? key}) : super(key: key);

  @override
  State<Calendar2> createState() => _Calendar2State();
}

class _Calendar2State extends State<Calendar2> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }
}

class Calendar extends StatelessWidget {
  Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2022, 1, 1),
          lastDay: DateTime.utc(2050, 12, 31),
          focusedDay: DateTime.now(),
          locale: 'ko-KR',
          calendarStyle: CalendarStyle(
              defaultTextStyle: const TextStyle().copyWith(color: Colors.white),
              weekendTextStyle: const TextStyle().copyWith(color: Colors.red),
              holidayTextStyle: const TextStyle().copyWith(color: Colors.blue[800]),
              canMarkersOverflow: true,
              todayDecoration: const BoxDecoration(
                color: ColorPlate.calendarSelectedColor,
                shape: BoxShape.circle,
              ),
              todayTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white
              ),
            ),
          headerStyle: const HeaderStyle(
            headerMargin:
                EdgeInsets.only(left: 40, top: 10, right: 40, bottom: 10),
            titleCentered: true,
            titleTextStyle: TextStyle(
              color: ColorPlate.calendarHeaderFontColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            formatButtonVisible: false,
            leftChevronIcon: Icon(
              Icons.arrow_left,
              color: ColorPlate.calendarHeaderFontColor,
            ),
            rightChevronIcon: Icon(
              Icons.arrow_right,
              color: ColorPlate.calendarHeaderFontColor,
            ),
          ),
          daysOfWeekStyle: const DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              color: Colors.white
            ),
            weekendStyle: TextStyle(color:Colors.white)
          ),
        )
      ],
    );
  }
}
