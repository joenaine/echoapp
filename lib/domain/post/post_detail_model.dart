import 'package:json_annotation/json_annotation.dart';

part 'post_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PostDetailModel {
  final int? id;
  final String? postSummary;
  final String? commentDescription;
  final double? postTemperature;
  final double? commentTemperature;
  final String? channel;
  final String? postLink;
  final List<String>? categories;
  final List<String>? tags;
  final List<String>? personalities;
  final int? views;
  final List<String>? images;
  final DateTime? postDate;
  final List<SimilarPost>? similarPosts;

  PostDetailModel({
    this.id,
    this.postSummary,
    this.commentDescription,
    this.postTemperature,
    this.commentTemperature,
    this.channel,
    this.postLink,
    this.categories,
    this.tags,
    this.personalities,
    this.views,
    this.images,
    this.postDate,
    this.similarPosts,
  });

  factory PostDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PostDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostDetailModelToJson(this);
}

@JsonSerializable()
class SimilarPost {
  final int? id;
  final String? title;
  final List<String>? categories;
  final List<String>? tags;

  SimilarPost({
    this.id,
    this.title,
    this.categories,
    this.tags,
  });

  factory SimilarPost.fromJson(Map<String, dynamic> json) =>
      _$SimilarPostFromJson(json);
  Map<String, dynamic> toJson() => _$SimilarPostToJson(this);
}
