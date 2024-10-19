// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      subscriptionExpiry: json['subscription_expiry'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'subscription_expiry': instance.subscriptionExpiry,
      'role': instance.role,
    };
