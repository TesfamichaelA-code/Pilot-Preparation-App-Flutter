// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourceImpl _$$ResourceImplFromJson(Map<String, dynamic> json) =>
    _$ResourceImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      category: json['category'] as String,
      author: json['author'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      externalUrl: json['externalUrl'] as String,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ResourceImplToJson(_$ResourceImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'author': instance.author,
      'tags': instance.tags,
      'externalUrl': instance.externalUrl,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
