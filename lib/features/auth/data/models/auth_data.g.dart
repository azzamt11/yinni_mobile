// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthData _$AuthDataFromJson(Map<String, dynamic> json) => _AuthData(
  id: json['id'] as String,
  name: json['name'] as String? ?? "",
  email: json['email'] as String? ?? "",
);

Map<String, dynamic> _$AuthDataToJson(_AuthData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
};
