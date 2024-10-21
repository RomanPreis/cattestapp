import "package:json_annotation/json_annotation.dart";

part "request_params.g.dart";

@JsonSerializable()
class RequestParams {
  const RequestParams({
    this.limit = 20,
    this.page = 0,
    this.order,
    this.hasBreeds,
    this.breedIds,
    this.categoryIds,
    this.subId,
  });
  RequestParams.defaultParams(final int limit, final int? page)
      : this(
          order: "DESC",
          hasBreeds: 1,
          limit: limit,
          page: page,
        );

  final int limit;
  final int? page;
  final String? order;

  @JsonKey(name: "has_breeds")
  final int? hasBreeds;

  @JsonKey(name: "breed_ids")
  final String? breedIds;

  @JsonKey(name: "category_ids")
  final String? categoryIds;

  @JsonKey(name: "sub_id")
  final String? subId;

  Map<String, dynamic> toJson() => _$RequestParamsToJson(this);
}

enum SortOrder {
  asc("ASC"),
  desc("DESC"),
  rand("RAND");

  const SortOrder(this.title);

  final String title;
}

enum BreedsParam {
  hasBreeds(1),
  noBreeds(0);

  const BreedsParam(this.value);

  final int value;
}
