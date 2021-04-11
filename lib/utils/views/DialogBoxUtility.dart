import 'package:flutter/material.dart';
import 'package:recycle_app_v2/utils/data/NavigationUtility.dart';
import 'package:recycle_app_v2/utils/data/ValuesUtility.dart';


import 'SizedBoxUtility.dart';
import '../Styles.dart';

Future<void> showFormDialog(
    {BuildContext context, bool isEdit, String title, Widget body}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)), //this right here
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Container(
                width: double.maxFinite,
                // height: 215,
                padding: paddingSymmetric(
                    context: context, vertical: 16, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(title,
                        style: isEdit
                            ? editDialogTitleTextStyle(context: context)
                            : addDialogTitleTextStyle(context: context),
                        textAlign: TextAlign.start),
                    verticalSizedBox(context: context, size: 10),
                    body,
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> showPickImageDialog(
    {BuildContext context,
    VoidCallback cameraCallback,
    VoidCallback galleryCallback,
    Widget body}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // dismissible or not
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)), //this right here
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Container(
                padding: paddingSymmetric(
                    context: context, vertical: 16, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Pick photo",
                        style: cardLabelTextStyle(context: context),
                        textAlign: TextAlign.start),
                    verticalSizedBox(context: context, size: 10),
                    GestureDetector(
                      onTap: cameraCallback,
                      child: Text("Camera",
                          style: cardValueTextStyle(context: context),
                          textAlign: TextAlign.start),
                    ),
                    verticalSizedBox(context: context, size: 10),
                    GestureDetector(
                      onTap: galleryCallback,
                      child: Text("Gallery",
                          style: cardValueTextStyle(context: context),
                          textAlign: TextAlign.start),
                    ),
                    verticalSizedBox(context: context, size: 10),
                    GestureDetector(
                      onTap: () {
                        navigateBack(context: context);
                      },
                      child: Text("Cancel",
                          style: primaryTextStyle(
                              context: context, size: cardItemTextSize),
                          textAlign: TextAlign.start),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
