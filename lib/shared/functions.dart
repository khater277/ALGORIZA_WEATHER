import 'package:flutter/material.dart';

TimeOfDay getTime({required int uinxTime}) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(uinxTime * 1000);
  TimeOfDay time = TimeOfDay.fromDateTime(date);
  return time;
}
