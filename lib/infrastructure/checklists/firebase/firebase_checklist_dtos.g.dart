// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_checklist_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChecklistDtoImpl _$$ChecklistDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChecklistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: const ServerTimeStampConverter().fromJson(json['createdAt']),
      updatedAt: const ServerTimeStampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$ChecklistDtoImplToJson(_$ChecklistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'createdAt': const ServerTimeStampConverter().toJson(instance.createdAt),
      'updatedAt': const ServerTimeStampConverter().toJson(instance.updatedAt),
    };

_$ItemDtoImpl _$$ItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$ItemDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$ItemDtoImplToJson(_$ItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
    };
