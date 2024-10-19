import 'package:json_annotation/json_annotation.dart';

import 'item_model.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  final List<Item>? items;
  final int? count;

  PostModel({
    this.items,
    this.count,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  PostModel copyWith({
    List<Item>? items,
    int? count,
  }) {
    return PostModel(
      items: items ?? this.items,
      count: count ?? this.count,
    );
  }
}
