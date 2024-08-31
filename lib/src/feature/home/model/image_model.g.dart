// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      json['id'] as String,
      json['url'] as String,
      (json['width'] as num).toInt(),
      (json['height'] as num).toInt(),
      json['mime_type'] as String?,
      (json['breeds'] as List<dynamic>?)
          ?.map((e) => BreedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'mime_type': instance.mimeType,
      'breeds': instance.breeds,
      'categories': instance.categories,
    };
