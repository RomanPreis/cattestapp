import "dart:developer";

import "package:cattestapp/src/feature/home/controller/feature_controller.dart";
import "package:cattestapp/src/feature/home/controller/model/request_params.dart";
import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:cattestapp/src/shared/base_event.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:fpdart/fpdart.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "home_bloc.freezed.dart";
part "home_event.dart";
part "home_state.dart";

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.featureController,
  }) : super(const HomeState()) {
    on<HomeEvent>(
      (final HomeEvent event, final Emitter<HomeState> emit) async =>
          switch (event) {
        HomeInit() => _onInit(event, emit),
        HomeUpdate() => _onUpdate(event, emit),
        HomeBgImageError() => _onHomeBgImageError(event, emit),
      },
    );
  }
  final FeatureController featureController;

  Future<void> _onInit(
    final HomeInit event,
    final Emitter<HomeState> emit,
  ) async {
    await _fetchData(emit);
  }

  Future<void> _onUpdate(
    final HomeUpdate event,
    final Emitter<HomeState> emit,
  ) async {
    final int page = state.currentPage + 1;
    emit(state.copyWith(currentPage: page));
    await _fetchData(emit);
  }

  Future<void> _fetchData(final Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<Exception, List<ImageModel>> result =
        await featureController.getCatPictures(
      params: RequestParams.defaultParams(20, state.currentPage),
    );

    result.fold(
      (final Exception exception) => emit(
        state.copyWith(
          exception: exception,
          isLoading: false,
        ),
      ),
      (final List<ImageModel> imageModels) {
        final List<ImageModel> newModels = state.imageModels + imageModels;
        emit(
          state.copyWith(
            imageModels: newModels,
            isLoading: false,
          ),
        );
      },
    );
  }

  void _onHomeBgImageError(final HomeBgImageError event, final __) {
    log(event.error.toString(), stackTrace: event.stackTrace);
  }
}
