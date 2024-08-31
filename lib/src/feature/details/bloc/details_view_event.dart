part of "details_view_bloc.dart";

sealed class DetailsViewEvent extends BaseEvent {
  const DetailsViewEvent();
}

class DetailsViewInit extends DetailsViewEvent {
  const DetailsViewInit();
}
