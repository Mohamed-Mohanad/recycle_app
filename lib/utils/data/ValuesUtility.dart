import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

EdgeInsets paddingAll({BuildContext context, double size}) {
  return EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(size));
}

EdgeInsets paddingSymmetric(
    {BuildContext context, double vertical, double horizontal}) {
  return EdgeInsets.symmetric(
      vertical: ResponsiveFlutter.of(context).verticalScale(vertical),
      horizontal: ResponsiveFlutter.of(context).scale(horizontal));
}

EdgeInsets paddingLTRB(
    {BuildContext context,
    double left,
    double top,
    double right,
    double bottom}) {
  return EdgeInsets.fromLTRB(
      ResponsiveFlutter.of(context).scale(left),
      ResponsiveFlutter.of(context).verticalScale(top),
      ResponsiveFlutter.of(context).scale(right),
      ResponsiveFlutter.of(context).verticalScale(bottom));
}

EdgeInsets marginAll({BuildContext context, double size}) {
  return EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(size));
}

EdgeInsets marginSymmetric(
    {BuildContext context, double vertical, double horizontal}) {
  return EdgeInsets.symmetric(
      vertical: ResponsiveFlutter.of(context).verticalScale(vertical),
      horizontal: ResponsiveFlutter.of(context).scale(horizontal));
}

BorderRadius borderRadiusAll({BuildContext context, double radius}) {
  return BorderRadius.all(
      Radius.circular(ResponsiveFlutter.of(context).moderateScale(radius)));
}

double radius({BuildContext context, double radius}) {
  return ResponsiveFlutter.of(context).moderateScale(radius);
}
