// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestParams _$RequestParamsFromJson(Map<String, dynamic> json) =>
    RequestParams(
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      page: (json['page'] as num?)?.toInt() ?? 0,
      order: json['order'] as String?,
      hasBreeds: (json['has_breeds'] as num?)?.toInt(),
      breedIds: json['breed_ids'] as String?,
      categoryIds: json['category_ids'] as String?,
      subId: json['sub_id'] as String?,
    );

Map<String, dynamic> _$RequestParamsToJson(RequestParams instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'order': instance.order,
      'has_breeds': instance.hasBreeds,
      'breed_ids': instance.breedIds,
      'category_ids': instance.categoryIds,
      'sub_id': instance.subId,
    };
