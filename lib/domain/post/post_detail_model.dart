import 'package:echoapp/domain/category/category_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PostSingleModel {
  final PostDetailModel? post;
  @JsonKey(name: 'similar_posts')
  final List<SimilarPost>? similarPosts;

  PostSingleModel({
    this.post,
    this.similarPosts,
  });

  factory PostSingleModel.fromJson(Map<String, dynamic> json) =>
      _$PostSingleModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostSingleModelToJson(this);
}

@JsonSerializable()
class PostDetailModel {
  final int? id;
  @JsonKey(name: 'post_summary')
  final String? postSummary;
  @JsonKey(name: 'comment_description')
  final String? commentDescription;
  @JsonKey(name: 'post_temperature')
  final double? postTemperature;
  @JsonKey(name: 'comment_temperature')
  final double? commentTemperature;
  final String? channel;
  @JsonKey(name: 'post_link')
  final String? postLink;
  final List<String>? categories;
  final List<String>? tags;
  final List<CategoryModel>? personalities;
  final int? views;
  final List<String>? images;
  @JsonKey(name: 'post_date')
  final DateTime? postDate;

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
    // this.similarPosts,
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
