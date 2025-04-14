// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String formatSpanishDate() {
    final formatter = DateFormat('EEEE, d MMMM', 'es_ES');
    return formatter.format(this);
  }
}
