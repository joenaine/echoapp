// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personality_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PersonalityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPerson value) addPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPerson value)? addPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPerson value)? addPerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalityEventCopyWith<$Res> {
  factory $PersonalityEventCopyWith(
          PersonalityEvent value, $Res Function(PersonalityEvent) then) =
      _$PersonalityEventCopyWithImpl<$Res, PersonalityEvent>;
}

/// @nodoc
class _$PersonalityEventCopyWithImpl<$Res, $Val extends PersonalityEvent>
    implements $PersonalityEventCopyWith<$Res> {
  _$PersonalityEventCopyWithImpl(this._value, this._then);

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
    extends _$PersonalityEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'PersonalityEvent.fetch(search: $search)';
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
    required TResult Function(int id) addPerson,
  }) {
    return fetch(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPerson,
  }) {
    return fetch?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPerson,
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
    required TResult Function(_AddPerson value) addPerson,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPerson value)? addPerson,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPerson value)? addPerson,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements PersonalityEvent {
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
    extends _$PersonalityEventCopyWithImpl<$Res, _$FetchFavouritesImpl>
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
    return 'PersonalityEvent.fetchFavourites()';
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
    required TResult Function(int id) addPerson,
  }) {
    return fetchFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPerson,
  }) {
    return fetchFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPerson,
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
    required TResult Function(_AddPerson value) addPerson,
  }) {
    return fetchFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPerson value)? addPerson,
  }) {
    return fetchFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPerson value)? addPerson,
    required TResult orElse(),
  }) {
    if (fetchFavourites != null) {
      return fetchFavourites(this);
    }
    return orElse();
  }
}

abstract class _FetchFavourites implements PersonalityEvent {
  const factory _FetchFavourites() = _$FetchFavouritesImpl;
}

/// @nodoc
abstract class _$$AddPersonImplCopyWith<$Res> {
  factory _$$AddPersonImplCopyWith(
          _$AddPersonImpl value, $Res Function(_$AddPersonImpl) then) =
      __$$AddPersonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AddPersonImplCopyWithImpl<$Res>
    extends _$PersonalityEventCopyWithImpl<$Res, _$AddPersonImpl>
    implements _$$AddPersonImplCopyWith<$Res> {
  __$$AddPersonImplCopyWithImpl(
      _$AddPersonImpl _value, $Res Function(_$AddPersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddPersonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddPersonImpl implements _AddPerson {
  const _$AddPersonImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PersonalityEvent.addPerson(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPersonImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPersonImplCopyWith<_$AddPersonImpl> get copyWith =>
      __$$AddPersonImplCopyWithImpl<_$AddPersonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetch,
    required TResult Function() fetchFavourites,
    required TResult Function(int id) addPerson,
  }) {
    return addPerson(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetch,
    TResult? Function()? fetchFavourites,
    TResult? Function(int id)? addPerson,
  }) {
    return addPerson?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetch,
    TResult Function()? fetchFavourites,
    TResult Function(int id)? addPerson,
    required TResult orElse(),
  }) {
    if (addPerson != null) {
      return addPerson(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchFavourites value) fetchFavourites,
    required TResult Function(_AddPerson value) addPerson,
  }) {
    return addPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchFavourites value)? fetchFavourites,
    TResult? Function(_AddPerson value)? addPerson,
  }) {
    return addPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchFavourites value)? fetchFavourites,
    TResult Function(_AddPerson value)? addPerson,
    required TResult orElse(),
  }) {
    if (addPerson != null) {
      return addPerson(this);
    }
    return orElse();
  }
}

abstract class _AddPerson implements PersonalityEvent {
  const factory _AddPerson({required final int id}) = _$AddPersonImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$AddPersonImplCopyWith<_$AddPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalityState {
  List<CategoryModel>? get categories => throw _privateConstructorUsedError;
  List<CategoryModel>? get categoriesFavorite =>
      throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  List<int>? get selectedCategories => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalityStateCopyWith<PersonalityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalityStateCopyWith<$Res> {
  factory $PersonalityStateCopyWith(
          PersonalityState value, $Res Function(PersonalityState) then) =
      _$PersonalityStateCopyWithImpl<$Res, PersonalityState>;
  @useResult
  $Res call(
      {List<CategoryModel>? categories,
      List<CategoryModel>? categoriesFavorite,
      Status? status,
      List<int>? selectedCategories,
      String? error});
}

/// @nodoc
class _$PersonalityStateCopyWithImpl<$Res, $Val extends PersonalityState>
    implements $PersonalityStateCopyWith<$Res> {
  _$PersonalityStateCopyWithImpl(this._value, this._then);

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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalityStateImplCopyWith<$Res>
    implements $PersonalityStateCopyWith<$Res> {
  factory _$$PersonalityStateImplCopyWith(_$PersonalityStateImpl value,
          $Res Function(_$PersonalityStateImpl) then) =
      __$$PersonalityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel>? categories,
      List<CategoryModel>? categoriesFavorite,
      Status? status,
      List<int>? selectedCategories,
      String? error});
}

/// @nodoc
class __$$PersonalityStateImplCopyWithImpl<$Res>
    extends _$PersonalityStateCopyWithImpl<$Res, _$PersonalityStateImpl>
    implements _$$PersonalityStateImplCopyWith<$Res> {
  __$$PersonalityStateImplCopyWithImpl(_$PersonalityStateImpl _value,
      $Res Function(_$PersonalityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? categoriesFavorite = freezed,
    Object? status = freezed,
    Object? selectedCategories = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PersonalityStateImpl(
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PersonalityStateImpl implements _PersonalityState {
  const _$PersonalityStateImpl(
      {final List<CategoryModel>? categories,
      final List<CategoryModel>? categoriesFavorite,
      this.status,
      final List<int>? selectedCategories,
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
  final String? error;

  @override
  String toString() {
    return 'PersonalityState(categories: $categories, categoriesFavorite: $categoriesFavorite, status: $status, selectedCategories: $selectedCategories, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalityStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._categoriesFavorite, _categoriesFavorite) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_categoriesFavorite),
      status,
      const DeepCollectionEquality().hash(_selectedCategories),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalityStateImplCopyWith<_$PersonalityStateImpl> get copyWith =>
      __$$PersonalityStateImplCopyWithImpl<_$PersonalityStateImpl>(
          this, _$identity);
}

abstract class _PersonalityState implements PersonalityState {
  const factory _PersonalityState(
      {final List<CategoryModel>? categories,
      final List<CategoryModel>? categoriesFavorite,
      final Status? status,
      final List<int>? selectedCategories,
      final String? error}) = _$PersonalityStateImpl;

  @override
  List<CategoryModel>? get categories;
  @override
  List<CategoryModel>? get categoriesFavorite;
  @override
  Status? get status;
  @override
  List<int>? get selectedCategories;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PersonalityStateImplCopyWith<_$PersonalityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
