import 'package:flutter/material.dart';
import 'package:recycle_app_v2/utils/data/ValuesUtility.dart';


import 'package:responsive_flutter/responsive_flutter.dart';

import '../Styles.dart';

MaterialButton buildMaterialButton(
    {BuildContext context,
    double width,
    Color color,
    String text,
    VoidCallback callback}) {
  return MaterialButton(
    height: ResponsiveFlutter.of(context).verticalScale(5.5),
    minWidth: ResponsiveFlutter.of(context).scale(width),
    padding: EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(5.5)),
    color: color,
    shape: materialButtonShape(context: context, color: color),
    onPressed: callback,
    child: Text(
      text,
      style: materialButtonTextStyle(context: context),
      // style: buttonTextStyle(context, textSize, textColor),
    ),
  );
}

MaterialButton buildMoreButton(
    {BuildContext context,
    double width,
    Color color,
    String text,
    VoidCallback callback}) {
  return MaterialButton(
    height: ResponsiveFlutter.of(context).verticalScale(5.5),
    minWidth: ResponsiveFlutter.of(context).scale(width),
    padding: EdgeInsets.all(ResponsiveFlutter.of(context).moderateScale(5.5)),
    color: color,
    shape: moreButtonShape(context: context, color: primaryGreenColor),
    onPressed: callback,
    child: Text(
      text,
      style: materialButtonTextStyle(context: context),
      // style: buttonTextStyle(context, textSize, textColor),
    ),
  );
}

MaterialButton buildNextMaterialButton(
    {BuildContext context, String text, VoidCallback onPressed}) {
  return MaterialButton(
    height: ResponsiveFlutter.of(context).verticalScale(.5),
    // height:15,
    minWidth: ResponsiveFlutter.of(context).scale(110),
    color: primaryGreenColor,
    padding: materialButtonPadding(context),
    shape: materialButtonShape(context: context, color: primaryGreenColor),
    onPressed: onPressed,
    child: Text(
      text,
      style: nextMaterialButtonTextStyle(context),
      // style: buttonTextStyle(context, textSize, textColor),
    ),
  );
}

MaterialButton buildBackMaterialButton(
    {BuildContext context, String text, VoidCallback onPressed}) {
  return MaterialButton(
    height: ResponsiveFlutter.of(context).verticalScale(.5),
    minWidth: ResponsiveFlutter.of(context).scale(110),
    color: primaryTextColor,
    padding: materialButtonPadding(context),
    shape: materialButtonShape(context: context, color: primaryTextColor),
    onPressed: onPressed,
    child: Text(
      text,
      style: backMaterialButtonTextStyle(context),
      // style: buttonTextStyle(context, textSize, textColor),
    ),
  );
}

MaterialButton buildIecreaseCircularButton(
    {BuildContext context, VoidCallback onPressed}) {
  return MaterialButton(
    onPressed: onPressed,
    color: primaryGreenColor,
    textColor: Colors.white,
    child: Icon(
      Icons.add,
      size: 14,
    ),
    padding: paddingAll(context: context, size: 4),
    shape: CircleBorder(),
  );
}

MaterialButton buildDecreaseCircularButton(
    {BuildContext context, VoidCallback onPressed}) {
  return MaterialButton(
    onPressed: onPressed,
    color: primaryTextColor,
    textColor: Colors.white,
    child: Icon(
      Icons.remove,
      size: 14,
    ),
    padding: paddingAll(context: context, size: 4),
    shape: CircleBorder(),
  );
}

MaterialButton buildCircularButton(
    {BuildContext context,
    VoidCallback onPressed,
    IconData icon,
    Color bgColor}) {
  return MaterialButton(
    onPressed: onPressed,
    color: primaryGreenColor,
    textColor: Colors.white,
    child: Icon(
      icon,
      size: 14,
    ),
    padding: paddingAll(context: context, size: 4),
    shape: CircleBorder(),
  );
}
