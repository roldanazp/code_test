import 'package:couchsurffing/core/data/datasource/post/post_ds.dart';
import 'package:couchsurffing/core/domain/entity/post/post.dart';
import 'package:couchsurffing/core/domain/repository/post_repository.dart';
import 'package:couchsurffing/core/domain/resource.dart';

class PostRepositoryImpl extends PostRepository {
  final PostDatasource postDatasource;

  PostRepositoryImpl(this.postDatasource);

  @override
  Future<Result<List<Post>, BaseError>> fetchFriendsPostList() async {
    try {
      final postList = await postDatasource.fetchFriendsPostList();
      /*
      Map data DTO to entity in this place. We are not using DTO. XD
       */
      return Success(postList);
    } catch (error) {
      /*
      Any kind of error will be expected to be mapped here for the domain layer.
      For time  constraint reasons we are going to return UnknownError() for now
       */
      return Error(UnknownError());
    }
  }
}
