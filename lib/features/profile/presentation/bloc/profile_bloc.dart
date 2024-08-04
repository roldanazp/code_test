import 'package:couchsurffing/core/domain/resource.dart';
import 'package:couchsurffing/core/domain/use_case/UserUseCase.dart';
import 'package:couchsurffing/features/profile/presentation/bloc/profile_bloc_events.dart';
import 'package:couchsurffing/features/profile/presentation/bloc/profile_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBloc extends Bloc<ProfileBlocEvent, ProfileBlocState> {
  final UserUseCase _userUseCase;

  ProfileBloc(
    this._userUseCase,
  ) : super(const ProfileBlocState()) {
    on<InitEvent>(_init);
    on<FetchUserEvent>(_fetchUser);
  }

  _init(InitEvent event, emit) {
    add(FetchUserEvent());
    add(FetchUserEvent());
  }

  _fetchUser(FetchUserEvent event, emit) async {
    final result = await _userUseCase();
    switch (result) {
      case Success():
        emit(state.copyWith(
          user: result.data,
          isLoading: false,
        ));
      case Error():
      // TODO: I will focus on happy path for now... I will be back
    }
  }
}
