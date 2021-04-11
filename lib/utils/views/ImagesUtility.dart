import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

AssetImage assetJpgImage(
    {BuildContext context, String imageName, double height, double width}) {
  return AssetImage("assets/images/$imageName.jpg");
}

Image tempJpgImage(
    {BuildContext context, String imageName, double height, double width}) {
  return Image(
    image: AssetImage("assets/images/$imageName.jpg"),
    height: ResponsiveFlutter.of(context).verticalScale(height),
    width: ResponsiveFlutter.of(context).scale(width),
  );
}

Image assetPngImage(
    {BuildContext context,
    String imageName,
    double height,
    double width,
    Color color}) {
  return Image(
      image: AssetImage("assets/images/$imageName.png"),
      height: ResponsiveFlutter.of(context).verticalScale(height),
      width: ResponsiveFlutter.of(context).scale(width),
      color: color);
}

Widget svgImage(
    {BuildContext context, String imageName, double height, double width}) {
  return SvgPicture.asset("assets/svg/$imageName.svg",
      height: ResponsiveFlutter.of(context).verticalScale(height),
      width: ResponsiveFlutter.of(context).scale(width));
}

Icon icon({BuildContext context, IconData iconData, double size, Color color}) {
  return Icon(
    iconData,
    size: ResponsiveFlutter.of(context).moderateScale(size),
    color: color,
  );
}
