// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchByCategory,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPost,
    required TResult Function(String search) searchPost,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchByCategory,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPost,
    TResult? Function(String search)? searchPost,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchByCategory,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPost,
    TResult Function(String search)? searchPost,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPost value) addPost,
    required TResult Function(_SearchPost value) searchPost,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPost value)? addPost,
    TResult? Function(_SearchPost value)? searchPost,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPost value)? addPost,
    TResult Function(_SearchPost value)? searchPost,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res, PostsEvent>;
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res, $Val extends PostsEvent>
    implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

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
    extends _$PostsEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'PostsEvent.fetch()';
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
    required TResult Function(int? id) fetchByCategory,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPost,
    required TResult Function(String search) searchPost,
    required TResult Function() loadMore,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchByCategory,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPost,
    TResult? Function(String search)? searchPost,
    TResult? Function()? loadMore,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchByCategory,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPost,
    TResult Function(String search)? searchPost,
    TResult Function()? loadMore,
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
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPost value) addPost,
    required TResult Function(_SearchPost value) searchPost,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPost value)? addPost,
    TResult? Function(_SearchPost value)? searchPost,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPost value)? addPost,
    TResult Function(_SearchPost value)? searchPost,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements PostsEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$FetchByCategoryImplCopyWith<$Res> {
  factory _$$FetchByCategoryImplCopyWith(_$FetchByCategoryImpl value,
          $Res Function(_$FetchByCategoryImpl) then) =
      __$$FetchByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$FetchByCategoryImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$FetchByCategoryImpl>
    implements _$$FetchByCategoryImplCopyWith<$Res> {
  __$$FetchByCategoryImplCopyWithImpl(
      _$FetchByCategoryImpl _value, $Res Function(_$FetchByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$FetchByCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchByCategoryImpl implements _FetchByCategory {
  const _$FetchByCategoryImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'PostsEvent.fetchByCategory(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchByCategoryImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchByCategoryImplCopyWith<_$FetchByCategoryImpl> get copyWith =>
      __$$FetchByCategoryImplCopyWithImpl<_$FetchByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchByCategory,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPost,
    required TResult Function(String search) searchPost,
    required TResult Function() loadMore,
  }) {
    return fetchByCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchByCategory,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPost,
    TResult? Function(String search)? searchPost,
    TResult? Function()? loadMore,
  }) {
    return fetchByCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchByCategory,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPost,
    TResult Function(String search)? searchPost,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (fetchByCategory != null) {
      return fetchByCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPost value) addPost,
    required TResult Function(_SearchPost value) searchPost,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return fetchByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPost value)? addPost,
    TResult? Function(_SearchPost value)? searchPost,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return fetchByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPost value)? addPost,
    TResult Function(_SearchPost value)? searchPost,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (fetchByCategory != null) {
      return fetchByCategory(this);
    }
    return orElse();
  }
}

abstract class _FetchByCategory implements PostsEvent {
  const factory _FetchByCategory({final int? id}) = _$FetchByCategoryImpl;

  int? get id;
  @JsonKey(ignore: true)
  _$$FetchByCategoryImplCopyWith<_$FetchByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFavouritesImplCopyWith<$Res> {
  factory _$$FetchFavouritesImplCopyWith(_$FetchFavouritesImpl value,
          $Res Function(_$FetchFavouritesImpl) then) =
      __$$FetchFavouritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFavouritesImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$FetchFavouritesImpl>
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
    return 'PostsEvent.fetchFavourites()';
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
    required TResult Function(int? id) fetchByCategory,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPost,
    required TResult Function(String search) searchPost,
    required TResult Function() loadMore,
  }) {
    return fetchFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchByCategory,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPost,
    TResult? Function(String search)? searchPost,
    TResult? Function()? loadMore,
  }) {
    return fetchFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchByCategory,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPost,
    TResult Function(String search)? searchPost,
    TResult Function()? loadMore,
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
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPost value) addPost,
    required TResult Function(_SearchPost value) searchPost,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return fetchFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPost value)? addPost,
    TResult? Function(_SearchPost value)? searchPost,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return fetchFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPost value)? addPost,
    TResult Function(_SearchPost value)? searchPost,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (fetchFavourites != null) {
      return fetchFavourites(this);
    }
    return orElse();
  }
}

