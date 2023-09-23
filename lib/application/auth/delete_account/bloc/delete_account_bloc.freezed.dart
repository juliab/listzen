// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deleteConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deleteConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deleteConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteConfirmed value) deleteConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteConfirmed value)? deleteConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteConfirmed value)? deleteConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountEventCopyWith<$Res> {
  factory $DeleteAccountEventCopyWith(
          DeleteAccountEvent value, $Res Function(DeleteAccountEvent) then) =
      _$DeleteAccountEventCopyWithImpl<$Res, DeleteAccountEvent>;
}

/// @nodoc
class _$DeleteAccountEventCopyWithImpl<$Res, $Val extends DeleteAccountEvent>
    implements $DeleteAccountEventCopyWith<$Res> {
  _$DeleteAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteConfirmedCopyWith<$Res> {
  factory _$$DeleteConfirmedCopyWith(
          _$DeleteConfirmed value, $Res Function(_$DeleteConfirmed) then) =
      __$$DeleteConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteConfirmedCopyWithImpl<$Res>
    extends _$DeleteAccountEventCopyWithImpl<$Res, _$DeleteConfirmed>
    implements _$$DeleteConfirmedCopyWith<$Res> {
  __$$DeleteConfirmedCopyWithImpl(
      _$DeleteConfirmed _value, $Res Function(_$DeleteConfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteConfirmed implements DeleteConfirmed {
  const _$DeleteConfirmed();

  @override
  String toString() {
    return 'DeleteAccountEvent.deleteConfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deleteConfirmed,
  }) {
    return deleteConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deleteConfirmed,
  }) {
    return deleteConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deleteConfirmed,
    required TResult orElse(),
  }) {
    if (deleteConfirmed != null) {
      return deleteConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteConfirmed value) deleteConfirmed,
  }) {
    return deleteConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteConfirmed value)? deleteConfirmed,
  }) {
    return deleteConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteConfirmed value)? deleteConfirmed,
    required TResult orElse(),
  }) {
    if (deleteConfirmed != null) {
      return deleteConfirmed(this);
    }
    return orElse();
  }
}

abstract class DeleteConfirmed implements DeleteAccountEvent {
  const factory DeleteConfirmed() = _$DeleteConfirmed;
}

/// @nodoc
mixin _$DeleteAccountState {
  bool get isDeleting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get deleteFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteAccountStateCopyWith<DeleteAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountStateCopyWith(
          DeleteAccountState value, $Res Function(DeleteAccountState) then) =
      _$DeleteAccountStateCopyWithImpl<$Res, DeleteAccountState>;
  @useResult
  $Res call(
      {bool isDeleting,
      Option<Either<AuthFailure, Unit>> deleteFailureOrSuccessOption});
}

/// @nodoc
class _$DeleteAccountStateCopyWithImpl<$Res, $Val extends DeleteAccountState>
    implements $DeleteAccountStateCopyWith<$Res> {
  _$DeleteAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeleting = null,
    Object? deleteFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteAccountStateCopyWith<$Res>
    implements $DeleteAccountStateCopyWith<$Res> {
  factory _$$_DeleteAccountStateCopyWith(_$_DeleteAccountState value,
          $Res Function(_$_DeleteAccountState) then) =
      __$$_DeleteAccountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDeleting,
      Option<Either<AuthFailure, Unit>> deleteFailureOrSuccessOption});
}

/// @nodoc
class __$$_DeleteAccountStateCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$_DeleteAccountState>
    implements _$$_DeleteAccountStateCopyWith<$Res> {
  __$$_DeleteAccountStateCopyWithImpl(
      _$_DeleteAccountState _value, $Res Function(_$_DeleteAccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeleting = null,
    Object? deleteFailureOrSuccessOption = null,
  }) {
    return _then(_$_DeleteAccountState(
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_DeleteAccountState implements _DeleteAccountState {
  const _$_DeleteAccountState(
      {required this.isDeleting, required this.deleteFailureOrSuccessOption});

  @override
  final bool isDeleting;
  @override
  final Option<Either<AuthFailure, Unit>> deleteFailureOrSuccessOption;

  @override
  String toString() {
    return 'DeleteAccountState(isDeleting: $isDeleting, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAccountState &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                other.deleteFailureOrSuccessOption ==
                    deleteFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isDeleting, deleteFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAccountStateCopyWith<_$_DeleteAccountState> get copyWith =>
      __$$_DeleteAccountStateCopyWithImpl<_$_DeleteAccountState>(
          this, _$identity);
}

abstract class _DeleteAccountState implements DeleteAccountState {
  const factory _DeleteAccountState(
      {required final bool isDeleting,
      required final Option<Either<AuthFailure, Unit>>
          deleteFailureOrSuccessOption}) = _$_DeleteAccountState;

  @override
  bool get isDeleting;
  @override
  Option<Either<AuthFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAccountStateCopyWith<_$_DeleteAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
