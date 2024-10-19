// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channels_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChannelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addChannel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddChannel value)? addChannel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelsEventCopyWith<$Res> {
  factory $ChannelsEventCopyWith(
          ChannelsEvent value, $Res Function(ChannelsEvent) then) =
      _$ChannelsEventCopyWithImpl<$Res, ChannelsEvent>;
}

/// @nodoc
class _$ChannelsEventCopyWithImpl<$Res, $Val extends ChannelsEvent>
    implements $ChannelsEventCopyWith<$Res> {
  _$ChannelsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$ChannelsEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'ChannelsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addChannel,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddChannel value)? addChannel,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ChannelsEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$FetchFavouritesImplCopyWith<$Res> {
  factory _$$FetchFavouritesImplCopyWith(_$FetchFavouritesImpl value,
          $Res Function(_$FetchFavouritesImpl) then) =
      __$$FetchFavouritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFavouritesImplCopyWithImpl<$Res>
    extends _$ChannelsEventCopyWithImpl<$Res, _$FetchFavouritesImpl>
    implements _$$FetchFavouritesImplCopyWith<$Res> {
  __$$FetchFavouritesImplCopyWithImpl(
      _$FetchFavouritesImpl _value, $Res Function(_$FetchFavouritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFavouritesImpl implements _FetchFavourites {
  const _$FetchFavouritesImpl();

  @override
  String toString() {
    return 'ChannelsEvent.fetchFavourites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFavouritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) {
    return fetchFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) {
    return fetchFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addChannel,
    required TResult orElse(),
  }) {
    if (fetchFavourites != null) {
      return fetchFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) {
    return fetchFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) {
    return fetchFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddChannel value)? addChannel,
    required TResult orElse(),
  }) {
    if (fetchFavourites != null) {
      return fetchFavourites(this);
    }
    return orElse();
  }
}

abstract class _FetchFavourites implements ChannelsEvent {
  const factory _FetchFavourites() = _$FetchFavouritesImpl;
}

/// @nodoc
abstract class _$$AddChannelImplCopyWith<$Res> {
  factory _$$AddChannelImplCopyWith(
          _$AddChannelImpl value, $Res Function(_$AddChannelImpl) then) =
      __$$AddChannelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddChannelImplCopyWithImpl<$Res>
    extends _$ChannelsEventCopyWithImpl<$Res, _$AddChannelImpl>
    implements _$$AddChannelImplCopyWith<$Res> {
  __$$AddChannelImplCopyWithImpl(
      _$AddChannelImpl _value, $Res Function(_$AddChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddChannelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddChannelImpl implements _AddChannel {
  const _$AddChannelImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ChannelsEvent.addChannel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddChannelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddChannelImplCopyWith<_$AddChannelImpl> get copyWith =>
      __$$AddChannelImplCopyWithImpl<_$AddChannelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) {
    return addChannel(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) {
    return addChannel?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addChannel,
    required TResult orElse(),
  }) {
    if (addChannel != null) {
      return addChannel(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) {
    return addChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) {
    return addChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddChannel value)? addChannel,
    required TResult orElse(),
  }) {
    if (addChannel != null) {
      return addChannel(this);
    }
    return orElse();
  }
}

abstract class _AddChannel implements ChannelsEvent {
  const factory _AddChannel({required final int id}) = _$AddChannelImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$AddChannelImplCopyWith<_$AddChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChannelsState {
  Status? get status => throw _privateConstructorUsedError;
  ChannelModel? get postModel => throw _privateConstructorUsedError;
  List<int>? get favouritePosts => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelsStateCopyWith<ChannelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelsStateCopyWith<$Res> {
  factory $ChannelsStateCopyWith(
          ChannelsState value, $Res Function(ChannelsState) then) =
      _$ChannelsStateCopyWithImpl<$Res, ChannelsState>;
  @useResult
  $Res call(
      {Status? status,
      ChannelModel? postModel,
      List<int>? favouritePosts,
      String? error});
}

/// @nodoc
class _$ChannelsStateCopyWithImpl<$Res, $Val extends ChannelsState>
    implements $ChannelsStateCopyWith<$Res> {
  _$ChannelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? postModel = freezed,
    Object? favouritePosts = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      postModel: freezed == postModel
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      favouritePosts: freezed == favouritePosts
          ? _value.favouritePosts
          : favouritePosts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelsStateImplCopyWith<$Res>
    implements $ChannelsStateCopyWith<$Res> {
  factory _$$ChannelsStateImplCopyWith(
          _$ChannelsStateImpl value, $Res Function(_$ChannelsStateImpl) then) =
      __$$ChannelsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status? status,
      ChannelModel? postModel,
      List<int>? favouritePosts,
      String? error});
}

/// @nodoc
class __$$ChannelsStateImplCopyWithImpl<$Res>
    extends _$ChannelsStateCopyWithImpl<$Res, _$ChannelsStateImpl>
    implements _$$ChannelsStateImplCopyWith<$Res> {
  __$$ChannelsStateImplCopyWithImpl(
      _$ChannelsStateImpl _value, $Res Function(_$ChannelsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? postModel = freezed,
    Object? favouritePosts = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ChannelsStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      postModel: freezed == postModel
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
      favouritePosts: freezed == favouritePosts
          ? _value._favouritePosts
          : favouritePosts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChannelsStateImpl implements _ChannelsState {
  const _$ChannelsStateImpl(
      {this.status,
      this.postModel,
      final List<int>? favouritePosts,
      this.error})
      : _favouritePosts = favouritePosts;

  @override
  final Status? status;
  @override
  final ChannelModel? postModel;
  final List<int>? _favouritePosts;
  @override
  List<int>? get favouritePosts {
    final value = _favouritePosts;
    if (value == null) return null;
    if (_favouritePosts is EqualUnmodifiableListView) return _favouritePosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'ChannelsState(status: $status, postModel: $postModel, favouritePosts: $favouritePosts, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.postModel, postModel) ||
                other.postModel == postModel) &&
            const DeepCollectionEquality()
                .equals(other._favouritePosts, _favouritePosts) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, postModel,
      const DeepCollectionEquality().hash(_favouritePosts), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelsStateImplCopyWith<_$ChannelsStateImpl> get copyWith =>
      __$$ChannelsStateImplCopyWithImpl<_$ChannelsStateImpl>(this, _$identity);
}

abstract class _ChannelsState implements ChannelsState {
  const factory _ChannelsState(
      {final Status? status,
      final ChannelModel? postModel,
      final List<int>? favouritePosts,
      final String? error}) = _$ChannelsStateImpl;

  @override
  Status? get status;
  @override
  ChannelModel? get postModel;
  @override
  List<int>? get favouritePosts;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ChannelsStateImplCopyWith<_$ChannelsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
