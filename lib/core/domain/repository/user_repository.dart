import 'package:couchsurffing/core/domain/entity/user/user.dart';
import 'package:couchsurffing/core/domain/resource.dart';

abstract class UserRepository {
  /*
  I assume that the authorization token is going to be injected on the data layer
   */
  Future<Result<User, BaseError>> fetchUser();
}
