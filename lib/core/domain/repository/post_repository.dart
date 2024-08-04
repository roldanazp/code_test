import 'package:couchsurffing/core/domain/entity/post/post.dart';
import 'package:couchsurffing/core/domain/resource.dart';

abstract class PostRepository {
  Future<Result<List<Post>, BaseError>> fetchFriendsPostList();
}
