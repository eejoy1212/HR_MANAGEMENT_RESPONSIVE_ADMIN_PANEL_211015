// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hr_management_responsive_admin_panel_211015/common/app_colors.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text.rich(
                TextSpan(
                  // ignore: prefer_const_literals_to_create_immutables
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.black,
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextSpan(
                      text: 'Good Morning ',
                    ),
                    TextSpan(
                      text: 'Ravi Patel!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Today you have 9 New Applications. \nAlso you need to hire 2 new UX Designers. 1\nReact Native Developer',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  height: 1.5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Read More',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/notification_image.png',
            height: 160,
          ),
        ],
      ),
    );
  }
}
