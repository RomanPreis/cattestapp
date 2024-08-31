// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreedModel _$BreedModelFromJson(Map<String, dynamic> json) => BreedModel(
      (json['weight'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      json['id'] as String?,
      json['name'] as String?,
      json['vetstreet_url'] as String?,
      json['temperament'] as String?,
      json['origin'] as String?,
      json['country_codes'],
      json['country_code'] as String?,
      json['description'] as String?,
      json['life_span'] as String?,
      (json['indoor'] as num?)?.toInt(),
      json['alt_names'],
      (json['adaptability'] as num?)?.toInt(),
      json['wikipedia_url'] as String?,
      json['reference_image_id'] as String?,
      (json['affection_level'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BreedModelToJson(BreedModel instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'id': instance.id,
      'name': instance.name,
      'vetstreet_url': instance.vetstreetUrl,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'country_codes': instance.countryCodes,
      'country_code': instance.countryCode,
      'description': instance.description,
      'life_span': instance.lifeSpan,
      'indoor': instance.indoor,
      'alt_names': instance.altNames,
      'adaptability': instance.adaptability,
      'affection_level': instance.affectionLevel,
      'wikipedia_url': instance.wikipediaUrl,
      'reference_image_id': instance.referenceImageId,
    };