abstract class _FetchFavourites implements PostsEvent {
  const factory _FetchFavourites() = _$FetchFavouritesImpl;
}

/// @nodoc
abstract class _$$AddPostImplCopyWith<$Res> {
  factory _$$AddPostImplCopyWith(
          _$AddPostImpl value, $Res Function(_$AddPostImpl) then) =
      __$$AddPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddPostImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$AddPostImpl>
    implements _$$AddPostImplCopyWith<$Res> {
  __$$AddPostImplCopyWithImpl(
      _$AddPostImpl _value, $Res Function(_$AddPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddPostImpl implements _AddPost {
  const _$AddPostImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PostsEvent.addPost(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPostImplCopyWith<_$AddPostImpl> get copyWith =>
      __$$AddPostImplCopyWithImpl<_$AddPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchByCategory,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPost,
    required TResult Function(String search) searchPost,
    required TResult Function() loadMore,
  }) {
    return addPost(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchByCategory,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPost,
    TResult? Function(String search)? searchPost,
    TResult? Function()? loadMore,
  }) {
    return addPost?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchByCategory,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPost,
    TResult Function(String search)? searchPost,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (addPost != null) {
      return addPost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPost value) addPost,
    required TResult Function(_SearchPost value) searchPost,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return addPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPost value)? addPost,
    TResult? Function(_SearchPost value)? searchPost,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return addPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPost value)? addPost,
    TResult Function(_SearchPost value)? searchPost,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (addPost != null) {
      return addPost(this);
    }
    return orElse();
  }
}

abstract class _AddPost implements PostsEvent {
  const factory _AddPost({required final int id}) = _$AddPostImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$AddPostImplCopyWith<_$AddPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchPostImplCopyWith<$Res> {
  factory _$$SearchPostImplCopyWith(
          _$SearchPostImpl value, $Res Function(_$SearchPostImpl) then) =
      __$$SearchPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchPostImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$SearchPostImpl>
    implements _$$SearchPostImplCopyWith<$Res> {
  __$$SearchPostImplCopyWithImpl(
      _$SearchPostImpl _value, $Res Function(_$SearchPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SearchPostImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchPostImpl implements _SearchPost {
  const _$SearchPostImpl({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'PostsEvent.searchPost(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPostImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPostImplCopyWith<_$SearchPostImpl> get copyWith =>
      __$$SearchPostImplCopyWithImpl<_$SearchPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchByCategory,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPost,
    required TResult Function(String search) searchPost,
    required TResult Function() loadMore,
  }) {
    return searchPost(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchByCategory,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPost,
    TResult? Function(String search)? searchPost,
    TResult? Function()? loadMore,
  }) {
    return searchPost?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchByCategory,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPost,
    TResult Function(String search)? searchPost,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (searchPost != null) {
      return searchPost(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPost value) addPost,
    required TResult Function(_SearchPost value) searchPost,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return searchPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPost value)? addPost,
    TResult? Function(_SearchPost value)? searchPost,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return searchPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPost value)? addPost,
    TResult Function(_SearchPost value)? searchPost,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (searchPost != null) {
      return searchPost(this);
    }
    return orElse();
  }
}

abstract class _SearchPost implements PostsEvent {
  const factory _SearchPost({required final String search}) = _$SearchPostImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$SearchPostImplCopyWith<_$SearchPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
          _$LoadMoreImpl value, $Res Function(_$LoadMoreImpl) then) =
      __$$LoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$LoadMoreImpl>
    implements _$$LoadMoreImplCopyWith<$Res> {
  __$$LoadMoreImplCopyWithImpl(
      _$LoadMoreImpl _value, $Res Function(_$LoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreImpl implements _LoadMore {
  const _$LoadMoreImpl();

  @override
  String toString() {
    return 'PostsEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchByCategory,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPost,
    required TResult Function(String search) searchPost,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchByCategory,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPost,
    TResult? Function(String search)? searchPost,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchByCategory,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPost,
    TResult Function(String search)? searchPost,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchByCategory value) fetchByCategory,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPost value) addPost,
    required TResult Function(_SearchPost value) searchPost,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchByCategory value)? fetchByCategory,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPost value)? addPost,
    TResult? Function(_SearchPost value)? searchPost,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchByCategory value)? fetchByCategory,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPost value)? addPost,
    TResult Function(_SearchPost value)? searchPost,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements PostsEvent {
  const factory _LoadMore() = _$LoadMoreImpl;
}

/// @nodoc
mixin _$PostsState {
  Status? get status => throw _privateConstructorUsedError;
  PostModel? get postModel => throw _privateConstructorUsedError;
  PostModel? get searchPostModel => throw _privateConstructorUsedError;
  List<int>? get favouritePosts => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
  @useResult
  $Res call(
      {Status? status,
      PostModel? postModel,
      PostModel? searchPostModel,
      List<int>? favouritePosts,
      bool hasMore,
      String? error});
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? postModel = freezed,
    Object? searchPostModel = freezed,
    Object? favouritePosts = freezed,
    Object? hasMore = null,
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
              as PostModel?,
      searchPostModel: freezed == searchPostModel
          ? _value.searchPostModel
          : searchPostModel // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      favouritePosts: freezed == favouritePosts
          ? _value.favouritePosts
          : favouritePosts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsStateImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$PostsStateImplCopyWith(
          _$PostsStateImpl value, $Res Function(_$PostsStateImpl) then) =
      __$$PostsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status? status,
      PostModel? postModel,
      PostModel? searchPostModel,
      List<int>? favouritePosts,
      bool hasMore,
      String? error});
}

/// @nodoc
class __$$PostsStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsStateImpl>
    implements _$$PostsStateImplCopyWith<$Res> {
  __$$PostsStateImplCopyWithImpl(
      _$PostsStateImpl _value, $Res Function(_$PostsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? postModel = freezed,
    Object? searchPostModel = freezed,
    Object? favouritePosts = freezed,
    Object? hasMore = null,
    Object? error = freezed,
  }) {
    return _then(_$PostsStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      postModel: freezed == postModel
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      searchPostModel: freezed == searchPostModel
          ? _value.searchPostModel
          : searchPostModel // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      favouritePosts: freezed == favouritePosts
          ? _value._favouritePosts
          : favouritePosts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostsStateImpl implements _PostsState {
  const _$PostsStateImpl(
      {this.status,
      this.postModel,
      this.searchPostModel,
      final List<int>? favouritePosts,
      this.hasMore = false,
      this.error})
      : _favouritePosts = favouritePosts;

  @override
  final Status? status;
  @override
  final PostModel? postModel;
  @override
  final PostModel? searchPostModel;
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
  @JsonKey()
  final bool hasMore;
  @override
  final String? error;

  @override
  String toString() {
    return 'PostsState(status: $status, postModel: $postModel, searchPostModel: $searchPostModel, favouritePosts: $favouritePosts, hasMore: $hasMore, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.postModel, postModel) ||
                other.postModel == postModel) &&
            (identical(other.searchPostModel, searchPostModel) ||
                other.searchPostModel == searchPostModel) &&
            const DeepCollectionEquality()
                .equals(other._favouritePosts, _favouritePosts) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      postModel,
      searchPostModel,
      const DeepCollectionEquality().hash(_favouritePosts),
      hasMore,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      __$$PostsStateImplCopyWithImpl<_$PostsStateImpl>(this, _$identity);
}

abstract class _PostsState implements PostsState {
  const factory _PostsState(
      {final Status? status,
      final PostModel? postModel,
      final PostModel? searchPostModel,
      final List<int>? favouritePosts,
      final bool hasMore,
      final String? error}) = _$PostsStateImpl;

  @override
  Status? get status;
  @override
  PostModel? get postModel;
  @override
  PostModel? get searchPostModel;
  @override
  List<int>? get favouritePosts;
  @override
  bool get hasMore;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
