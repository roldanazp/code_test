import 'package:couchsurffing/core/domain/entity/post/post.dart';
import 'package:couchsurffing/core/domain/entity/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_post_list_bloc_state.freezed.dart';

@freezed
class FriendPostListBlocState with _$FriendPostListBlocState {
  const factory FriendPostListBlocState({
    @Default(true) bool isLoading,
    User? user,
    List<Post>? friendPostList,
  }) = _FriendPostListBlocState;
}
