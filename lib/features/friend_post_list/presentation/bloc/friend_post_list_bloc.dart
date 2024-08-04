import 'package:couchsurffing/core/domain/resource.dart';
import 'package:couchsurffing/core/domain/use_case/UserUseCase.dart';
import 'package:couchsurffing/features/friend_post_list/domain/use_case/FriendPostUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'friend_post_list_bloc_events.dart';
import 'friend_post_list_bloc_state.dart';

class FriendPostListBloc
    extends Bloc<FriendPostListBlocEvent, FriendPostListBlocState> {
  final FriendPostUseCase _friendPostUseCase;
  final UserUseCase _userUseCase;

  FriendPostListBloc(
    this._friendPostUseCase,
    this._userUseCase,
  ) : super(const FriendPostListBlocState()) {
    on<InitEvent>(_init);
    on<FetchUserEvent>(_fetchUser);
    on<FetchFriendPostListEvent>(_fetchFriendPostList);
  }

  _init(InitEvent event, emit) {
    add(FetchUserEvent());
    add(FetchFriendPostListEvent());
  }

  _fetchUser(FetchUserEvent event, emit) async {
    final result = await _userUseCase();
    switch (result) {
      case Success():
        emit(state.copyWith(
          user: result.data,
          isLoading: state.friendPostList == null,
        ));
      case Error():
      // TODO: I will focus on happy path for now... I will be back
    }
  }

  _fetchFriendPostList(FetchFriendPostListEvent event, emit) async {
    final result = await _friendPostUseCase();
    switch (result) {
      case Success():
        emit(state.copyWith(
          friendPostList: result.data,
          isLoading: state.user == null,
        ));
      case Error():
      // TODO: I will focus on happy path for now... I will be back
    }
  }
}
