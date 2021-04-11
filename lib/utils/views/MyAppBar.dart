import 'package:flutter/material.dart';
import 'package:recycle_app_v2/utils/style/AppColors.dart';
import 'package:recycle_app_v2/utils/style/AppTextStyles.dart';

PreferredSizeWidget buildAppBar(
  BuildContext context, {
  String title,
  bool titleCenter,
}) {
  return AppBar(
    title: Text(
      title,
      style: primaryTextStyle(context),
    ),
    centerTitle: titleCenter,
    backgroundColor: toastInfoColor,
  );
}
