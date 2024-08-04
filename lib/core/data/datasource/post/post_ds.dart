import 'package:couchsurffing/core/data/datasource/user/user_ds.dart';
import 'package:couchsurffing/core/domain/entity/post/post.dart';
import 'package:flutter/material.dart';

class PostDatasource {
  Future<List<Post>> fetchFriendsPostList() async {
    await Future.delayed(Durations.long4);
    return const [
      Post(
        id: "u28936497nsjdgf9823rt",
        title: "Post 1 title",
        body: "Post 1 body",
        author: userA,
      ),
      Post(
        id: "u28936497nsjdgf9823rt",
        title: "Post 2 title",
        body: "Post 2 body",
        author: userA,
      ),
      Post(
        id: "u28936497nsjdgf9823rt",
        title: "Post 3 title",
        body: "Post 3 body",
        author: userB,
      ),
      Post(
        id: "u28936497nsjdgf9823rt",
        title: "Post 4 title",
        body: "Post 4 body",
        author: userC,
      ),
      Post(
        id: "u28936497nsjdgf9823rt",
        title: "Post 5 title",
        body: "Post 5 body",
        author: userC,
      ),
      Post(
        id: "u28936497nsjdgf9823rt",
        title: "Post 6 title",
        body: "Post 6 body",
        author: userC,
      ),
    ];
  }
}
