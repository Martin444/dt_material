import 'package:dt_material/dt_material.dart';

// Definición del enum
enum SportType { futbol, basquet, voley, gimnasio, paddle }

// Mapas para asociar strings con enums y viceversa
const Map<String, SportType> stringToEnumMap = {
  'fbl': SportType.futbol,
  'bqt': SportType.basquet,
  'vly': SportType.voley,
  'gym': SportType.gimnasio,
  'pdl': SportType.paddle,
};

const Map<SportType, String> enumToStringMap = {
  SportType.futbol: 'fbl',
  SportType.basquet: 'bqt',
  SportType.voley: 'vly',
  SportType.gimnasio: 'gym',
  SportType.paddle: 'pdl',
};

// Métodos para convertir de String a enum y viceversa
SportType stringToEnum(String value) {
  return stringToEnumMap[value]!;
}

String enumToString(SportType sport) {
  return enumToStringMap[sport]!;
}

// Método que devuelve el ícono correspondiente basado en el enum
String getSportIcon(SportType sport) {
  switch (sport) {
    case SportType.futbol:
      return DTImages.futbolIco;
    case SportType.basquet:
      return DTImages.baskeyIco;
    case SportType.voley:
      return DTImages.tenisIco; // Asumiendo que no hay un ícono de voley en la lista proporcionada
    case SportType.gimnasio:
      return DTImages.gymIco;
    case SportType.paddle:
      return DTImages.tenisIco; // O puedes manejar el caso de error
  }
}

// Ejemplo de uso
// void main() {
//   String futbolString = 'fbl';
//   SportType futbolEnum = stringToEnum(futbolString);
//   String iconPath = getSportIcon(futbolEnum);

//   print('Enum: $futbolEnum'); // Imprime: SportType.futbol
//   print('Icon Path: $iconPath'); // Imprime: assets/spaces/futbol.png
// }
