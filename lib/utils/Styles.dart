import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

// colors
// To add new color change the value after 0xff
// For example Color(0xff123456) change '123456' with the new color

final Color primaryGreenColor = Color(0xff39AD6E);
final Color primaryGreenLowColor = Color(0x6039AD6E);
final Color primaryAccentColor = Color(0xffEB5050);
final Color alertColor = Color(0xffEB5050);
final Color primaryTextColor = Color(0xff1D1D35);
final Color secondaryTextColor = Color(0xffE5E5E8);
final Color backgroundColor = Color(0xffFAFAFA);
final Color backgroundLowColor = Color(0xccf4f4f4);
final Color whiteColor = Color(0xffFFFFFF);
final Color blackColor = Color(0xff000000);
final Color activeIconColor = Color(0xff73C599);
final Color inActiveIconColor = Color(0xff757583);
final Color inActiveIconLowColor = Color(0x1a757583);
final Color hintCrudColor = Color(0xff757583);
final Color transparentColor = Color(0x00ffffff);

// text sizes
final double screenTitleTextSize = 3.3;
final double dialogTitleTextSize = 2.6;
final double primaryTextSize = 2.3;
final double dashboardTextSize = 2.0;
final double bigLabelTextSize = 2.6;
final double smallLabelTextSize = 2.2;
final double secondaryTextSize = 2.0;
final double hintTextSize = 2.0;
final double cardTitleTextSize = 2.8;
final double cardItemTextSize = 2.0;
final double toastMessageTextSize = 2.0;
final double formInputTextSize = 2.4;
final double moreButtonTextSize = 2.2;
final double formLabelTextSize = 2.4;

// font weights
final FontWeight screenTitleFontWeight = FontWeight.w600;
final FontWeight primaryTextFontWeight = FontWeight.w500;
final FontWeight secondaryTextFontWeight = FontWeight.w400;

// text styles
// Screen titles at all screens
TextStyle titleTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: screenTitleFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(screenTitleTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle editDialogTitleTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: screenTitleFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(dialogTitleTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle addDialogTitleTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: screenTitleFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(dialogTitleTextSize),
      color: primaryGreenColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle noUnitsDialogTitleTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: screenTitleFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(dialogTitleTextSize),
      color: alertColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle tabItemTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: screenTitleFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(primaryTextSize),
      color: primaryGreenColor);
}

