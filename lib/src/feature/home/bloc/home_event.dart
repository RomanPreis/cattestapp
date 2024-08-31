part of "home_bloc.dart";

sealed class HomeEvent extends BaseEvent {
  const HomeEvent();
}

class HomeInit extends HomeEvent {
  const HomeInit();
}

class HomeUpdate extends HomeEvent {
  const HomeUpdate();
}

class HomeBgImageError extends HomeEvent {
  const HomeBgImageError(
    this.error,
    this.stackTrace,
  );
  final Object error;
  final StackTrace? stackTrace;
}
