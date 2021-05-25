import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String photoUrl;
  final DateTime createdAt;
  final String lastMsg;

  ChatModel(
      {@required this.name,
      @required this.photoUrl,
      @required this.createdAt,
      @required this.lastMsg});
}
