import 'package:couchsurffing/core/data/datasource/post/post_ds.dart';
import 'package:couchsurffing/core/data/datasource/user/user_ds.dart';
import 'package:couchsurffing/core/data/repository/post_repository_impl.dart';
import 'package:couchsurffing/core/data/repository/profile_repository_impl.dart';
import 'package:couchsurffing/core/domain/repository/post_repository.dart';
import 'package:couchsurffing/core/domain/repository/user_repository.dart';
import 'package:couchsurffing/core/domain/use_case/UserUseCase.dart';
import 'package:couchsurffing/features/friend_post_list/domain/use_case/FriendPostUseCase.dart';
import 'package:couchsurffing/features/friend_post_list/presentation/bloc/friend_post_list_bloc.dart';
import 'package:couchsurffing/features/friend_post_list/presentation/bloc/friend_post_list_bloc_events.dart'
    as friend_post_events;
import 'package:couchsurffing/features/friend_post_list/presentation/view/friend_post_list_widget.dart';
import 'package:couchsurffing/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:couchsurffing/features/profile/presentation/bloc/profile_bloc_events.dart'
    as profile_events;
import 'package:couchsurffing/features/profile/presentation/view/profile_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const friendsPostListRouteName = "friendsPostListRouteName";
const userRouteName = "userRouteName";

/*
  All dependencies should came from di setup, for this exercise I will omit
  shame shame shame...
*/
final userDatasource = UserDatasource();
final UserRepository userRepository = UserRepositoryImpl(userDatasource);
final userUseCase = UserUseCase(userRepository);
final postDatasource = PostDatasource();
final PostRepository postRepository = PostRepositoryImpl(postDatasource);
final friendPostUseCase = FriendPostUseCase(postRepository);

final userRoute = GoRoute(
  path: "/$userRouteName",
  name: userRouteName,
  builder: (context, state) {
    /*
    All dependencies should came from di setup, for this exercise I will omit
    shame shame shame...
    */

    final userDatasource = UserDatasource();
    final UserRepository userRepository = UserRepositoryImpl(userDatasource);
    final userUseCase = UserUseCase(userRepository);
    final postDatasource = PostDatasource();
    final PostRepository postRepository = PostRepositoryImpl(postDatasource);
    final friendPostUseCase = FriendPostUseCase(postRepository);

    return BlocProvider(
      lazy: false,
      create: (_) => ProfileBloc(
        userUseCase,
      )..add(profile_events.InitEvent()),
      child: const ProfileWidget(),
    );
  },
);

final friendsPostListRoute = GoRoute(
  path: "/$friendsPostListRouteName",
  name: friendsPostListRouteName,
  builder: (context, state) {
    return BlocProvider(
      lazy: false,
      create: (_) => FriendPostListBloc(
        friendPostUseCase,
        userUseCase,
      )..add(friend_post_events.InitEvent()),
      child: const FriendPostListWidget(),
    );
  },
);

final routerConfig = GoRouter(
  initialLocation: "/$userRouteName",
  routes: [
    userRoute,
    friendsPostListRoute,
  ],
);
