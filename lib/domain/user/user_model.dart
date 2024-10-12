import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String? username;
  final String? password;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;

  UserModel({
    this.username,
    this.password,
    this.firstName,
    this.lastName,
  });

  // A factory constructor to create a UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  // A method to convert a UserModel instance to JSON
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
