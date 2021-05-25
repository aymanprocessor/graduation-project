import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:gpst_app/models/postItems_model.dart';
import 'package:gpst_app/screens/post_list/components/postCard.dart';
import 'package:intl/intl.dart';

List<PostItemsModel> posts = [
  PostItemsModel(
      username: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1616740386718-6a4e42e3cf02?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80",
      content: faker.lorem.sentence(),
      createdAt: faker.date.dateTime(minYear: 2020, maxYear: 2021)),
  PostItemsModel(
      username: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1497184718905-1e595fc16462?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      content: faker.lorem.sentence(),
      createdAt: faker.date.dateTime(minYear: 2020, maxYear: 2021)),
  PostItemsModel(
      username: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1618051236338-32cd7d37ee8f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      content: faker.lorem.sentence(),
      createdAt: faker.date.dateTime(minYear: 2020, maxYear: 2021)),
  PostItemsModel(
      username: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1616641611019-0830e6383a50?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80",
      content: faker.lorem.sentence(),
      createdAt: faker.date.dateTime(minYear: 2020, maxYear: 2021)),
  PostItemsModel(
      username: faker.person.name(),
      photoUrl:
          "https://images.unsplash.com/photo-1617636607684-f10cd65f7c93?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      content: faker.lorem.sentence(),
      createdAt: faker.date.dateTime(minYear: 2020, maxYear: 2021)),
];

Widget postsPage() {
  return ListView(
    children: posts.map((post) => PostCard(postItem: post)).toList(),
  );
}
