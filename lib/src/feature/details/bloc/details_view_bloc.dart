import "package:cattestapp/src/feature/details/controller/details_controller.dart";
import "package:cattestapp/src/feature/home/model/breed_model.dart";
import "package:cattestapp/src/feature/home/model/image_model.dart";
import "package:cattestapp/src/shared/base_event.dart";
import "package:flutter_bloc/flutter_bloc.dart";
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
      (final event, final emit) => switch (event) {
        DetailsViewInit() => _onInit(event, emit),
      },
    );
  }
  final ImageModel model;
  final DetailsController detailsController;

  void _onInit(
    final DetailsViewInit event,
    final Emitter<DetailsViewState> emit,
  ) async {
    await _fetchData(emit);
  }

  Future<void> _fetchData(final Emitter<DetailsViewState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await detailsController.getImageDetails(model.id);
    result.fold(
      (final exception) => emit(
        state.copyWith(
          exception: exception,
          isLoading: false,
        ),
      ),
      (final imageDetails) => emit(
        state.copyWith(
          imageModel: imageDetails,
          isLoading: false,
        ),
      ),
    );
  }
}
