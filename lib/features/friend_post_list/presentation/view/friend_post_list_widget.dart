import 'package:couchsurffing/features/friend_post_list/presentation/bloc/friend_post_list_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/friend_post_list_bloc.dart';

class FriendPostListWidget extends StatelessWidget {
  const FriendPostListWidget({super.key});

  FriendPostListBloc _bloc(BuildContext context) =>
      context.read<FriendPostListBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: BlocBuilder<FriendPostListBloc, FriendPostListBlocState>(
          builder: (context, state) {
            return Text(state.user?.username ?? '');
          },
        ),
      ),
      body: BlocBuilder<FriendPostListBloc, FriendPostListBlocState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final postWidgetList = state.friendPostList
                  ?.map<Widget>(
                    (post) => ListTile(
                      title: Text(post.title),
                      subtitle: Text(post.author.username),
                    ),
                  )
                  .toList() ??
              [];

          return ListView(
            children: postWidgetList,
          );
        },
      ),
    );
  }
}
