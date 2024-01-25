// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'package:flutter_toolkit/pages/dashboard.dart';
import 'nav_home.dart';
import 'nav_explore.dart';
import 'nav_profile.dart';
import 'nav_setting.dart';
import '../../design_System/responsive.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  final List<Widget> _screens = [
    NavHome(),
    NavExplore(),
    NavProfile(),
    NavSetting(),
  ];
  int _selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          (Responsive.isScreenXS(context) || Responsive.isScreenSM(context))
              ? BottomNavigationBar(
                  currentIndex: _selectedIndex,
                  unselectedItemColor:
                      Colors.grey, // use grey color for unselected items
                  selectedItemColor: primaryColor, // use primaryColor
                  onTap: onTabTapped,
                  showUnselectedLabels: true, // show labels for all items
                  items: const [
                    BottomNavigationBarItem(
                      backgroundColor: whiteColor,
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: whiteColor,
                      icon: Icon(Icons.explore),
                      label: 'Explore',
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: whiteColor,
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: whiteColor,
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                    ),
                  ],
                )
              : null,
      body: Row(
        children: [
          if (!Responsive.isScreenXS(context) &&
              !Responsive.isScreenSM(context))
            Theme(
              data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary:
                          Colors.transparent, // make primary color transparent
                    ),
              ),
              child: NavigationRail(
                selectedIndex: _selectedIndex,
                onDestinationSelected: onTabTapped,
                backgroundColor: Colors.transparent,
                labelType:
                    NavigationRailLabelType.all, // show label for all items
                selectedIconTheme:
                    IconThemeData(color: primaryColor), // use primaryColor
                selectedLabelTextStyle: TextStyle(
                    color: primaryColor,
                    fontFamily: 'Outfit'), // use primaryColor and Outfit font
                unselectedIconTheme: IconThemeData(
                    color: Colors.grey), // use grey color for unselected items
                unselectedLabelTextStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily:
                        'Outfit'), // use grey color and Outfit font for unselected items
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.explore),
                    label: Text('Explore'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person),
                    label: Text('Profile'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Settings'),
                  ),
                ],
              ),
            ),
          Expanded(child: _screens[_selectedIndex]),
        ],
      ),
    );
  }
}
