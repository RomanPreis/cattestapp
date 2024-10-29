part of "details_view_bloc.dart";

@freezed
class DetailsViewState with _$DetailsViewState {
  const factory DetailsViewState({
    required final ImageModel imageModel,
    @Default(false) final bool isLoading,
    final Exception? exception,
  }) = _DetailsViewState;

  const DetailsViewState._();

  bool get hasBreedInfo => imageModel.breeds?.isNotEmpty ?? false;
  BreedModel get breed => imageModel.breeds!.first;

  String get breedName => breed.name ?? "";
  String get wikiUrl => breed.wikipediaUrl ?? "";
  String get affection =>
      breed.affectionLevel != null ? "affection: ${breed.affectionLevel!}" : "";
  String get description => breed.description ?? "";
}
