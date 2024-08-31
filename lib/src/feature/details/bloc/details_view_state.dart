// ignore_for_file: prefer_final_parameters

part of "details_view_bloc.dart";

@freezed
class DetailsViewState with _$DetailsViewState {
  const factory DetailsViewState({
    required ImageModel imageModel,
    @Default(false) bool isLoading,
    Exception? exception,
  }) = _DetailsViewState;

  const DetailsViewState._();

  bool get hasBreedInfo => imageModel.breeds?.isNotEmpty ?? false;
  BreedModel get breed => imageModel.breeds!.first;

  String get breedName => breed.name ?? "";
  String get wikiUrl => breed.wikipediaUrl ?? "";
  String get affection => breed.affectionLevel != null
      ? "affection: ${breed.affectionLevel!.toString()}"
      : "";
  String get description => breed.description ?? "";
}
