import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:line_icons/line_icons.dart';

import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

import '../home.dart';

// PROVIDER
var selectedIndex = StateProvider((_) => 0);

// WIDGETS
class BottomNavBar extends StatelessWidget {
  final iconActiveColor = Colors.blue;
  final textColor = Colors.blue;
  final iconColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
      ]),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: Consumer(builder: (context, watch, _) {
            return FancyBottomNavigation(
                tabs: [
                  TabData(
                    iconData: (LineIcons.home),
                    title: ("Home"),
                  ),
                  // PersistentBottomNavBarItem(
                  //   icon: Icon(Icons.notifications_none_outlined),
                  //   title: ('Notification'),
                  // ),
                  TabData(
                    iconData: (Icons.account_box_outlined),
                    title: ('Notifications'),
                  ),
                  TabData(
                    iconData: (Icons.chat_bubble_outline),
                    title: ('Chats'),
                  ),
                  TabData(
                    iconData: (Icons.person_outlined),
                    title: ('Friends'),
                  ),
                  //TabData(iconData: (Icons.group_outlined), title: ('Groups')),
                ],
                initialSelection: 0,

                // selectedIndex: watch(selectedIndex).state,
                onTabChangedListener: (index) {
                  context.read(selectedIndex).state = index;
                });
          }),
        ),
      ),
    );
  }
}
