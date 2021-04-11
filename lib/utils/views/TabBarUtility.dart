import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../Styles.dart';

Widget buildTabBar(
    {BuildContext context, TabController tabController, List<Widget> tabs}) {
  return Container(
    height: ResponsiveFlutter.of(context).moderateScale(50),
    decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: secondaryTextColor, width: 1)),
    child: TabBar(
        labelStyle: tabItemTextStyle(context: context),
        controller: tabController,
        isScrollable: false,
        labelColor: primaryGreenColor,
        unselectedLabelColor: secondaryTextColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: primaryGreenColor, width: 2)),
        tabs: tabs),
  );
}

Widget createTabItem({BuildContext context, String title}) {
  return Tab(
    child: Container(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
        ),
      ),
    ),
  );
}
