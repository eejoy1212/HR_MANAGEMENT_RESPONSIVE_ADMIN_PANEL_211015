// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hr_management_responsive_admin_panel_211015/common/app_colors.dart';
import 'package:hr_management_responsive_admin_panel_211015/pages/dashboard/dashboard.dart';
import 'package:hr_management_responsive_admin_panel_211015/pages/widget/side_bar_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //Side Navigation Menu
            Expanded(
              child: SideBar(),
            ),
            //Main Body Part
            Expanded(
              flex: 4,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
