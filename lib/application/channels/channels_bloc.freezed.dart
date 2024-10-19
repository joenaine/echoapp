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
    required TResult Function() fetchNextPage,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchNextPage,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addChannel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchNextPage value) fetchNextPage,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchNextPage value)? fetchNextPage,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchNextPage value)? fetchNextPage,
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
    required TResult Function() fetchNextPage,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchNextPage,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
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
    required TResult Function(_FetchNextPage value) fetchNextPage,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchNextPage value)? fetchNextPage,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchNextPage value)? fetchNextPage,
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
abstract class _$$FetchNextPageImplCopyWith<$Res> {
  factory _$$FetchNextPageImplCopyWith(
          _$FetchNextPageImpl value, $Res Function(_$FetchNextPageImpl) then) =
      __$$FetchNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNextPageImplCopyWithImpl<$Res>
    extends _$ChannelsEventCopyWithImpl<$Res, _$FetchNextPageImpl>
    implements _$$FetchNextPageImplCopyWith<$Res> {
  __$$FetchNextPageImplCopyWithImpl(
      _$FetchNextPageImpl _value, $Res Function(_$FetchNextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchNextPageImpl implements _FetchNextPage {
  const _$FetchNextPageImpl();

  @override
  String toString() {
    return 'ChannelsEvent.fetchNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchNextPage,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) {
    return fetchNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchNextPage,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) {
    return fetchNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addChannel,
    required TResult orElse(),
  }) {
    if (fetchNextPage != null) {
      return fetchNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchNextPage value) fetchNextPage,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) {
    return fetchNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchNextPage value)? fetchNextPage,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) {
    return fetchNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchNextPage value)? fetchNextPage,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddChannel value)? addChannel,
    required TResult orElse(),
  }) {
    if (fetchNextPage != null) {
      return fetchNextPage(this);
    }
    return orElse();
  }
}

abstract class _FetchNextPage implements ChannelsEvent {
  const factory _FetchNextPage() = _$FetchNextPageImpl;
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
    required TResult Function() fetchNextPage,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) {
    return fetchFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchNextPage,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) {
    return fetchFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
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
    required TResult Function(_FetchNextPage value) fetchNextPage,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) {
    return fetchFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchNextPage value)? fetchNextPage,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) {
    return fetchFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchNextPage value)? fetchNextPage,
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
    required TResult Function() fetchNextPage,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addChannel,
  }) {
    return addChannel(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchNextPage,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addChannel,
  }) {
    return addChannel?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
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
    required TResult Function(_FetchNextPage value) fetchNextPage,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddChannel value) addChannel,
  }) {
    return addChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchNextPage value)? fetchNextPage,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddChannel value)? addChannel,
  }) {
    return addChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchNextPage value)? fetchNextPage,
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
  List<ChannelModel>? get channelList => throw _privateConstructorUsedError;
  List<int>? get favouriteChannels => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

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
      List<ChannelModel>? channelList,
      List<int>? favouriteChannels,
      String? error,
      bool hasReachedMax,
      int currentPage});
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
    Object? channelList = freezed,
    Object? favouriteChannels = freezed,
    Object? error = freezed,
    Object? hasReachedMax = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      channelList: freezed == channelList
          ? _value.channelList
          : channelList // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
      favouriteChannels: freezed == favouriteChannels
          ? _value.favouriteChannels
          : favouriteChannels // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
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
      List<ChannelModel>? channelList,
      List<int>? favouriteChannels,
      String? error,
      bool hasReachedMax,
      int currentPage});
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
    Object? channelList = freezed,
    Object? favouriteChannels = freezed,
    Object? error = freezed,
    Object? hasReachedMax = null,
    Object? currentPage = null,
  }) {
    return _then(_$ChannelsStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      channelList: freezed == channelList
          ? _value._channelList
          : channelList // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
      favouriteChannels: freezed == favouriteChannels
          ? _value._favouriteChannels
          : favouriteChannels // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChannelsStateImpl implements _ChannelsState {
  const _$ChannelsStateImpl(
      {this.status,
      final List<ChannelModel>? channelList,
      final List<int>? favouriteChannels,
      this.error,
      this.hasReachedMax = false,
      this.currentPage = 1})
      : _channelList = channelList,
        _favouriteChannels = favouriteChannels;

  @override
  final Status? status;
  final List<ChannelModel>? _channelList;
  @override
  List<ChannelModel>? get channelList {
    final value = _channelList;
    if (value == null) return null;
    if (_channelList is EqualUnmodifiableListView) return _channelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _favouriteChannels;
  @override
  List<int>? get favouriteChannels {
    final value = _favouriteChannels;
    if (value == null) return null;
    if (_favouriteChannels is EqualUnmodifiableListView)
      return _favouriteChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'ChannelsState(status: $status, channelList: $channelList, favouriteChannels: $favouriteChannels, error: $error, hasReachedMax: $hasReachedMax, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._channelList, _channelList) &&
            const DeepCollectionEquality()
                .equals(other._favouriteChannels, _favouriteChannels) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_channelList),
      const DeepCollectionEquality().hash(_favouriteChannels),
      error,
      hasReachedMax,
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelsStateImplCopyWith<_$ChannelsStateImpl> get copyWith =>
      __$$ChannelsStateImplCopyWithImpl<_$ChannelsStateImpl>(this, _$identity);
}

abstract class _ChannelsState implements ChannelsState {
  const factory _ChannelsState(
      {final Status? status,
      final List<ChannelModel>? channelList,
      final List<int>? favouriteChannels,
      final String? error,
      final bool hasReachedMax,
      final int currentPage}) = _$ChannelsStateImpl;

  @override
  Status? get status;
  @override
  List<ChannelModel>? get channelList;
  @override
  List<int>? get favouriteChannels;
  @override
  String? get error;
  @override
  bool get hasReachedMax;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$ChannelsStateImplCopyWith<_$ChannelsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
