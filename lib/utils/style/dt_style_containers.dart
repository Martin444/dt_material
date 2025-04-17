import 'package:dt_material/dt_material.dart';
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
      stops: [0.1, 1.0],
    ),
  );

  static BoxDecoration itemDateEnableContainer = BoxDecoration(
    color: DTColors.bgItemContainer,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      width: 1,
      color: DTColors.borderContainerColor,
    ),
  );

  static BoxDecoration itemDateDisableContainer = BoxDecoration(
    color: DTColors.bgItemDisableContainer,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      width: 1,
      color: DTColors.borderContainerColor,
    ),
  );

  static BoxDecoration itemDateSelectedContainer = BoxDecoration(
    color: DTColors.bgItemSelectedContainer,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      width: 1,
      color: DTColors.borderContainerColor,
    ),
  );
}
