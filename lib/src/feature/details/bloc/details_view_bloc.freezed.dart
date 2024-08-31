// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsViewState {
  ImageModel get imageModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  /// Create a copy of DetailsViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsViewStateCopyWith<DetailsViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsViewStateCopyWith<$Res> {
  factory $DetailsViewStateCopyWith(
          DetailsViewState value, $Res Function(DetailsViewState) then) =
      _$DetailsViewStateCopyWithImpl<$Res, DetailsViewState>;
  @useResult
  $Res call({ImageModel imageModel, bool isLoading, Exception? exception});
}

/// @nodoc
class _$DetailsViewStateCopyWithImpl<$Res, $Val extends DetailsViewState>
    implements $DetailsViewStateCopyWith<$Res> {
  _$DetailsViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageModel = null,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      imageModel: null == imageModel
          ? _value.imageModel
          : imageModel // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsViewStateImplCopyWith<$Res>
    implements $DetailsViewStateCopyWith<$Res> {
  factory _$$DetailsViewStateImplCopyWith(_$DetailsViewStateImpl value,
          $Res Function(_$DetailsViewStateImpl) then) =
      __$$DetailsViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageModel imageModel, bool isLoading, Exception? exception});
}

/// @nodoc
class __$$DetailsViewStateImplCopyWithImpl<$Res>
    extends _$DetailsViewStateCopyWithImpl<$Res, _$DetailsViewStateImpl>
    implements _$$DetailsViewStateImplCopyWith<$Res> {
  __$$DetailsViewStateImplCopyWithImpl(_$DetailsViewStateImpl _value,
      $Res Function(_$DetailsViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageModel = null,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(_$DetailsViewStateImpl(
      imageModel: null == imageModel
          ? _value.imageModel
          : imageModel // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$DetailsViewStateImpl extends _DetailsViewState {
  const _$DetailsViewStateImpl(
      {required this.imageModel, this.isLoading = false, this.exception})
      : super._();

  @override
  final ImageModel imageModel;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'DetailsViewState(imageModel: $imageModel, isLoading: $isLoading, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsViewStateImpl &&
            (identical(other.imageModel, imageModel) ||
                other.imageModel == imageModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageModel, isLoading, exception);

  /// Create a copy of DetailsViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsViewStateImplCopyWith<_$DetailsViewStateImpl> get copyWith =>
      __$$DetailsViewStateImplCopyWithImpl<_$DetailsViewStateImpl>(
          this, _$identity);
}

abstract class _DetailsViewState extends DetailsViewState {
  const factory _DetailsViewState(
      {required final ImageModel imageModel,
      final bool isLoading,
      final Exception? exception}) = _$DetailsViewStateImpl;
  const _DetailsViewState._() : super._();

  @override
  ImageModel get imageModel;
  @override
  bool get isLoading;
  @override
  Exception? get exception;

  /// Create a copy of DetailsViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsViewStateImplCopyWith<_$DetailsViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
