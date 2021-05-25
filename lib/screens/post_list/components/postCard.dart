import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:gpst_app/models/postItems_model.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

class PostCard extends StatelessWidget {
  PostItemsModel postItem;
  PostCard({@required this.postItem});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6),
      elevation: 2,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userInfo(postItem),
            Divider(),
            SizedBox(height: 15),
            postContent(postItem),
            SizedBox(height: 15),
            reactionIndo(),
            Divider(),
            reaction()
          ],
        ),
      ),
    );
  }
}

Widget userInfo(PostItemsModel postItem) {
  final dateFormat = DateFormat("MMM dd, yyyy  hh:mm a");
  return ListTile(
    dense: true,
    leading: AdvancedAvatar(
      size: 45,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(postItem.photoUrl), fit: BoxFit.cover),
          boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 3.0)]),
    ),
    title: Text(postItem.username,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
    subtitle: Text(dateFormat.format(postItem.createdAt)),
  );
}

Widget postContent(PostItemsModel postItem) {
  return Text(postItem.content);
}

Widget reactionIndo() {
  return IntrinsicHeight(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${Random().nextInt(500)} Like",
          style: TextStyle(fontSize: 11),
        ),
        Row(
          children: [
            Text(
              "${Random().nextInt(50)}  Comments",
              style: TextStyle(fontSize: 11),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "${Random().nextInt(30)}  Shares",
              style: TextStyle(fontSize: 11),
            ),
          ],
        )
      ],
    ),
  );
}

Widget reaction() {
  return IntrinsicHeight(
    child: Row(
      children: [
        Expanded(
            child: TextButton.icon(
          icon: Icon(
            Icons.favorite_border,
            size: 20,
          ),
          onPressed: () {},
          label: Text("Like"),
        )),
        SizedBox(width: 5.0),
        Expanded(
            child: TextButton.icon(
                onPressed: () {},
                label: Text("Comment"),
                icon: Icon(
                  Icons.comment_outlined,
                  size: 20,
                ))),
        SizedBox(width: 5.0),
        Expanded(
            child: TextButton.icon(
                onPressed: () {},
                label: Text("Share"),
                icon: Icon(
                  Icons.share_outlined,
                  size: 20,
                )))
      ],
    ),
  );
}
