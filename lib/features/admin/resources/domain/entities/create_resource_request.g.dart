// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_resource_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateResourceRequestImpl _$$CreateResourceRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateResourceRequestImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      category: json['category'] as String,
      author: json['author'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      externalUrl: json['externalUrl'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$CreateResourceRequestImplToJson(
        _$CreateResourceRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'author': instance.author,
      'tags': instance.tags,
      'externalUrl': instance.externalUrl,
      'isActive': instance.isActive,
    };
