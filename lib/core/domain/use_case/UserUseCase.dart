import 'package:couchsurffing/core/domain/entity/user/user.dart';
import 'package:couchsurffing/core/domain/repository/user_repository.dart';
import 'package:couchsurffing/core/domain/resource.dart';

class UserUseCase {
  final UserRepository userRepository;

  UserUseCase(this.userRepository);

  Future<Result<User, BaseError>> call() {
    // TODO right now is just a middle man but usually I do business logic in here
    return userRepository.fetchUser();
  }
}
