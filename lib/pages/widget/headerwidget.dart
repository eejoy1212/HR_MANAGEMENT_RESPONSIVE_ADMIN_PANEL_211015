// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hr_management_responsive_admin_panel_211015/common/app_colors.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              navigationIcon(
                icon: Icons.search,
              ),
              navigationIcon(
                icon: Icons.send,
              ),
              navigationIcon(
                icon: Icons.notifications_none_rounded,
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget navigationIcon({icon}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(
      icon,
      color: AppColor.black,
    ),
  );
}
