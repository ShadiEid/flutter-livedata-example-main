// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      createdAt: json['createdAt'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      company: json['company'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'username': instance.username,
      'email': instance.email,
      'avatar': instance.avatar,
      'country': instance.country,
      'city': instance.city,
      'company': instance.company,
      'id': instance.id,
    };
