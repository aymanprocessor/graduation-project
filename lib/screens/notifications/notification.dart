import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:gpst_app/models/notification_model.dart';

Faker faker = Faker();
List<NotificationModel> notificationLists = [
  NotificationModel(
      title: "Username has liked your post",
      createdAt: faker.date.dateTime(),
      photoUrl: "https://www.computerhope.com/jargon/g/guest-user.jpg"),
];
Widget notificationPage() {
  return (SafeArea(
      child: Column(
    children: [
      ListTile(
        title: Text('Username has liked your post'),
        subtitle: Text('Dec 24, 2020, 2:26:25 AM'),
        leading: AdvancedAvatar(
          size: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.computerhope.com/jargon/g/guest-user.jpg"),
                  fit: BoxFit.contain),
              boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 3.0)]),
        ),
      )
    ],
  )));
}
