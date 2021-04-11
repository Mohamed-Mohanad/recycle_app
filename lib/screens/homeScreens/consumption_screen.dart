import 'package:flutter/material.dart';
import 'package:recycle_app_v2/LocalStorage.dart';
import 'package:recycle_app_v2/utils/views/SizedBoxUtility.dart';

class consumptionScreen extends StatefulWidget {
  @override
  _consumptionScreenState createState() => _consumptionScreenState();
}

class _consumptionScreenState extends State<consumptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 80.0,
          child: PlasticModel.quantity == null
              ? Text(
                  "0K",
                  style: TextStyle(fontSize: 50),
                )
              : Text(
                  "${PlasticModel.quantity}K",
                  style: TextStyle(fontSize: 50),
                ),
        ),
        verticalSizedBox(size: 15, context: context),
        Text(
          "Plastic",
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
