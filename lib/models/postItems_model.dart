import 'package:flutter/material.dart';

class PostItemsModel {
  final String username;
  final String photoUrl;
  final DateTime createdAt;
  final String content;

  PostItemsModel(
      {@required this.username,
      @required this.photoUrl,
      @required this.content,
      @required this.createdAt});
}
