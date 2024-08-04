import 'package:couchsurffing/core/domain/entity/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_bloc_state.freezed.dart';

@freezed
class ProfileBlocState with _$ProfileBlocState {
  const factory ProfileBlocState({
    @Default(true) bool isLoading,
    User? user,
  }) = _ProfileBlocState;
}
