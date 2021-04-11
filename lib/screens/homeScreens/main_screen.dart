import 'package:flutter/material.dart';
import 'package:recycle_app_v2/screens/sendScreens/send_metal_screen.dart';
import 'package:recycle_app_v2/screens/sendScreens/send_other_screen.dart';
import 'package:recycle_app_v2/screens/sendScreens/send_paper_screen.dart';
import 'package:recycle_app_v2/screens/sendScreens/send_plastic_screen.dart';
import 'package:recycle_app_v2/utils/data/NavigationUtility.dart';
import 'package:recycle_app_v2/utils/views/ImagesUtility.dart';

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              navigate(context: context, destinationScreen: sendPlastic());
            },
            child: Container(
              height: 75,
              child: Card(
                elevation: 7.0,
                semanticContainer: true,
                child: ListTile(
                  leading: assetPngImage(
                      context: context,
                      imageName: "Plastic",
                      height: 100,
                      width: 50),
                  title: Text("Plastic"),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigate(context: context, destinationScreen: sendMetal());
            },
            child: Container(
              height: 75,
              child: Card(
                elevation: 7.0,
                semanticContainer: true,
                child: ListTile(
                  leading: assetPngImage(
                      context: context,
                      imageName: "Metal",
                      height: 100,
                      width: 50),
                  title: Text("Metal"),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigate(context: context, destinationScreen: sendPaper());
            },
            child: Container(
              height: 75,
              child: Card(
                elevation: 7.0,
                semanticContainer: true,
                child: ListTile(
                  leading: assetPngImage(
                      context: context,
                      imageName: "Paper",
                      height: 100,
                      width: 50),
                  title: Text("Paper"),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navigate(context: context, destinationScreen: sendOthers());
            },
            child: Container(
              height: 75,
              child: Card(
                elevation: 7.0,
                semanticContainer: true,
                child: ListTile(
                  leading: assetPngImage(
                      context: context,
                      imageName: "Recycle",
                      height: 100,
                      width: 50),
                  title: Text("Others"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
