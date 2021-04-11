import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

Widget verticalSizedBox({BuildContext context, double size}) {
  return SizedBox(
    height: ResponsiveFlutter.of(context).verticalScale(size),
  );
}

Widget horizontalSizedBox({BuildContext context, double size}) {
  return SizedBox(
    width: ResponsiveFlutter.of(context).scale(size),
  );
}
