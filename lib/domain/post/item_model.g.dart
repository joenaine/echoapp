// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: (json['id'] as num?)?.toInt(),
      postSummary: json['post_summary'] as String?,
      commentDescription: json['comment_description'] as String?,
      postTemperature: (json['post_temperature'] as num?)?.toDouble(),
      commentTemperature: (json['comment_temperature'] as num?)?.toDouble(),
      channel: json['channel'] as String?,
      postLink: json['post_link'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      personalities: (json['personalities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      views: (json['views'] as num?)?.toInt(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      postDate: json['post_date'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'post_summary': instance.postSummary,
      'comment_description': instance.commentDescription,
      'post_temperature': instance.postTemperature,
      'comment_temperature': instance.commentTemperature,
      'channel': instance.channel,
      'post_link': instance.postLink,
      'categories': instance.categories,
      'tags': instance.tags,
      'personalities': instance.personalities,
      'views': instance.views,
      'images': instance.images,
      'post_date': instance.postDate,
    };
