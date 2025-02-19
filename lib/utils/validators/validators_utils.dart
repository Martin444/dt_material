import 'package:flutter/material.dart';

class PUValidators {
  static bool validateEmail(String email) {
    final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  static String? validatePercentage(String value) {
    final double? parsedValue = double.tryParse(value);
    if (parsedValue == null || parsedValue < 0 || parsedValue > 100) {
      return 'El porcentaje debe estar entre 0 y 100';
    }
    return null; // No error
  }

  static String? validatoObligatory(String value) {
    if (value.isEmpty) {
      return 'Este campo es obligatorio';
    }
    return null;
  }

  static Map<String, String> convertTimeOfDayMapToStringMap(Map<String, TimeOfDay> timeMap) {
    return timeMap.map((key, value) {
      final formattedTime = _formatTimeOfDay(value);
      return MapEntry(key, formattedTime);
    });
  }

  static String _formatTimeOfDay(TimeOfDay time) {
    final String hour = time.hour.toString().padLeft(2, '0');
    final String minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
