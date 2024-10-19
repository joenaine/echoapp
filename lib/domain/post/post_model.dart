import 'package:json_annotation/json_annotation.dart';

import 'item_model.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  final List<Item> items;
  final int count;

  PostModel({
    required this.items,
    required this.count,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
