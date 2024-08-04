// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_post_list_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FriendPostListBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<Post>? get friendPostList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendPostListBlocStateCopyWith<FriendPostListBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendPostListBlocStateCopyWith<$Res> {
  factory $FriendPostListBlocStateCopyWith(FriendPostListBlocState value,
          $Res Function(FriendPostListBlocState) then) =
      _$FriendPostListBlocStateCopyWithImpl<$Res, FriendPostListBlocState>;
  @useResult
  $Res call({bool isLoading, User? user, List<Post>? friendPostList});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FriendPostListBlocStateCopyWithImpl<$Res,
        $Val extends FriendPostListBlocState>
    implements $FriendPostListBlocStateCopyWith<$Res> {
  _$FriendPostListBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? friendPostList = freezed,
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
      friendPostList: freezed == friendPostList
          ? _value.friendPostList
          : friendPostList // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
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
abstract class _$$FriendPostListBlocStateImplCopyWith<$Res>
    implements $FriendPostListBlocStateCopyWith<$Res> {
  factory _$$FriendPostListBlocStateImplCopyWith(
          _$FriendPostListBlocStateImpl value,
          $Res Function(_$FriendPostListBlocStateImpl) then) =
      __$$FriendPostListBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, User? user, List<Post>? friendPostList});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FriendPostListBlocStateImplCopyWithImpl<$Res>
    extends _$FriendPostListBlocStateCopyWithImpl<$Res,
        _$FriendPostListBlocStateImpl>
    implements _$$FriendPostListBlocStateImplCopyWith<$Res> {
  __$$FriendPostListBlocStateImplCopyWithImpl(
      _$FriendPostListBlocStateImpl _value,
      $Res Function(_$FriendPostListBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? friendPostList = freezed,
  }) {
    return _then(_$FriendPostListBlocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      friendPostList: freezed == friendPostList
          ? _value._friendPostList
          : friendPostList // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ));
  }
}

/// @nodoc

class _$FriendPostListBlocStateImpl implements _FriendPostListBlocState {
  const _$FriendPostListBlocStateImpl(
      {this.isLoading = true, this.user, final List<Post>? friendPostList})
      : _friendPostList = friendPostList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final User? user;
  final List<Post>? _friendPostList;
  @override
  List<Post>? get friendPostList {
    final value = _friendPostList;
    if (value == null) return null;
    if (_friendPostList is EqualUnmodifiableListView) return _friendPostList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FriendPostListBlocState(isLoading: $isLoading, user: $user, friendPostList: $friendPostList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendPostListBlocStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._friendPostList, _friendPostList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user,
      const DeepCollectionEquality().hash(_friendPostList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendPostListBlocStateImplCopyWith<_$FriendPostListBlocStateImpl>
      get copyWith => __$$FriendPostListBlocStateImplCopyWithImpl<
          _$FriendPostListBlocStateImpl>(this, _$identity);
}

abstract class _FriendPostListBlocState implements FriendPostListBlocState {
  const factory _FriendPostListBlocState(
      {final bool isLoading,
      final User? user,
      final List<Post>? friendPostList}) = _$FriendPostListBlocStateImpl;

  @override
  bool get isLoading;
  @override
  User? get user;
  @override
  List<Post>? get friendPostList;
  @override
  @JsonKey(ignore: true)
  _$$FriendPostListBlocStateImplCopyWith<_$FriendPostListBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
