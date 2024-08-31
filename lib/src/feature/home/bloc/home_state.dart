// ignore_for_file: prefer_final_parameters

part of "home_bloc.dart";

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<ImageModel> imageModels,
    @Default(1) int currentPage,
    @Default(false) bool isLoading,
    Exception? exception,
  }) = _HomeState;
}
