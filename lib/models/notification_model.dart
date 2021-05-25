import 'package:flutter/material.dart';

class NotificationModel {
  final String title;
  final String photoUrl;
  final DateTime createdAt;

  NotificationModel(
      {@required this.title,
      @required this.photoUrl,
      @required this.createdAt});
}
