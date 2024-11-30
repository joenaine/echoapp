// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddChannelImplCopyWith<$Res> {
  factory _$$AddChannelImplCopyWith(
          _$AddChannelImpl value, $Res Function(_$AddChannelImpl) then) =
      __$$AddChannelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? channelId});
}

/// @nodoc
class __$$AddChannelImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$AddChannelImpl>
    implements _$$AddChannelImplCopyWith<$Res> {
  __$$AddChannelImplCopyWithImpl(
      _$AddChannelImpl _value, $Res Function(_$AddChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = freezed,
  }) {
    return _then(_$AddChannelImpl(
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AddChannelImpl implements _AddChannel {
  const _$AddChannelImpl({this.channelId});

  @override
  final int? channelId;

  @override
  String toString() {
    return 'FilterEvent.addChannel(channelId: $channelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddChannelImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddChannelImplCopyWith<_$AddChannelImpl> get copyWith =>
      __$$AddChannelImplCopyWithImpl<_$AddChannelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) {
    return addChannel(channelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) {
    return addChannel?.call(channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addChannel != null) {
      return addChannel(channelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) {
    return addChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) {
    return addChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addChannel != null) {
      return addChannel(this);
    }
    return orElse();
  }
}

abstract class _AddChannel implements FilterEvent {
  const factory _AddChannel({final int? channelId}) = _$AddChannelImpl;

  int? get channelId;
  @JsonKey(ignore: true)
  _$$AddChannelImplCopyWith<_$AddChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel? category});
}

/// @nodoc
class __$$AddCategoryImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$AddCategoryImpl>
    implements _$$AddCategoryImplCopyWith<$Res> {
  __$$AddCategoryImplCopyWithImpl(
      _$AddCategoryImpl _value, $Res Function(_$AddCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$AddCategoryImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl implements _AddCategory {
  const _$AddCategoryImpl({this.category});

  @override
  final CategoryModel? category;

  @override
  String toString() {
    return 'FilterEvent.addCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) {
    return addCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) {
    return addCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements FilterEvent {
  const factory _AddCategory({final CategoryModel? category}) =
      _$AddCategoryImpl;

  CategoryModel? get category;
  @JsonKey(ignore: true)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAllCategoriesImplCopyWith<$Res> {
  factory _$$SelectAllCategoriesImplCopyWith(_$SelectAllCategoriesImpl value,
          $Res Function(_$SelectAllCategoriesImpl) then) =
      __$$SelectAllCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel>? allCategories});
}

/// @nodoc
class __$$SelectAllCategoriesImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$SelectAllCategoriesImpl>
    implements _$$SelectAllCategoriesImplCopyWith<$Res> {
  __$$SelectAllCategoriesImplCopyWithImpl(_$SelectAllCategoriesImpl _value,
      $Res Function(_$SelectAllCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCategories = freezed,
  }) {
    return _then(_$SelectAllCategoriesImpl(
      freezed == allCategories
          ? _value._allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc

class _$SelectAllCategoriesImpl implements _SelectAllCategories {
  const _$SelectAllCategoriesImpl(final List<CategoryModel>? allCategories)
      : _allCategories = allCategories;

  final List<CategoryModel>? _allCategories;
  @override
  List<CategoryModel>? get allCategories {
    final value = _allCategories;
    if (value == null) return null;
    if (_allCategories is EqualUnmodifiableListView) return _allCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterEvent.selectAllCategories(allCategories: $allCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAllCategoriesImpl &&
            const DeepCollectionEquality()
                .equals(other._allCategories, _allCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAllCategoriesImplCopyWith<_$SelectAllCategoriesImpl> get copyWith =>
      __$$SelectAllCategoriesImplCopyWithImpl<_$SelectAllCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) {
    return selectAllCategories(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) {
    return selectAllCategories?.call(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) {
    if (selectAllCategories != null) {
      return selectAllCategories(allCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) {
    return selectAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) {
    return selectAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) {
    if (selectAllCategories != null) {
      return selectAllCategories(this);
    }
    return orElse();
  }
}

abstract class _SelectAllCategories implements FilterEvent {
  const factory _SelectAllCategories(final List<CategoryModel>? allCategories) =
      _$SelectAllCategoriesImpl;

  List<CategoryModel>? get allCategories;
  @JsonKey(ignore: true)
  _$$SelectAllCategoriesImplCopyWith<_$SelectAllCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPersonalityImplCopyWith<$Res> {
  factory _$$AddPersonalityImplCopyWith(_$AddPersonalityImpl value,
          $Res Function(_$AddPersonalityImpl) then) =
      __$$AddPersonalityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel? person});
}

/// @nodoc
class __$$AddPersonalityImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$AddPersonalityImpl>
    implements _$$AddPersonalityImplCopyWith<$Res> {
  __$$AddPersonalityImplCopyWithImpl(
      _$AddPersonalityImpl _value, $Res Function(_$AddPersonalityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
  }) {
    return _then(_$AddPersonalityImpl(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$AddPersonalityImpl implements _AddPersonality {
  const _$AddPersonalityImpl({this.person});

  @override
  final CategoryModel? person;

  @override
  String toString() {
    return 'FilterEvent.addPersonality(person: $person)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPersonalityImpl &&
            (identical(other.person, person) || other.person == person));
  }

  @override
  int get hashCode => Object.hash(runtimeType, person);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPersonalityImplCopyWith<_$AddPersonalityImpl> get copyWith =>
      __$$AddPersonalityImplCopyWithImpl<_$AddPersonalityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) {
    return addPersonality(person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) {
    return addPersonality?.call(person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addPersonality != null) {
      return addPersonality(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) {
    return addPersonality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) {
    return addPersonality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addPersonality != null) {
      return addPersonality(this);
    }
    return orElse();
  }
}

abstract class _AddPersonality implements FilterEvent {
  const factory _AddPersonality({final CategoryModel? person}) =
      _$AddPersonalityImpl;

  CategoryModel? get person;
  @JsonKey(ignore: true)
  _$$AddPersonalityImplCopyWith<_$AddPersonalityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAllPersonalitiesImplCopyWith<$Res> {
  factory _$$SelectAllPersonalitiesImplCopyWith(
          _$SelectAllPersonalitiesImpl value,
          $Res Function(_$SelectAllPersonalitiesImpl) then) =
      __$$SelectAllPersonalitiesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel>? allCategories});
}

/// @nodoc
class __$$SelectAllPersonalitiesImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$SelectAllPersonalitiesImpl>
    implements _$$SelectAllPersonalitiesImplCopyWith<$Res> {
  __$$SelectAllPersonalitiesImplCopyWithImpl(
      _$SelectAllPersonalitiesImpl _value,
      $Res Function(_$SelectAllPersonalitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCategories = freezed,
  }) {
    return _then(_$SelectAllPersonalitiesImpl(
      freezed == allCategories
          ? _value._allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc

class _$SelectAllPersonalitiesImpl implements _SelectAllPersonalities {
  const _$SelectAllPersonalitiesImpl(final List<CategoryModel>? allCategories)
      : _allCategories = allCategories;

  final List<CategoryModel>? _allCategories;
  @override
  List<CategoryModel>? get allCategories {
    final value = _allCategories;
    if (value == null) return null;
    if (_allCategories is EqualUnmodifiableListView) return _allCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterEvent.selectAllPersonalities(allCategories: $allCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAllPersonalitiesImpl &&
            const DeepCollectionEquality()
                .equals(other._allCategories, _allCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAllPersonalitiesImplCopyWith<_$SelectAllPersonalitiesImpl>
      get copyWith => __$$SelectAllPersonalitiesImplCopyWithImpl<
          _$SelectAllPersonalitiesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) {
    return selectAllPersonalities(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) {
    return selectAllPersonalities?.call(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) {
    if (selectAllPersonalities != null) {
      return selectAllPersonalities(allCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) {
    return selectAllPersonalities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) {
    return selectAllPersonalities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) {
    if (selectAllPersonalities != null) {
      return selectAllPersonalities(this);
    }
    return orElse();
  }
}

abstract class _SelectAllPersonalities implements FilterEvent {
  const factory _SelectAllPersonalities(
      final List<CategoryModel>? allCategories) = _$SelectAllPersonalitiesImpl;

  List<CategoryModel>? get allCategories;
  @JsonKey(ignore: true)
  _$$SelectAllPersonalitiesImplCopyWith<_$SelectAllPersonalitiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTagImplCopyWith<$Res> {
  factory _$$AddTagImplCopyWith(
          _$AddTagImpl value, $Res Function(_$AddTagImpl) then) =
      __$$AddTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel? tag});
}

/// @nodoc
class __$$AddTagImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$AddTagImpl>
    implements _$$AddTagImplCopyWith<$Res> {
  __$$AddTagImplCopyWithImpl(
      _$AddTagImpl _value, $Res Function(_$AddTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_$AddTagImpl(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$AddTagImpl implements _AddTag {
  const _$AddTagImpl({this.tag});

  @override
  final CategoryModel? tag;

  @override
  String toString() {
    return 'FilterEvent.addTag(tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTagImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTagImplCopyWith<_$AddTagImpl> get copyWith =>
      __$$AddTagImplCopyWithImpl<_$AddTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) {
    return addTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) {
    return addTag?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(this);
    }
    return orElse();
  }
}

abstract class _AddTag implements FilterEvent {
  const factory _AddTag({final CategoryModel? tag}) = _$AddTagImpl;

  CategoryModel? get tag;
  @JsonKey(ignore: true)
  _$$AddTagImplCopyWith<_$AddTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAllTagsImplCopyWith<$Res> {
  factory _$$SelectAllTagsImplCopyWith(
          _$SelectAllTagsImpl value, $Res Function(_$SelectAllTagsImpl) then) =
      __$$SelectAllTagsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel>? allCategories});
}

/// @nodoc
class __$$SelectAllTagsImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$SelectAllTagsImpl>
    implements _$$SelectAllTagsImplCopyWith<$Res> {
  __$$SelectAllTagsImplCopyWithImpl(
      _$SelectAllTagsImpl _value, $Res Function(_$SelectAllTagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCategories = freezed,
  }) {
    return _then(_$SelectAllTagsImpl(
      freezed == allCategories
          ? _value._allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc

class _$SelectAllTagsImpl implements _SelectAllTags {
  const _$SelectAllTagsImpl(final List<CategoryModel>? allCategories)
      : _allCategories = allCategories;

  final List<CategoryModel>? _allCategories;
  @override
  List<CategoryModel>? get allCategories {
    final value = _allCategories;
    if (value == null) return null;
    if (_allCategories is EqualUnmodifiableListView) return _allCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterEvent.selectAllTags(allCategories: $allCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAllTagsImpl &&
            const DeepCollectionEquality()
                .equals(other._allCategories, _allCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAllTagsImplCopyWith<_$SelectAllTagsImpl> get copyWith =>
      __$$SelectAllTagsImplCopyWithImpl<_$SelectAllTagsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? channelId) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllCategories,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(List<CategoryModel>? allCategories)
        selectAllPersonalities,
    required TResult Function(CategoryModel? tag) addTag,
    required TResult Function(List<CategoryModel>? allCategories) selectAllTags,
  }) {
    return selectAllTags(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? channelId)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult? Function(CategoryModel? tag)? addTag,
    TResult? Function(List<CategoryModel>? allCategories)? selectAllTags,
  }) {
    return selectAllTags?.call(allCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? channelId)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(List<CategoryModel>? allCategories)? selectAllCategories,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(List<CategoryModel>? allCategories)?
        selectAllPersonalities,
    TResult Function(CategoryModel? tag)? addTag,
    TResult Function(List<CategoryModel>? allCategories)? selectAllTags,
    required TResult orElse(),
  }) {
    if (selectAllTags != null) {
      return selectAllTags(allCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_SelectAllCategories value) selectAllCategories,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_SelectAllPersonalities value)
        selectAllPersonalities,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_SelectAllTags value) selectAllTags,
  }) {
    return selectAllTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_SelectAllCategories value)? selectAllCategories,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_SelectAllTags value)? selectAllTags,
  }) {
    return selectAllTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_SelectAllCategories value)? selectAllCategories,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_SelectAllPersonalities value)? selectAllPersonalities,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_SelectAllTags value)? selectAllTags,
    required TResult orElse(),
  }) {
    if (selectAllTags != null) {
      return selectAllTags(this);
    }
    return orElse();
  }
}

abstract class _SelectAllTags implements FilterEvent {
  const factory _SelectAllTags(final List<CategoryModel>? allCategories) =
      _$SelectAllTagsImpl;

  List<CategoryModel>? get allCategories;
  @JsonKey(ignore: true)
  _$$SelectAllTagsImplCopyWith<_$SelectAllTagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterState {
  int? get selectedChannelId => throw _privateConstructorUsedError;
  List<CategoryModel>? get personList => throw _privateConstructorUsedError;
  List<CategoryModel>? get categoryList => throw _privateConstructorUsedError;
  List<CategoryModel>? get tagList => throw _privateConstructorUsedError;
  bool? get isAllCategoryChosen => throw _privateConstructorUsedError;
  bool? get isAllPersonalityChosen => throw _privateConstructorUsedError;
  bool? get isAllTagsChosen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {int? selectedChannelId,
      List<CategoryModel>? personList,
      List<CategoryModel>? categoryList,
      List<CategoryModel>? tagList,
      bool? isAllCategoryChosen,
      bool? isAllPersonalityChosen,
      bool? isAllTagsChosen});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChannelId = freezed,
    Object? personList = freezed,
    Object? categoryList = freezed,
    Object? tagList = freezed,
    Object? isAllCategoryChosen = freezed,
    Object? isAllPersonalityChosen = freezed,
    Object? isAllTagsChosen = freezed,
  }) {
    return _then(_value.copyWith(
      selectedChannelId: freezed == selectedChannelId
          ? _value.selectedChannelId
          : selectedChannelId // ignore: cast_nullable_to_non_nullable
              as int?,
      personList: freezed == personList
          ? _value.personList
          : personList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      categoryList: freezed == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      tagList: freezed == tagList
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      isAllCategoryChosen: freezed == isAllCategoryChosen
          ? _value.isAllCategoryChosen
          : isAllCategoryChosen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAllPersonalityChosen: freezed == isAllPersonalityChosen
          ? _value.isAllPersonalityChosen
          : isAllPersonalityChosen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAllTagsChosen: freezed == isAllTagsChosen
          ? _value.isAllTagsChosen
          : isAllTagsChosen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$FilterStateImplCopyWith(
          _$FilterStateImpl value, $Res Function(_$FilterStateImpl) then) =
      __$$FilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? selectedChannelId,
      List<CategoryModel>? personList,
      List<CategoryModel>? categoryList,
      List<CategoryModel>? tagList,
      bool? isAllCategoryChosen,
      bool? isAllPersonalityChosen,
      bool? isAllTagsChosen});
}

/// @nodoc
class __$$FilterStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterStateImpl>
    implements _$$FilterStateImplCopyWith<$Res> {
  __$$FilterStateImplCopyWithImpl(
      _$FilterStateImpl _value, $Res Function(_$FilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChannelId = freezed,
    Object? personList = freezed,
    Object? categoryList = freezed,
    Object? tagList = freezed,
    Object? isAllCategoryChosen = freezed,
    Object? isAllPersonalityChosen = freezed,
    Object? isAllTagsChosen = freezed,
  }) {
    return _then(_$FilterStateImpl(
      selectedChannelId: freezed == selectedChannelId
          ? _value.selectedChannelId
          : selectedChannelId // ignore: cast_nullable_to_non_nullable
              as int?,
      personList: freezed == personList
          ? _value._personList
          : personList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      categoryList: freezed == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      tagList: freezed == tagList
          ? _value._tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      isAllCategoryChosen: freezed == isAllCategoryChosen
          ? _value.isAllCategoryChosen
          : isAllCategoryChosen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAllPersonalityChosen: freezed == isAllPersonalityChosen
          ? _value.isAllPersonalityChosen
          : isAllPersonalityChosen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAllTagsChosen: freezed == isAllTagsChosen
          ? _value.isAllTagsChosen
          : isAllTagsChosen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$FilterStateImpl implements _FilterState {
  const _$FilterStateImpl(
      {this.selectedChannelId,
      final List<CategoryModel>? personList,
      final List<CategoryModel>? categoryList,
      final List<CategoryModel>? tagList,
      this.isAllCategoryChosen,
      this.isAllPersonalityChosen,
      this.isAllTagsChosen})
      : _personList = personList,
        _categoryList = categoryList,
        _tagList = tagList;

  @override
  final int? selectedChannelId;
  final List<CategoryModel>? _personList;
  @override
  List<CategoryModel>? get personList {
    final value = _personList;
    if (value == null) return null;
    if (_personList is EqualUnmodifiableListView) return _personList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryModel>? _categoryList;
  @override
  List<CategoryModel>? get categoryList {
    final value = _categoryList;
    if (value == null) return null;
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryModel>? _tagList;
  @override
  List<CategoryModel>? get tagList {
    final value = _tagList;
    if (value == null) return null;
    if (_tagList is EqualUnmodifiableListView) return _tagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isAllCategoryChosen;
  @override
  final bool? isAllPersonalityChosen;
  @override
  final bool? isAllTagsChosen;

  @override
  String toString() {
    return 'FilterState(selectedChannelId: $selectedChannelId, personList: $personList, categoryList: $categoryList, tagList: $tagList, isAllCategoryChosen: $isAllCategoryChosen, isAllPersonalityChosen: $isAllPersonalityChosen, isAllTagsChosen: $isAllTagsChosen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            (identical(other.selectedChannelId, selectedChannelId) ||
                other.selectedChannelId == selectedChannelId) &&
            const DeepCollectionEquality()
                .equals(other._personList, _personList) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList) &&
            (identical(other.isAllCategoryChosen, isAllCategoryChosen) ||
                other.isAllCategoryChosen == isAllCategoryChosen) &&
            (identical(other.isAllPersonalityChosen, isAllPersonalityChosen) ||
                other.isAllPersonalityChosen == isAllPersonalityChosen) &&
            (identical(other.isAllTagsChosen, isAllTagsChosen) ||
                other.isAllTagsChosen == isAllTagsChosen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedChannelId,
      const DeepCollectionEquality().hash(_personList),
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_tagList),
      isAllCategoryChosen,
      isAllPersonalityChosen,
      isAllTagsChosen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {final int? selectedChannelId,
      final List<CategoryModel>? personList,
      final List<CategoryModel>? categoryList,
      final List<CategoryModel>? tagList,
      final bool? isAllCategoryChosen,
      final bool? isAllPersonalityChosen,
      final bool? isAllTagsChosen}) = _$FilterStateImpl;

  @override
  int? get selectedChannelId;
  @override
  List<CategoryModel>? get personList;
  @override
  List<CategoryModel>? get categoryList;
  @override
  List<CategoryModel>? get tagList;
  @override
  bool? get isAllCategoryChosen;
  @override
  bool? get isAllPersonalityChosen;
  @override
  bool? get isAllTagsChosen;
  @override
  @JsonKey(ignore: true)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
