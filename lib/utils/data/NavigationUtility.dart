import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void navigate({BuildContext context, Widget destinationScreen}) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => destinationScreen));
}

void navigateWithCallback(
    {BuildContext context, Widget destinationScreen, VoidCallback callback}) {
  Navigator.push(
          context, MaterialPageRoute(builder: (context) => destinationScreen))
      .then((value) => callback());
}

void navigateBack({BuildContext context}) {
  FocusScope.of(context).unfocus();
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  }
}

void navigateAndClearStack({BuildContext context, Widget destinationScreen}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => destinationScreen),
      (Route<dynamic> route) => false);
}
