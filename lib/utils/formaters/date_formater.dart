// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String formatSpanishDate() {
    final formatter = DateFormat('EEEE, d MMMM', 'es_ES');
    return formatter.format(this);
  }
}

extension TimeOfDayToString on TimeOfDay {
  String toFormattedString() {
    final toTransform = this;
    final hour = toTransform.hour.toString().padLeft(2, '0');
    final minute = toTransform.minute.toString().padLeft(2, '0');
    return "$hour:$minute hs";
  }
}
