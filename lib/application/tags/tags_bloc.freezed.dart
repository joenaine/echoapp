// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TagsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddTag value) addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddTag value)? addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsEventCopyWith<$Res> {
  factory $TagsEventCopyWith(TagsEvent value, $Res Function(TagsEvent) then) =
      _$TagsEventCopyWithImpl<$Res, TagsEvent>;
}

/// @nodoc
class _$TagsEventCopyWithImpl<$Res, $Val extends TagsEvent>
    implements $TagsEventCopyWith<$Res> {
  _$TagsEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$TagsEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$FetchImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({this.search});

  @override
  final String? search;

  @override
  String toString() {
    return 'TagsEvent.fetch(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addTag,
  }) {
    return fetch(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addTag,
  }) {
    return fetch?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addTag,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddTag value) addTag,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TagsEvent {
  const factory _Fetch({final String? search}) = _$FetchImpl;

  String? get search;
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
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
    extends _$TagsEventCopyWithImpl<$Res, _$FetchFavouritesImpl>
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
    return 'TagsEvent.fetchFavourites()';
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
    required TResult Function(String? search) fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addTag,
  }) {
    return fetchFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addTag,
  }) {
    return fetchFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addTag,
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
    required TResult Function(_AddTag value) addTag,
  }) {
    return fetchFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return fetchFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) {
    if (fetchFavourites != null) {
      return fetchFavourites(this);
    }
    return orElse();
  }
}

abstract class _FetchFavourites implements TagsEvent {
  const factory _FetchFavourites() = _$FetchFavouritesImpl;
}

/// @nodoc
abstract class _$$AddTagImplCopyWith<$Res> {
  factory _$$AddTagImplCopyWith(
          _$AddTagImpl value, $Res Function(_$AddTagImpl) then) =
      __$$AddTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddTagImplCopyWithImpl<$Res>
    extends _$TagsEventCopyWithImpl<$Res, _$AddTagImpl>
    implements _$$AddTagImplCopyWith<$Res> {
  __$$AddTagImplCopyWithImpl(
      _$AddTagImpl _value, $Res Function(_$AddTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddTagImpl implements _AddTag {
  const _$AddTagImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TagsEvent.addTag(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTagImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTagImplCopyWith<_$AddTagImpl> get copyWith =>
      __$$AddTagImplCopyWithImpl<_$AddTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addTag,
  }) {
    return addTag(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addTag,
  }) {
    return addTag?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addTag,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddTag value) addTag,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(this);
    }
    return orElse();
  }
}

abstract class _AddTag implements TagsEvent {
  const factory _AddTag({required final int id}) = _$AddTagImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$AddTagImplCopyWith<_$AddTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TagsState {
  List<CategoryModel>? get categories => throw _privateConstructorUsedError;
  List<CategoryModel>? get categoriesFavorite =>
      throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  List<int>? get selectedCategories => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagsStateCopyWith<TagsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsStateCopyWith<$Res> {
  factory $TagsStateCopyWith(TagsState value, $Res Function(TagsState) then) =
      _$TagsStateCopyWithImpl<$Res, TagsState>;
  @useResult
  $Res call(
      {List<CategoryModel>? categories,
      List<CategoryModel>? categoriesFavorite,
      Status? status,
      List<int>? selectedCategories,
      String search,
      String? error});
}

/// @nodoc
class _$TagsStateCopyWithImpl<$Res, $Val extends TagsState>
    implements $TagsStateCopyWith<$Res> {
  _$TagsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? categoriesFavorite = freezed,
    Object? status = freezed,
    Object? selectedCategories = freezed,
    Object? search = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      categoriesFavorite: freezed == categoriesFavorite
          ? _value.categoriesFavorite
          : categoriesFavorite // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      selectedCategories: freezed == selectedCategories
          ? _value.selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagsStateImplCopyWith<$Res>
    implements $TagsStateCopyWith<$Res> {
  factory _$$TagsStateImplCopyWith(
          _$TagsStateImpl value, $Res Function(_$TagsStateImpl) then) =
      __$$TagsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel>? categories,
      List<CategoryModel>? categoriesFavorite,
      Status? status,
      List<int>? selectedCategories,
      String search,
      String? error});
}

/// @nodoc
class __$$TagsStateImplCopyWithImpl<$Res>
    extends _$TagsStateCopyWithImpl<$Res, _$TagsStateImpl>
    implements _$$TagsStateImplCopyWith<$Res> {
  __$$TagsStateImplCopyWithImpl(
      _$TagsStateImpl _value, $Res Function(_$TagsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? categoriesFavorite = freezed,
    Object? status = freezed,
    Object? selectedCategories = freezed,
    Object? search = null,
    Object? error = freezed,
  }) {
    return _then(_$TagsStateImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      categoriesFavorite: freezed == categoriesFavorite
          ? _value._categoriesFavorite
          : categoriesFavorite // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      selectedCategories: freezed == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TagsStateImpl implements _TagsState {
  const _$TagsStateImpl(
      {final List<CategoryModel>? categories,
      final List<CategoryModel>? categoriesFavorite,
      this.status,
      final List<int>? selectedCategories,
      this.search = '',
      this.error})
      : _categories = categories,
        _categoriesFavorite = categoriesFavorite,
        _selectedCategories = selectedCategories;

  final List<CategoryModel>? _categories;
  @override
  List<CategoryModel>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryModel>? _categoriesFavorite;
  @override
  List<CategoryModel>? get categoriesFavorite {
    final value = _categoriesFavorite;
    if (value == null) return null;
    if (_categoriesFavorite is EqualUnmodifiableListView)
      return _categoriesFavorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Status? status;
  final List<int>? _selectedCategories;
  @override
  List<int>? get selectedCategories {
    final value = _selectedCategories;
    if (value == null) return null;
    if (_selectedCategories is EqualUnmodifiableListView)
      return _selectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String search;
  @override
  final String? error;

  @override
  String toString() {
    return 'TagsState(categories: $categories, categoriesFavorite: $categoriesFavorite, status: $status, selectedCategories: $selectedCategories, search: $search, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._categoriesFavorite, _categoriesFavorite) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_categoriesFavorite),
      status,
      const DeepCollectionEquality().hash(_selectedCategories),
      search,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsStateImplCopyWith<_$TagsStateImpl> get copyWith =>
      __$$TagsStateImplCopyWithImpl<_$TagsStateImpl>(this, _$identity);
}

abstract class _TagsState implements TagsState {
  const factory _TagsState(
      {final List<CategoryModel>? categories,
      final List<CategoryModel>? categoriesFavorite,
      final Status? status,
      final List<int>? selectedCategories,
      final String search,
      final String? error}) = _$TagsStateImpl;

  @override
  List<CategoryModel>? get categories;
  @override
  List<CategoryModel>? get categoriesFavorite;
  @override
  Status? get status;
  @override
  List<int>? get selectedCategories;
  @override
  String get search;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$TagsStateImplCopyWith<_$TagsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
