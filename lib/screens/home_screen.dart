import 'package:flutter/material.dart';
import 'package:recycle_app_v2/screens/homeScreens/consumption_screen.dart';
import 'package:recycle_app_v2/screens/homeScreens/main_screen.dart';
import 'package:recycle_app_v2/screens/homeScreens/topics.dart';
import 'package:recycle_app_v2/screens/user_screen.dart';
import 'package:recycle_app_v2/utils/data/NavigationUtility.dart';
import 'package:recycle_app_v2/utils/views/ImagesUtility.dart';
import 'package:recycle_app_v2/utils/views/Width_&_Hight_Responsive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            GestureDetector(
                onTap: () {
                  navigate(
                    context: context,
                    destinationScreen: userScreen(),
                  );
                },
                child: Icon(
                  Icons.account_circle_sharp,
                  size: 40,
                )),
            SizedBox(
              width: widthResponsive(10, context),
            ),
          ],
          elevation: 0.0,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.countertops_outlined),
                text: "Your Consumption",
              ),
              Tab(
                icon: Icon(Icons.add_circle_rounded),
                text: "Topics",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            mainScreen(),
            consumptionScreen(),
            Topics(),
          ],
        ),
      ),
    );
  }
}
