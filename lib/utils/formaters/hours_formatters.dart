extension DTHours on double {
  String hoursToString() {
    int horas = floor();
    double decimal = this - horas;

    String horasStr = '';
    if (horas == 0 && decimal > 0) {
      horasStr = '';
    } else if (horas == 1) {
      horasStr = 'Una hora';
    } else if (horas > 1) {
      horasStr = '${_numeroEnLetras(horas)} horas';
    }

    if (decimal >= 0.5) {
      if (horasStr.isEmpty) {
        return 'Media hora';
      } else {
        return '$horasStr y media';
      }
    } else {
      return horasStr;
    }
  }

  String _numeroEnLetras(int numero) {
    const numeros = ['', 'Una', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho', 'Nueve', 'Diez'];
    if (numero >= 1 && numero <= 10) {
      return numeros[numero];
    }
    return numero.toString();
  }
}
