import 'package:couchsurffing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/profile_bloc.dart';
import '../bloc/profile_bloc_state.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  ProfileBloc _bloc(BuildContext context) => context.read<ProfileBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: BlocBuilder<ProfileBloc, ProfileBlocState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              ListTile(
                title: Text(state.user?.username ?? ''),
                subtitle: Text("username"),
              ),
              ListTile(
                title: Text(state.user?.email ?? ''),
                subtitle: Text("email"),
              ),
              ListTile(
                title: Text(state.user?.avatarUrl ?? ''),
                subtitle: Text("avatar url"),
              ),
              FilledButton(
                onPressed: () => context.pushNamed(friendsPostListRouteName),
                child: Text("Firends Post List"),
              ),
            ],
          );
        },
      ),
    );
  }
}
