import 'package:couchsurffing/core/domain/entity/user/user.dart';
import 'package:flutter/material.dart';

/*
constant users just for the cod sample
 */

const userA = User(
  id: "userAId",
  email: "userA@gmail.com",
  username: "User A",
  avatarUrl: "userAAvatarUrl",
);

const userB = User(
  id: "userBId",
  email: "userB@gmail.com",
  username: "User B",
  avatarUrl: "userBAvatarUrl",
);

const userC = User(
  id: "userCId",
  email: "userC@gmail.com",
  username: "User C",
  avatarUrl: "userCAvatarUrl",
);

class UserDatasource {
  Future<User> fetchUser() async {
    await Future.delayed(Durations.long4);
    return userA;
  }
}
