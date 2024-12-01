import 'package:flutter/material.dart';

class DTStyleContainers {
  static BoxDecoration borderAllContainer = BoxDecoration(
    border: Border.all(
      width: 1,
      color: const Color(0xFFBCBCBC),
    ),
  );
  static BoxDecoration borderBottomContainer = const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 1,
        color: Color(0xFFBCBCBC),
      ),
    ),
  );
  static BoxDecoration borderLeftContainer = const BoxDecoration(
    border: Border(
      left: BorderSide(
        width: 1,
        color: Color(0xFFBCBCBC),
      ),
    ),
  );
  static BoxDecoration backgroundOnBoardingGradient = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Color(0xFF34BDE2),
        Color(0xFF289CFC),
      ],
      stops: [0.54, 1.0],
    ),
  );
}
