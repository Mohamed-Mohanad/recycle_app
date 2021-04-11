import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

double widthResponsive(double width, BuildContext context) {
  return ResponsiveFlutter.of(context).scale(width);
}

double hightResponsive(double hight, BuildContext context) {
  return ResponsiveFlutter.of(context).verticalScale(hight);
}
