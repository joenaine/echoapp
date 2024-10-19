import 'package:json_annotation/json_annotation.dart';

part 'item_model.g.dart';

@JsonSerializable()
class Item {
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
  final List<String>? personalities;
  final int? views;
  final List<String>? images;

  @JsonKey(name: 'post_date')
  final String? postDate;

  Item({
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
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
