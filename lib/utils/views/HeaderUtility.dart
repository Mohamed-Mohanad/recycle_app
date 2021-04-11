import 'package:flutter/material.dart';

import 'SizedBoxUtility.dart';
import '../Styles.dart';
import 'ImagesUtility.dart';

Widget headerTitle({String title, BuildContext context}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: titleTextStyle(context: context),
      ),
    ],
  );
}

Widget homeHeaderTitle({BuildContext context, String title}) {
  return Center(
    child: Text(
      title,
      style: titleTextStyle(context: context),
    ),
  );
}

Widget sideHeader({BuildContext context}) {
  return Column(
    children: <Widget>[
      verticalSizedBox(context: context, size: 30),
      assetPngImage(
          context: context, imageName: "new_logo_green", width: 75, height: 75),
      verticalSizedBox(context: context, size: 50),
    ],
  );
}
