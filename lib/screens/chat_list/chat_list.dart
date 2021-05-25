import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:gpst_app/models/chat_model.dart';
import 'package:intl/intl.dart';

Faker faker = Faker();
List<ChatModel> chatLists = [
  ChatModel(
      name: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1497184718905-1e595fc16462?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      createdAt: faker.date.dateTime(minYear: 2018, maxYear: 2021),
      lastMsg: faker.lorem.sentences(5).toString()),
  ChatModel(
      name: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1497184718905-1e595fc16462?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      createdAt: faker.date.dateTime(minYear: 2018, maxYear: 2021),
      lastMsg: faker.lorem.sentences(5).toString()),
  ChatModel(
      name: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1497184718905-1e595fc16462?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      createdAt: faker.date.dateTime(minYear: 2018, maxYear: 2021),
      lastMsg: faker.lorem.sentences(5).toString())
];
Widget ChatLists() {
  final dateFormat = DateFormat("hh:mm a");
  return SafeArea(
    child: Column(
      children: chatLists
          .map((e) => ListTile(
              title: Text(e.name),
              subtitle: Flexible(
                child: Text(
                  e.lastMsg,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: Text(dateFormat.format(e.createdAt)),
              leading: AdvancedAvatar(
                size: 45,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(e.photoUrl), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(color: Colors.black54, blurRadius: 3.0)
                    ]),
              )))
          .toList(),
    ),
  );
}
