import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homeowner_hub/Profile.dart';
import 'package:homeowner_hub/energy_main.dart';
import 'package:homeowner_hub/HomeWidget.dart';
import 'package:homeowner_hub/Services.dart';
import 'package:homeowner_hub/main.dart';
import 'package:homeowner_hub/Services.dart';
import 'package:homeowner_hub/Solar.dart';


import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';






class NavRootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      // controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: "Home",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.electric_bolt),
        title: "Energy",
        activeColorPrimary: CupertinoColors.activeGreen,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_repair_service),
        title: "Services",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: "Profile",
        activeColorPrimary: CupertinoColors.activeOrange,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      // HomeWidget(),
      MyHomePage(
        title: 'first',
      ),
      EnergyMainPage(),
      Services(),
      // Profile(),
      Solar(),
    ];
  }
}
