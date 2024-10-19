// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostDetailModel _$PostDetailModelFromJson(Map<String, dynamic> json) =>
    PostDetailModel(
      id: (json['id'] as num?)?.toInt(),
      postSummary: json['postSummary'] as String?,
      commentDescription: json['commentDescription'] as String?,
      postTemperature: (json['postTemperature'] as num?)?.toDouble(),
      commentTemperature: (json['commentTemperature'] as num?)?.toDouble(),
      channel: json['channel'] as String?,
      postLink: json['postLink'] as String?,
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
      postDate: json['postDate'] == null
          ? null
          : DateTime.parse(json['postDate'] as String),
      similarPosts: (json['similarPosts'] as List<dynamic>?)
          ?.map((e) => SimilarPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostDetailModelToJson(PostDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postSummary': instance.postSummary,
      'commentDescription': instance.commentDescription,
      'postTemperature': instance.postTemperature,
      'commentTemperature': instance.commentTemperature,
      'channel': instance.channel,
      'postLink': instance.postLink,
      'categories': instance.categories,
      'tags': instance.tags,
      'personalities': instance.personalities,
      'views': instance.views,
      'images': instance.images,
      'postDate': instance.postDate?.toIso8601String(),
      'similarPosts': instance.similarPosts?.map((e) => e.toJson()).toList(),
    };

SimilarPost _$SimilarPostFromJson(Map<String, dynamic> json) => SimilarPost(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SimilarPostToJson(SimilarPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'categories': instance.categories,
      'tags': instance.tags,
    };
