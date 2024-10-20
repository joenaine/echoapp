// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSingleModel _$PostSingleModelFromJson(Map<String, dynamic> json) =>
    PostSingleModel(
      post: json['post'] == null
          ? null
          : PostDetailModel.fromJson(json['post'] as Map<String, dynamic>),
      similarPosts: (json['similar_posts'] as List<dynamic>?)
          ?.map((e) => SimilarPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostSingleModelToJson(PostSingleModel instance) =>
    <String, dynamic>{
      'post': instance.post?.toJson(),
      'similar_posts': instance.similarPosts?.map((e) => e.toJson()).toList(),
    };

PostDetailModel _$PostDetailModelFromJson(Map<String, dynamic> json) =>
    PostDetailModel(
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
      postDate: json['post_date'] == null
          ? null
          : DateTime.parse(json['post_date'] as String),
    );

Map<String, dynamic> _$PostDetailModelToJson(PostDetailModel instance) =>
    <String, dynamic>{
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
      'post_date': instance.postDate?.toIso8601String(),
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
