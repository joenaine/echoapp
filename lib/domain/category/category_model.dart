import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  final int? id;
  final String? name;
  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;
  CategoryModel({
    this.id,
    this.name,
    this.isFavorite,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  // A method to convert a UserModel instance to JSON
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
