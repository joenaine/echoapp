import 'package:json_annotation/json_annotation.dart';

part 'channel_model.g.dart';

@JsonSerializable()
class ChannelModel {
  final int? id;
  final String? author;
  final String? link;
  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;
  @JsonKey(name: 'is_closed')
  final bool? isClosed;
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  ChannelModel({
    this.id,
    this.author,
    this.link,
    this.isFavorite,
    this.isClosed,
    this.avatarUrl,
  });

  factory ChannelModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelModelToJson(this);
}
