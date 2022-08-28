import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

TimeOfDay getTime({required int uinxTime}) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(uinxTime * 1000);
  TimeOfDay time = TimeOfDay.fromDateTime(date);
  return time;
}

String getDayFromDate({required int dt}) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  String dayName = DateFormat('EEEE').format(date);
  return dayName;
}
