// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListResponse<T> _$$_ListResponseFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$_ListResponse<T>(
      total: json['total'] as int?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => _$nullableGenericFromJson(e, fromJsonT))
          .toList(),
    );

Map<String, dynamic> _$$_ListResponseToJson<T>(
  _$_ListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'list': instance.list
          ?.map((e) => _$nullableGenericToJson(e, toJsonT))
          .toList(),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
