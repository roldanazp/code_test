import 'package:couchsurffing/core/domain/entity/post/post.dart';
import 'package:couchsurffing/core/domain/repository/post_repository.dart';
import 'package:couchsurffing/core/domain/resource.dart';

class FriendPostUseCase {
  final PostRepository postRepository;

  FriendPostUseCase(this.postRepository);

  Future<Result<List<Post>, BaseError>> call() {
    // TODO right now is just a middle man but usually I do business logic in here
    return postRepository.fetchFriendsPostList();
  }
}
