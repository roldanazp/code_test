import 'package:couchsurffing/core/data/datasource/user/user_ds.dart';
import 'package:couchsurffing/core/domain/entity/user/user.dart';
import 'package:couchsurffing/core/domain/repository/user_repository.dart';
import 'package:couchsurffing/core/domain/resource.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDatasource userDatasource;

  UserRepositoryImpl(this.userDatasource);

  @override
  Future<Result<User, BaseError>> fetchUser() async {
    try {
      final user = await userDatasource.fetchUser();
      /*
      Map data DTO to domain entity in this place. We are not using DTO. XD
       */
      return Success(user);
    } catch (error) {
      /*
      Any kind of error will be expected to be mapped here for the domain layer.
      For time  constraint reasons we are going to return UnknownError() for now
       */
      return Error(UnknownError());
    }
  }
}
