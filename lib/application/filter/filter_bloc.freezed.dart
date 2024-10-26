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
    required TResult Function(ChannelModel? channel) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(CategoryModel? tag) addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChannelModel? channel)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(CategoryModel? tag)? addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChannelModel? channel)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(CategoryModel? tag)? addTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_AddTag value) addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_AddTag value)? addTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_AddTag value)? addTag,
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
  $Res call({ChannelModel? channel});
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
    Object? channel = freezed,
  }) {
    return _then(_$AddChannelImpl(
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel?,
    ));
  }
}

/// @nodoc

class _$AddChannelImpl implements _AddChannel {
  const _$AddChannelImpl({this.channel});

  @override
  final ChannelModel? channel;

  @override
  String toString() {
    return 'FilterEvent.addChannel(channel: $channel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddChannelImpl &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddChannelImplCopyWith<_$AddChannelImpl> get copyWith =>
      __$$AddChannelImplCopyWithImpl<_$AddChannelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChannelModel? channel) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(CategoryModel? tag) addTag,
  }) {
    return addChannel(channel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChannelModel? channel)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(CategoryModel? tag)? addTag,
  }) {
    return addChannel?.call(channel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChannelModel? channel)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(CategoryModel? tag)? addTag,
    required TResult orElse(),
  }) {
    if (addChannel != null) {
      return addChannel(channel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddChannel value) addChannel,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_AddTag value) addTag,
  }) {
    return addChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return addChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_AddTag value)? addTag,
    required TResult orElse(),
  }) {
    if (addChannel != null) {
      return addChannel(this);
    }
    return orElse();
  }
}

abstract class _AddChannel implements FilterEvent {
  const factory _AddChannel({final ChannelModel? channel}) = _$AddChannelImpl;

  ChannelModel? get channel;
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
    required TResult Function(ChannelModel? channel) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(CategoryModel? tag) addTag,
  }) {
    return addCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChannelModel? channel)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(CategoryModel? tag)? addTag,
  }) {
    return addCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChannelModel? channel)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(CategoryModel? tag)? addTag,
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
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_AddTag value) addTag,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_AddTag value)? addTag,
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
    required TResult Function(ChannelModel? channel) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(CategoryModel? tag) addTag,
  }) {
    return addPersonality(person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChannelModel? channel)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(CategoryModel? tag)? addTag,
  }) {
    return addPersonality?.call(person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChannelModel? channel)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(CategoryModel? tag)? addTag,
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
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_AddTag value) addTag,
  }) {
    return addPersonality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return addPersonality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_AddTag value)? addTag,
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
    required TResult Function(ChannelModel? channel) addChannel,
    required TResult Function(CategoryModel? category) addCategory,
    required TResult Function(CategoryModel? person) addPersonality,
    required TResult Function(CategoryModel? tag) addTag,
  }) {
    return addTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChannelModel? channel)? addChannel,
    TResult? Function(CategoryModel? category)? addCategory,
    TResult? Function(CategoryModel? person)? addPersonality,
    TResult? Function(CategoryModel? tag)? addTag,
  }) {
    return addTag?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChannelModel? channel)? addChannel,
    TResult Function(CategoryModel? category)? addCategory,
    TResult Function(CategoryModel? person)? addPersonality,
    TResult Function(CategoryModel? tag)? addTag,
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
    required TResult Function(_AddPersonality value) addPersonality,
    required TResult Function(_AddTag value) addTag,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddChannel value)? addChannel,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddPersonality value)? addPersonality,
    TResult? Function(_AddTag value)? addTag,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddChannel value)? addChannel,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddPersonality value)? addPersonality,
    TResult Function(_AddTag value)? addTag,
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
mixin _$FilterState {
  List<ChannelModel>? get channelList => throw _privateConstructorUsedError;
  List<CategoryModel>? get personList => throw _privateConstructorUsedError;
  List<CategoryModel>? get categoryList => throw _privateConstructorUsedError;
  List<CategoryModel>? get tagList => throw _privateConstructorUsedError;

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
      {List<ChannelModel>? channelList,
      List<CategoryModel>? personList,
      List<CategoryModel>? categoryList,
      List<CategoryModel>? tagList});
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
    Object? channelList = freezed,
    Object? personList = freezed,
    Object? categoryList = freezed,
    Object? tagList = freezed,
  }) {
    return _then(_value.copyWith(
      channelList: freezed == channelList
          ? _value.channelList
          : channelList // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
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
      {List<ChannelModel>? channelList,
      List<CategoryModel>? personList,
      List<CategoryModel>? categoryList,
      List<CategoryModel>? tagList});
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
    Object? channelList = freezed,
    Object? personList = freezed,
    Object? categoryList = freezed,
    Object? tagList = freezed,
  }) {
    return _then(_$FilterStateImpl(
      channelList: freezed == channelList
          ? _value._channelList
          : channelList // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>?,
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
    ));
  }
}

/// @nodoc

class _$FilterStateImpl implements _FilterState {
  const _$FilterStateImpl(
      {final List<ChannelModel>? channelList,
      final List<CategoryModel>? personList,
      final List<CategoryModel>? categoryList,
      final List<CategoryModel>? tagList})
      : _channelList = channelList,
        _personList = personList,
        _categoryList = categoryList,
        _tagList = tagList;

  final List<ChannelModel>? _channelList;
  @override
  List<ChannelModel>? get channelList {
    final value = _channelList;
    if (value == null) return null;
    if (_channelList is EqualUnmodifiableListView) return _channelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  String toString() {
    return 'FilterState(channelList: $channelList, personList: $personList, categoryList: $categoryList, tagList: $tagList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            const DeepCollectionEquality()
                .equals(other._channelList, _channelList) &&
            const DeepCollectionEquality()
                .equals(other._personList, _personList) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_channelList),
      const DeepCollectionEquality().hash(_personList),
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_tagList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {final List<ChannelModel>? channelList,
      final List<CategoryModel>? personList,
      final List<CategoryModel>? categoryList,
      final List<CategoryModel>? tagList}) = _$FilterStateImpl;

  @override
  List<ChannelModel>? get channelList;
  @override
  List<CategoryModel>? get personList;
  @override
  List<CategoryModel>? get categoryList;
  @override
  List<CategoryModel>? get tagList;
  @override
  @JsonKey(ignore: true)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
