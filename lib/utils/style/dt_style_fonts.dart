import 'package:dt_material/utils/dt_colors.dart';
import 'package:flutter/material.dart';

//DEfino el estilo global
var styleGlobal = const TextStyle(
  fontFamily: 'Montserrat',
  fontStyle: FontStyle.normal,
);

class DTTextStyle {
  // ONBOARDING

  static TextStyle titleOnboarding = styleGlobal.copyWith(
    color: DTColors.textColor2,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static TextStyle descriptionOnboarding = styleGlobal.copyWith(
    color: DTColors.textColor2,
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  // Login

  static TextStyle titleLogin = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );

  ///

  // Home

  static TextStyle titleGoodmorning = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 24,
    fontWeight: FontWeight.w800,
  );
  static TextStyle titleDailymessage = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );

  static TextStyle subTitlehome = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 19,
    fontWeight: FontWeight.w800,
  );
  static TextStyle title1 = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static TextStyle titleSecundary = styleGlobal.copyWith(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static TextStyle title3 = styleGlobal.copyWith(
    color: DTColors.textColor1,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  //////
  ///
  ///CREATE SPORT FACILITIE

  static TextStyle titleCreate = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 19,
    fontWeight: FontWeight.w800,
  );

  static TextStyle textLabelMenu = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textDirection = styleGlobal.copyWith(
    color: DTColors.textColor1,
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );

  static TextStyle title3Withe = styleGlobal.copyWith(
    color: DTColors.textColor2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle title2 = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static TextStyle title3disable = styleGlobal.copyWith(
    color: const Color.fromARGB(255, 213, 213, 213),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle title4 = styleGlobal.copyWith(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle parraftycs = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static TextStyle tytlestyleftycs = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static TextStyle subTitletyc = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 19,
    fontWeight: FontWeight.w600,
  );

  static TextStyle description1 = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    height: 1.0,
  );

  //Status Page

  static TextStyle statusTitlePage = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 23,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  //CART_ITEM

  static TextStyle brandHeadStyle = styleGlobal.copyWith(
    color: DTColors.textColor4,
    fontSize: 13,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  static TextStyle nameProductStyle = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  static TextStyle ingredientsListStyle = styleGlobal.copyWith(
    color: DTColors.textColor4,
    fontSize: 13,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  ///////////////
  ///
  ///
  //////Detail page Sport
  ///
  static TextStyle titleSportDescription = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  static TextStyle locationSportDescription = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );

  /// Detail item page
  ///
  ///
  static TextStyle totalDetailItem = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 21,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  static TextStyle subTotalDetailItem = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.0,
  );

  static TextStyle taxDetailItem = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 1.0,
  );

  //////////////////////
  ///
  ///
  ///
  /// CART PAGE
  ///
  ///

  static TextStyle priceCartTOtal = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 21,
    fontWeight: FontWeight.bold,
    height: 1.0,
  );

  ///
  static TextStyle hintTextStyle = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 17,
    fontWeight: FontWeight.w300,
    height: 1.0,
  );

  static TextStyle description2 = styleGlobal.copyWith(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w200,
  );

  //SPORT FIELD CARD
  static TextStyle sportFieldTitle = styleGlobal.copyWith(
    color: Colors.white,
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );

  static TextStyle sportFieldClubName = styleGlobal.copyWith(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  //Button

  static TextStyle primaryButtonStyle = styleGlobal.copyWith(
    color: DTColors.textColor2,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  static TextStyle textbtnStyle = styleGlobal.copyWith(
    color: DTColors.textColor3,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.8,
  );

  static TextStyle secundaryButtonStyle = styleGlobal.copyWith(
    color: DTColors.iconColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textInput1 = styleGlobal.copyWith(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle redirectLink1 = styleGlobal.copyWith(
    color: DTColors.bgLink,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  // BOOKING PAGE

  static TextStyle titleBooking = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subTitleBooking = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static TextStyle dateDayItem = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static TextStyle dateNameItem = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 19,
    fontWeight: FontWeight.w500,
  );

  static TextStyle confirmTimeTile = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle confirmTimeValue = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle detailTitle = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static TextStyle detailValue = styleGlobal.copyWith(
    color: DTColors.textColor5,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  //Pending booking tile

  static TextStyle pendingBookingDetailTitle = styleGlobal.copyWith(
    color: DTColors.textColor2,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  //Event tile book

  static TextStyle eventOrganiceName = styleGlobal.copyWith(
    color: DTColors.textColor2,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle eventOrganiceDate = styleGlobal.copyWith(
    color: DTColors.textColor2,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
}
