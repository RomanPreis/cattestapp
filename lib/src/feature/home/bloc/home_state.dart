part of "home_bloc.dart";

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<ImageModel>[]) final List<ImageModel> imageModels,
    @Default(1) final int currentPage,
    @Default(false) final bool isLoading,
    final Exception? exception,
  }) = _HomeState;
}
