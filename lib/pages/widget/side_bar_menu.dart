import 'package:flutter/material.dart';
import 'package:hr_management_responsive_admin_panel_211015/common/app_colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Container(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'MATRIX HR',
                  style: TextStyle(
                      color: AppColor.yellow,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              DrawerListTile(
                title: 'Dashboard',
                icon: 'assets/menu_home.png',
                press: () {},
              ),
              DrawerListTile(
                title: 'Recruitment',
                icon: 'assets/menu_recruitment.png',
                press: () {},
              ),
              DrawerListTile(
                title: 'Onboarding',
                icon: 'assets/menu_onboarding.png',
                press: () {},
              ),
              DrawerListTile(
                title: 'Reports',
                icon: 'assets/menu_report.png',
                press: () {},
              ),
              DrawerListTile(
                title: 'Calendar',
                icon: 'assets/menu_calendar.png',
                press: () {},
              ),
              DrawerListTile(
                title: 'Settings',
                icon: 'assets/menu_settings.png',
                press: () {},
              ),
              // ignore: prefer_const_constructors
              Spacer(),
              Image.asset('assets/sidebar_image.png')
              // ignore: prefer_const_constructors
            ]),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;
  const DrawerListTile(
      {Key? key, required this.title, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: AppColor.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
