import "package:cattestapp/src/feature/details/controller/details_controller.dart";
import "package:cattestapp/src/feature/home/model/breed_model.dart";
import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:cattestapp/src/shared/base_event.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:fpdart/fpdart.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "details_view_bloc.freezed.dart";
part "details_view_event.dart";
part "details_view_state.dart";

class DetailsViewBloc extends Bloc<DetailsViewEvent, DetailsViewState> {
  DetailsViewBloc({
    required this.model,
    required this.detailsController,
  }) : super(DetailsViewState(imageModel: model)) {
    on<DetailsViewEvent>(
      (
        final DetailsViewEvent event,
        final Emitter<DetailsViewState> emit,
      ) async =>
          switch (event) {
        DetailsViewInit() => _onInit(event, emit),
      },
    );
  }
  final ImageModel model;
  final DetailsController detailsController;

  Future<void> _onInit(
    final DetailsViewInit event,
    final Emitter<DetailsViewState> emit,
  ) async {
    await _fetchData(emit);
  }

  Future<void> _fetchData(final Emitter<DetailsViewState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<Exception, ImageModel> result =
        await detailsController.getImageDetails(model.id);
    result.fold(
      (final Exception exception) => emit(
        state.copyWith(
          exception: exception,
          isLoading: false,
        ),
      ),
      (final ImageModel imageDetails) => emit(
        state.copyWith(
          imageModel: imageDetails,
          isLoading: false,
        ),
      ),
    );
  }
}
