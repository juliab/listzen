// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChecklistWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompletedStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistWatcherEventCopyWith<$Res> {
  factory $ChecklistWatcherEventCopyWith(ChecklistWatcherEvent value,
          $Res Function(ChecklistWatcherEvent) then) =
      _$ChecklistWatcherEventCopyWithImpl<$Res, ChecklistWatcherEvent>;
}

/// @nodoc
class _$ChecklistWatcherEventCopyWithImpl<$Res,
        $Val extends ChecklistWatcherEvent>
    implements $ChecklistWatcherEventCopyWith<$Res> {
  _$ChecklistWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchAllStartedCopyWith<$Res> {
  factory _$$WatchAllStartedCopyWith(
          _$WatchAllStarted value, $Res Function(_$WatchAllStarted) then) =
      __$$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchAllStartedCopyWithImpl<$Res>
    extends _$ChecklistWatcherEventCopyWithImpl<$Res, _$WatchAllStarted>
    implements _$$WatchAllStartedCopyWith<$Res> {
  __$$WatchAllStartedCopyWithImpl(
      _$WatchAllStarted _value, $Res Function(_$WatchAllStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchAllStarted implements WatchAllStarted {
  const _$WatchAllStarted();

  @override
  String toString() {
    return 'ChecklistWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompletedStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class WatchAllStarted implements ChecklistWatcherEvent {
  const factory WatchAllStarted() = _$WatchAllStarted;
}

/// @nodoc
abstract class _$$WatchUncompletedStartedCopyWith<$Res> {
  factory _$$WatchUncompletedStartedCopyWith(_$WatchUncompletedStarted value,
          $Res Function(_$WatchUncompletedStarted) then) =
      __$$WatchUncompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchUncompletedStartedCopyWithImpl<$Res>
    extends _$ChecklistWatcherEventCopyWithImpl<$Res, _$WatchUncompletedStarted>
    implements _$$WatchUncompletedStartedCopyWith<$Res> {
  __$$WatchUncompletedStartedCopyWithImpl(_$WatchUncompletedStarted _value,
      $Res Function(_$WatchUncompletedStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchUncompletedStarted implements WatchUncompletedStarted {
  const _$WatchUncompletedStarted();

  @override
  String toString() {
    return 'ChecklistWatcherEvent.watchUncompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchUncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
  }) {
    return watchUncompletedStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompletedStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
  }) {
    return watchUncompletedStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    required TResult orElse(),
  }) {
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
  }) {
    return watchUncompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
  }) {
    return watchUncompletedStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    required TResult orElse(),
  }) {
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted(this);
    }
    return orElse();
  }
}

abstract class WatchUncompletedStarted implements ChecklistWatcherEvent {
  const factory WatchUncompletedStarted() = _$WatchUncompletedStarted;
}

/// @nodoc
abstract class _$$ChecklistsReceivedCopyWith<$Res> {
  factory _$$ChecklistsReceivedCopyWith(_$ChecklistsReceived value,
          $Res Function(_$ChecklistsReceived) then) =
      __$$ChecklistsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ChecklistFailure, List<Checklist>> failureOrChecklists});
}

/// @nodoc
class __$$ChecklistsReceivedCopyWithImpl<$Res>
    extends _$ChecklistWatcherEventCopyWithImpl<$Res, _$ChecklistsReceived>
    implements _$$ChecklistsReceivedCopyWith<$Res> {
  __$$ChecklistsReceivedCopyWithImpl(
      _$ChecklistsReceived _value, $Res Function(_$ChecklistsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrChecklists = null,
  }) {
    return _then(_$ChecklistsReceived(
      null == failureOrChecklists
          ? _value.failureOrChecklists
          : failureOrChecklists // ignore: cast_nullable_to_non_nullable
              as Either<ChecklistFailure, List<Checklist>>,
    ));
  }
}

/// @nodoc

class _$ChecklistsReceived implements ChecklistsReceived {
  const _$ChecklistsReceived(this.failureOrChecklists);

  @override
  final Either<ChecklistFailure, List<Checklist>> failureOrChecklists;

  @override
  String toString() {
    return 'ChecklistWatcherEvent.checklistsReceived(failureOrChecklists: $failureOrChecklists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistsReceived &&
            (identical(other.failureOrChecklists, failureOrChecklists) ||
                other.failureOrChecklists == failureOrChecklists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrChecklists);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistsReceivedCopyWith<_$ChecklistsReceived> get copyWith =>
      __$$ChecklistsReceivedCopyWithImpl<_$ChecklistsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchUncompletedStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
  }) {
    return checklistsReceived(failureOrChecklists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchUncompletedStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
  }) {
    return checklistsReceived?.call(failureOrChecklists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchUncompletedStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    required TResult orElse(),
  }) {
    if (checklistsReceived != null) {
      return checklistsReceived(failureOrChecklists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(WatchUncompletedStarted value)
        watchUncompletedStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
  }) {
    return checklistsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
  }) {
    return checklistsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(WatchUncompletedStarted value)? watchUncompletedStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    required TResult orElse(),
  }) {
    if (checklistsReceived != null) {
      return checklistsReceived(this);
    }
    return orElse();
  }
}

