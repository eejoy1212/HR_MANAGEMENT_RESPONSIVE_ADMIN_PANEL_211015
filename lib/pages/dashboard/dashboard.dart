import 'package:flutter/material.dart';
import 'package:hr_management_responsive_admin_panel_211015/common/app_colors.dart';
import 'package:hr_management_responsive_admin_panel_211015/pages/widget/headerwidget.dart';
import 'package:hr_management_responsive_admin_panel_211015/pages/widget/notification_card_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Header Part
          // ignore: prefer_const_constructors
          HeaderWidget(),
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  flex: 2,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          NotificationCardWidget(),
                        ]),
                  ),
                ),
                Expanded(
                  child: Container(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