TextStyle cardTitleTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: screenTitleFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(cardTitleTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle cardLabelTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: primaryTextFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(primaryTextSize),
      color: primaryGreenColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle cardValueTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: primaryTextFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(primaryTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle labelTextStyle({BuildContext context, Color color, double textSize}) {
  return GoogleFonts.tajawal(
      fontWeight: primaryTextFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(textSize),
      color: color,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle toastMessageTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: primaryTextFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(toastMessageTextSize),
      color: whiteColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle dashboardLabelTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: primaryTextFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(dashboardTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle dashboardValueTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: screenTitleFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(dashboardTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle popUpMenuTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: primaryTextFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(primaryTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle primaryTextStyle({BuildContext context, double size}) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(size),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle greenPrimaryTextStyle(double size) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: size,
      color: primaryGreenColor,
      height: 1.5);
}

TextStyle dropDownMenuTextStyle({BuildContext context, double size}) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(size),
      color: secondaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle questionTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w700,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: blackColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle infoTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w700,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: primaryGreenColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle warningTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w700,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: Colors.orange,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle errorTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w700,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: primaryAccentColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle formErrorTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w700,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.5),
      color: primaryAccentColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle formLabelTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(formLabelTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle formFieldTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w500,
      fontSize: ResponsiveFlutter.of(context).fontSize(formInputTextSize),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle requiredIconTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(2.8),
      color: alertColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle hintTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w300,
      fontSize: ResponsiveFlutter.of(context).fontSize(hintTextSize),
      color: hintCrudColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle dropDownTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(2.2),
      color: primaryTextColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle bottomTabSelectedTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: primaryGreenColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle nextMaterialButtonTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(2.2),
      color: whiteColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle backMaterialButtonTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(2.2),
      color: whiteColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle selectedRadioButtonTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: whiteColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle notSelectedRadioButtonTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: primaryGreenColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle bottomTabNotSelectedTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
      color: inActiveIconColor,
      height: ResponsiveFlutter.of(context).verticalScale(1));
}

TextStyle primaryGreenStyle({BuildContext context, double size}) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveFlutter.of(context).fontSize(size),
      color: primaryGreenColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle buttonTextStyle(BuildContext context, double size, Color color) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w500,
      fontSize: ResponsiveFlutter.of(context).fontSize(size),
      color: whiteColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle materialButtonTextStyle({BuildContext context}) {
  return GoogleFonts.tajawal(
      fontWeight: primaryTextFontWeight,
      fontSize: ResponsiveFlutter.of(context).fontSize(moreButtonTextSize),
      color: whiteColor,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

TextStyle backButtonTextStyle(BuildContext context, double size, Color color) {
  return GoogleFonts.tajawal(
      fontWeight: FontWeight.w500,
      fontSize: ResponsiveFlutter.of(context).fontSize(size),
      color: color,
      height: ResponsiveFlutter.of(context).verticalScale(1.5));
}

RoundedRectangleBorder materialButtonShape(
    {BuildContext context, Color color}) {
  return RoundedRectangleBorder(
      side: BorderSide(color: color, width: 1),
      borderRadius: BorderRadius.circular(
          ResponsiveFlutter.of(context).moderateScale(20)));
}

RoundedRectangleBorder moreButtonShape({BuildContext context, Color color}) {
  return RoundedRectangleBorder(
      // side: BorderSide(color: color, width: 1),
      borderRadius: BorderRadius.circular(
          ResponsiveFlutter.of(context).moderateScale(20)));
}

EdgeInsets materialButtonPadding(BuildContext context) {
  return EdgeInsets.symmetric(
      vertical: ResponsiveFlutter.of(context).verticalScale(6),
      horizontal: ResponsiveFlutter.of(context).scale(6));
}

OutlineInputBorder formInputBorderStyle(BuildContext context) {
  return OutlineInputBorder(
    borderSide: new BorderSide(
        color: Color(0x80EFEFEF),
        // color: alertColor,
        width: ResponsiveFlutter.of(context).scale(2)),
    borderRadius: BorderRadius.all(
      Radius.circular(ResponsiveFlutter.of(context).moderateScale(100)),
    ),
  );
}

OutlineInputBorder formInputBorderErrorStyle(BuildContext context) {
  return OutlineInputBorder(
    borderSide: new BorderSide(
        color: alertColor, width: ResponsiveFlutter.of(context).scale(1.25)),
    borderRadius: BorderRadius.all(
      Radius.circular(ResponsiveFlutter.of(context).moderateScale(100)),
    ),
  );
}

OutlineInputBorder focusedFormInputBorderStyle(BuildContext context) {
  return OutlineInputBorder(
    borderSide: BorderSide(
        color: primaryGreenColor,
        width: ResponsiveFlutter.of(context).scale(1.25)),
    borderRadius: BorderRadius.all(
      Radius.circular(ResponsiveFlutter.of(context).moderateScale(100)),
    ),
  );
}

InputDecoration formInputDecoration(BuildContext context) {
  return InputDecoration(
    //hor 32 ver 8
    contentPadding: EdgeInsets.symmetric(
        vertical: ResponsiveFlutter.of(context).verticalScale(8),
        horizontal: ResponsiveFlutter.of(context).scale(28)),
    fillColor: whiteColor,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: primaryGreenColor,
          width: ResponsiveFlutter.of(context).scale(2)),
      borderRadius: BorderRadius.all(
        Radius.circular(ResponsiveFlutter.of(context).moderateScale(100)),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: Color(0x80EFEFEF),
          width: ResponsiveFlutter.of(context).scale(2)),
      borderRadius: BorderRadius.all(
        Radius.circular(ResponsiveFlutter.of(context).moderateScale(100)),
      ),
    ),
    filled: true,
    hintStyle: hintTextStyle(context),
  );
}
