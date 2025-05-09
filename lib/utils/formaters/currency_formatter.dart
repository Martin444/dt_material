import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class DTCurrencyFormatter extends TextInputFormatter {
  final NumberFormat formatter = NumberFormat.decimalPattern('es');

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) return newValue;

    // Eliminar caracteres no numéricos antes de formatear
    String digitsOnly = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // Aplicar formato
    String formattedValue = formatter.format(int.tryParse(digitsOnly) ?? 0);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }
}
