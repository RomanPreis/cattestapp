import "package:cattestapp/src/feature/home/model/breed_model.dart";
import "package:json_annotation/json_annotation.dart";

part "image_model.g.dart";

@JsonSerializable()
final class ImageModel {
  factory ImageModel.fromJson(final Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  const ImageModel(
    this.id,
    this.url,
    this.width,
    this.height,
    this.mimeType,
    this.breeds,
    this.categories,
  );
  final String id;
  final String url;
  final int width;
  final int height;

  @JsonKey(name: "mime_type")
  final String? mimeType;

  final List<BreedModel>? breeds;
  final List<Map<String, dynamic>>? categories;

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
