import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:faker/faker.dart';
import 'package:gpst_app/screens/chat_list/chat_list.dart';
import 'package:gpst_app/screens/post_list/post_list.dart';
import '../notifications/notification.dart';
import 'components/bottom_navbar.dart';

var faker = new Faker();

class Home extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  final List<Widget> _widgetOptions = <Widget>[
    postsPage(),
    notificationPage(),
    ChatLists(),
    Text(
      'Profile',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Consumer(builder: (context, watch, _) {
            return _widgetOptions.elementAt(watch(selectedIndex).state);
          }),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
