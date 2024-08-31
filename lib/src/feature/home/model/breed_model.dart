import "package:json_annotation/json_annotation.dart";

part "breed_model.g.dart";

@JsonSerializable(fieldRename: FieldRename.snake)
final class BreedModel {
  factory BreedModel.fromJson(final Map<String, dynamic> json) =>
      _$BreedModelFromJson(json);

  const BreedModel(
    this.weight,
    this.id,
    this.name,
    this.vetstreetUrl,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.lifeSpan,
    this.indoor,
    this.altNames,
    this.adaptability,
    this.wikipediaUrl,
    this.referenceImageId,
    this.affectionLevel,
  );
  final Map<String, String>? weight;
  final String? id;
  final String? name;
  final String? vetstreetUrl;
  final String? temperament;
  final String? origin;
  final dynamic countryCodes;
  final String? countryCode;
  final String? description;
  final String? lifeSpan;
  final int? indoor;
  final dynamic altNames;
  final int? adaptability;
  final int? affectionLevel;
  final String? wikipediaUrl;
  final String? referenceImageId;
}
