// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChecklistDto _$$_ChecklistDtoFromJson(Map<String, dynamic> json) =>
    _$_ChecklistDto(
      id: json['id'] as String,
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      serverTimeStamp:
          const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
    );

Map<String, dynamic> _$$_ChecklistDtoToJson(_$_ChecklistDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };

_$_ItemDto _$$_ItemDtoFromJson(Map<String, dynamic> json) => _$_ItemDto(
      id: json['id'] as String,
      name: json['name'] as String,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
    };
