// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileBlocStateCopyWith<ProfileBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileBlocStateCopyWith<$Res> {
  factory $ProfileBlocStateCopyWith(
          ProfileBlocState value, $Res Function(ProfileBlocState) then) =
      _$ProfileBlocStateCopyWithImpl<$Res, ProfileBlocState>;
  @useResult
  $Res call({bool isLoading, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileBlocStateCopyWithImpl<$Res, $Val extends ProfileBlocState>
    implements $ProfileBlocStateCopyWith<$Res> {
  _$ProfileBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileBlocStateImplCopyWith<$Res>
    implements $ProfileBlocStateCopyWith<$Res> {
  factory _$$ProfileBlocStateImplCopyWith(_$ProfileBlocStateImpl value,
          $Res Function(_$ProfileBlocStateImpl) then) =
      __$$ProfileBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileBlocStateImplCopyWithImpl<$Res>
    extends _$ProfileBlocStateCopyWithImpl<$Res, _$ProfileBlocStateImpl>
    implements _$$ProfileBlocStateImplCopyWith<$Res> {
  __$$ProfileBlocStateImplCopyWithImpl(_$ProfileBlocStateImpl _value,
      $Res Function(_$ProfileBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
  }) {
    return _then(_$ProfileBlocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$ProfileBlocStateImpl implements _ProfileBlocState {
  const _$ProfileBlocStateImpl({this.isLoading = true, this.user});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final User? user;

  @override
  String toString() {
    return 'ProfileBlocState(isLoading: $isLoading, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBlocStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileBlocStateImplCopyWith<_$ProfileBlocStateImpl> get copyWith =>
      __$$ProfileBlocStateImplCopyWithImpl<_$ProfileBlocStateImpl>(
          this, _$identity);
}

abstract class _ProfileBlocState implements ProfileBlocState {
  const factory _ProfileBlocState({final bool isLoading, final User? user}) =
      _$ProfileBlocStateImpl;

  @override
  bool get isLoading;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$ProfileBlocStateImplCopyWith<_$ProfileBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