abstract class ChecklistsReceived implements ChecklistWatcherEvent {
  const factory ChecklistsReceived(
          final Either<ChecklistFailure, List<Checklist>> failureOrChecklists) =
      _$ChecklistsReceived;

  Either<ChecklistFailure, List<Checklist>> get failureOrChecklists;
  @JsonKey(ignore: true)
  _$$ChecklistsReceivedCopyWith<_$ChecklistsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChecklistWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistWatcherStateCopyWith<$Res> {
  factory $ChecklistWatcherStateCopyWith(ChecklistWatcherState value,
          $Res Function(ChecklistWatcherState) then) =
      _$ChecklistWatcherStateCopyWithImpl<$Res, ChecklistWatcherState>;
}

/// @nodoc
class _$ChecklistWatcherStateCopyWithImpl<$Res,
        $Val extends ChecklistWatcherState>
    implements $ChecklistWatcherStateCopyWith<$Res> {
  _$ChecklistWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChecklistWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChecklistWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ChecklistWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ChecklistWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadInSuccessCopyWith<$Res> {
  factory _$$_LoadInSuccessCopyWith(
          _$_LoadInSuccess value, $Res Function(_$_LoadInSuccess) then) =
      __$$_LoadInSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Checklist> checklists});
}

/// @nodoc
class __$$_LoadInSuccessCopyWithImpl<$Res>
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$_LoadInSuccess>
    implements _$$_LoadInSuccessCopyWith<$Res> {
  __$$_LoadInSuccessCopyWithImpl(
      _$_LoadInSuccess _value, $Res Function(_$_LoadInSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklists = null,
  }) {
    return _then(_$_LoadInSuccess(
      null == checklists
          ? _value._checklists
          : checklists // ignore: cast_nullable_to_non_nullable
              as List<Checklist>,
    ));
  }
}

/// @nodoc

class _$_LoadInSuccess implements _LoadInSuccess {
  const _$_LoadInSuccess(final List<Checklist> checklists)
      : _checklists = checklists;

  final List<Checklist> _checklists;
  @override
  List<Checklist> get checklists {
    if (_checklists is EqualUnmodifiableListView) return _checklists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checklists);
  }

  @override
  String toString() {
    return 'ChecklistWatcherState.loadSuccess(checklists: $checklists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInSuccess &&
            const DeepCollectionEquality()
                .equals(other._checklists, _checklists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_checklists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInSuccessCopyWith<_$_LoadInSuccess> get copyWith =>
      __$$_LoadInSuccessCopyWithImpl<_$_LoadInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return loadSuccess(checklists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(checklists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(checklists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadInSuccess implements ChecklistWatcherState {
  const factory _LoadInSuccess(final List<Checklist> checklists) =
      _$_LoadInSuccess;

  List<Checklist> get checklists;
  @JsonKey(ignore: true)
  _$$_LoadInSuccessCopyWith<_$_LoadInSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ChecklistFailure failure});

  $ChecklistFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ChecklistFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChecklistFailureCopyWith<$Res> get failure {
    return $ChecklistFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final ChecklistFailure failure;

  @override
  String toString() {
    return 'ChecklistWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ChecklistWatcherState {
  const factory _LoadFailure(final ChecklistFailure failure) = _$_LoadFailure;

  ChecklistFailure get failure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
