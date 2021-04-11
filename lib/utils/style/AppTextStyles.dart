// text sizes
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_app_v2/utils/Styles.dart';


import 'package:responsive_flutter/responsive_flutter.dart';

final double primaryTextSize = 2.5;
final double secondaryTextSize = 2.0;
final double toastMessageTextSize = 2.0;
final double hintMessageTextSize = 2.0;
final double errorMessageTextSize = 2.0;

// font weights
final FontWeight primaryTextFontWeight = FontWeight.w500;
final FontWeight secondaryTextFontWeight = FontWeight.w400;
final FontWeight hintTextFontWeight = FontWeight.w300;
final FontWeight errorTextFontWeight = FontWeight.w300;

TextStyle primaryTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
    fontWeight: primaryTextFontWeight,
    fontSize: ResponsiveFlutter.of(context).fontSize(primaryTextSize),
    color: primaryTextColor,
    // height: ResponsiveFlutter.of(context).verticalScale(1.5)
  );
}

TextStyle secondaryTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
    fontWeight: secondaryTextFontWeight,
    fontSize: ResponsiveFlutter.of(context).fontSize(secondaryTextSize),
    color: secondaryTextColor,
    // height: ResponsiveFlutter.of(context).verticalScale(1.5)
  );
}

TextStyle requiredIconTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
    fontWeight: secondaryTextFontWeight,
    fontSize: ResponsiveFlutter.of(context).fontSize(secondaryTextSize),
    color: alertColor,
    // height: ResponsiveFlutter.of(context).verticalScale(1)
  );
}

TextStyle hintTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
    fontWeight: hintTextFontWeight,
    fontSize: ResponsiveFlutter.of(context).fontSize(hintMessageTextSize),
    color: hintCrudColor,
    // height: ResponsiveFlutter.of(context).verticalScale(1)
  );
}

TextStyle errorTextStyle(BuildContext context) {
  return GoogleFonts.tajawal(
    fontWeight: errorTextFontWeight,
    fontSize: ResponsiveFlutter.of(context).fontSize(errorMessageTextSize),
    color: alertColor,
    // height: ResponsiveFlutter.of(context).verticalScale(1)
  );
}
