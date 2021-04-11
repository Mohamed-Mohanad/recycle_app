import 'package:flutter/material.dart';
import 'package:recycle_app_v2/utils/style/AppColors.dart';


import 'package:responsive_flutter/responsive_flutter.dart';

OutlineInputBorder formInputBorderStyle(BuildContext context) {
  return OutlineInputBorder(
    borderSide: new BorderSide(
        color: formBorderColor, width: ResponsiveFlutter.of(context).scale(2)),
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
        color: appPrimaryColor,
        width: ResponsiveFlutter.of(context).scale(1.25)),
    borderRadius: BorderRadius.all(
      Radius.circular(ResponsiveFlutter.of(context).moderateScale(100)),
    ),
  );
}
