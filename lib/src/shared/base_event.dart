import "package:equatable/equatable.dart";

/// Base event for Bloc with [Equatable] for comparison in tests
class BaseEvent extends Equatable {
  const BaseEvent();
  @override
  List<Object?> get props => [];
}
