// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) => ChannelModel(
      id: (json['id'] as num?)?.toInt(),
      isFavorite: json['is_favorite'] as bool?,
      isClosed: json['is_closed'] as bool?,
      author: json['author'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$ChannelModelToJson(ChannelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'link': instance.link,
      'is_favorite': instance.isFavorite,
      'is_closed': instance.isClosed,
      'avatar_url': instance.avatarUrl,
    };
