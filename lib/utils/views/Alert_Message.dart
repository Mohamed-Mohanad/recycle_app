import 'package:flutter/material.dart';
import 'package:recycle_app_v2/LocalStorage.dart';

import 'package:recycle_app_v2/utils/views/ToastUtility.dart';

Future<void> showMyDialog(
    {Text title,
    Text message,
    BuildContext context,
    bool plastic,
    int plasticQ,
    bool metal,
    int metalQ,
    bool paper,
    int paperQ,
    bool others,
    int othersQ}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: title,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              message,
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Approve',
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              plastic ? PlasticModel.quantity += plasticQ : null;
              paper ? PaperModel.quantity += paperQ : null;
              metal ? MetalModel.quantity += metalQ : null;
              others ? OthersModel.quantity += othersQ : null;
              showSuccessToast(
                  context: context,
                  message: "Your request has been sent successfully");
            },
          ),
          TextButton(
            child: Text(
              'Decline',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              showErrorToast(
                  context: context, message: "Your request hasn`t been sent");
            },
          ),
        ],
      );
    },
  );
}
