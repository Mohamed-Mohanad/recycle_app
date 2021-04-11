import 'package:flutter/widgets.dart';
import 'package:recycle_app_v2/utils/style/AppColors.dart';
import 'package:recycle_app_v2/utils/views/MyAppToast.dart';


void showSuccessToast({BuildContext context, String message}) {
  Toast.show(message, context,
      duration: 3,
      gravity: Toast.BOTTOM,
      backgroundColor: toastSuccessColor,
      textColor: whiteColor);
}

void showInfoToast({BuildContext context, String message}) {
  Toast.show(message, context,
      duration: 3,
      gravity: Toast.BOTTOM,
      backgroundColor: toastInfoColor,
      textColor: whiteColor);
}

void showAlertToast({BuildContext context, String message}) {
  Toast.show(message, context,
      duration: 3,
      gravity: Toast.BOTTOM,
      backgroundColor: toastAlertColor,
      textColor: whiteColor);
}

void showErrorToast({BuildContext context, String message}) {
  Toast.show(message, context,
      duration: 3,
      gravity: Toast.BOTTOM,
      backgroundColor: toastErrorColor,
      textColor: whiteColor);
}
