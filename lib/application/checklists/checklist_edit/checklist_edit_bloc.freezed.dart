// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChecklistEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistEditEventCopyWith<$Res> {
  factory $ChecklistEditEventCopyWith(
          ChecklistEditEvent value, $Res Function(ChecklistEditEvent) then) =
      _$ChecklistEditEventCopyWithImpl<$Res, ChecklistEditEvent>;
}

/// @nodoc
class _$ChecklistEditEventCopyWithImpl<$Res, $Val extends ChecklistEditEvent>
    implements $ChecklistEditEventCopyWith<$Res> {
  _$ChecklistEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Checklist> initialChecklistOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialChecklistOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialChecklistOption
          ? _value.initialChecklistOption
          : initialChecklistOption // ignore: cast_nullable_to_non_nullable
              as Option<Checklist>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements Initialized {
  const _$InitializedImpl(this.initialChecklistOption);

  @override
  final Option<Checklist> initialChecklistOption;

  @override
  String toString() {
    return 'ChecklistEditEvent.initialized(initialChecklistOption: $initialChecklistOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialChecklistOption, initialChecklistOption) ||
                other.initialChecklistOption == initialChecklistOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialChecklistOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialChecklistOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialChecklistOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialChecklistOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ChecklistEditEvent {
  const factory Initialized(final Option<Checklist> initialChecklistOption) =
      _$InitializedImpl;

  Option<Checklist> get initialChecklistOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ChecklistEditEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ChecklistEditEvent {
  const factory NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletionStatusChangedImplCopyWith<$Res> {
  factory _$$CompletionStatusChangedImplCopyWith(
          _$CompletionStatusChangedImpl value,
          $Res Function(_$CompletionStatusChangedImpl) then) =
      __$$CompletionStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDone, bool instantSave});
}

/// @nodoc
class __$$CompletionStatusChangedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res,
        _$CompletionStatusChangedImpl>
    implements _$$CompletionStatusChangedImplCopyWith<$Res> {
  __$$CompletionStatusChangedImplCopyWithImpl(
      _$CompletionStatusChangedImpl _value,
      $Res Function(_$CompletionStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDone = null,
    Object? instantSave = null,
  }) {
    return _then(_$CompletionStatusChangedImpl(
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      instantSave: null == instantSave
          ? _value.instantSave
          : instantSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompletionStatusChangedImpl implements CompletionStatusChanged {
  const _$CompletionStatusChangedImpl(
      {required this.isDone, this.instantSave = false});

  @override
  final bool isDone;
  @override
  @JsonKey()
  final bool instantSave;

  @override
  String toString() {
    return 'ChecklistEditEvent.completionStatusChanged(isDone: $isDone, instantSave: $instantSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionStatusChangedImpl &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.instantSave, instantSave) ||
                other.instantSave == instantSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDone, instantSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionStatusChangedImplCopyWith<_$CompletionStatusChangedImpl>
      get copyWith => __$$CompletionStatusChangedImplCopyWithImpl<
          _$CompletionStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return completionStatusChanged(isDone, instantSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return completionStatusChanged?.call(isDone, instantSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (completionStatusChanged != null) {
      return completionStatusChanged(isDone, instantSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return completionStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return completionStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (completionStatusChanged != null) {
      return completionStatusChanged(this);
    }
    return orElse();
  }
}

abstract class CompletionStatusChanged implements ChecklistEditEvent {
  const factory CompletionStatusChanged(
      {required final bool isDone,
      final bool instantSave}) = _$CompletionStatusChangedImpl;

  bool get isDone;
  bool get instantSave;
  @JsonKey(ignore: true)
  _$$CompletionStatusChangedImplCopyWith<_$CompletionStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemAddedImplCopyWith<$Res> {
  factory _$$ItemAddedImplCopyWith(
          _$ItemAddedImpl value, $Res Function(_$ItemAddedImpl) then) =
      __$$ItemAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemAddedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemAddedImpl>
    implements _$$ItemAddedImplCopyWith<$Res> {
  __$$ItemAddedImplCopyWithImpl(
      _$ItemAddedImpl _value, $Res Function(_$ItemAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemAddedImpl implements ItemAdded {
  const _$ItemAddedImpl();

  @override
  String toString() {
    return 'ChecklistEditEvent.itemAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return itemAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return itemAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(this);
    }
    return orElse();
  }
}

abstract class ItemAdded implements ChecklistEditEvent {
  const factory ItemAdded() = _$ItemAddedImpl;
}

/// @nodoc
abstract class _$$ItemNameChangedImplCopyWith<$Res> {
  factory _$$ItemNameChangedImplCopyWith(_$ItemNameChangedImpl value,
          $Res Function(_$ItemNameChangedImpl) then) =
      __$$ItemNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String name});
}

/// @nodoc
class __$$ItemNameChangedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemNameChangedImpl>
    implements _$$ItemNameChangedImplCopyWith<$Res> {
  __$$ItemNameChangedImplCopyWithImpl(
      _$ItemNameChangedImpl _value, $Res Function(_$ItemNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? name = null,
  }) {
    return _then(_$ItemNameChangedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemNameChangedImpl implements ItemNameChanged {
  const _$ItemNameChangedImpl({required this.index, required this.name});

  @override
  final int index;
  @override
  final String name;

  @override
  String toString() {
    return 'ChecklistEditEvent.itemNameChanged(index: $index, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemNameChangedImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemNameChangedImplCopyWith<_$ItemNameChangedImpl> get copyWith =>
      __$$ItemNameChangedImplCopyWithImpl<_$ItemNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return itemNameChanged(index, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return itemNameChanged?.call(index, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (itemNameChanged != null) {
      return itemNameChanged(index, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return itemNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return itemNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (itemNameChanged != null) {
      return itemNameChanged(this);
    }
    return orElse();
  }
}

abstract class ItemNameChanged implements ChecklistEditEvent {
  const factory ItemNameChanged(
      {required final int index,
      required final String name}) = _$ItemNameChangedImpl;

  int get index;
  String get name;
  @JsonKey(ignore: true)
  _$$ItemNameChangedImplCopyWith<_$ItemNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemCompletionStatusChangedImplCopyWith<$Res> {
  factory _$$ItemCompletionStatusChangedImplCopyWith(
          _$ItemCompletionStatusChangedImpl value,
          $Res Function(_$ItemCompletionStatusChangedImpl) then) =
      __$$ItemCompletionStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, bool isDone, bool instantSave});
}

/// @nodoc
class __$$ItemCompletionStatusChangedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res,
        _$ItemCompletionStatusChangedImpl>
    implements _$$ItemCompletionStatusChangedImplCopyWith<$Res> {
  __$$ItemCompletionStatusChangedImplCopyWithImpl(
      _$ItemCompletionStatusChangedImpl _value,
      $Res Function(_$ItemCompletionStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isDone = null,
    Object? instantSave = null,
  }) {
    return _then(_$ItemCompletionStatusChangedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      instantSave: null == instantSave
          ? _value.instantSave
          : instantSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ItemCompletionStatusChangedImpl implements ItemCompletionStatusChanged {
  const _$ItemCompletionStatusChangedImpl(
      {required this.index, required this.isDone, this.instantSave = false});

  @override
  final int index;
  @override
  final bool isDone;
  @override
  @JsonKey()
  final bool instantSave;

  @override
  String toString() {
    return 'ChecklistEditEvent.itemCompletionStatusChanged(index: $index, isDone: $isDone, instantSave: $instantSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCompletionStatusChangedImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.instantSave, instantSave) ||
                other.instantSave == instantSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, isDone, instantSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemCompletionStatusChangedImplCopyWith<_$ItemCompletionStatusChangedImpl>
      get copyWith => __$$ItemCompletionStatusChangedImplCopyWithImpl<
          _$ItemCompletionStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return itemCompletionStatusChanged(index, isDone, instantSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return itemCompletionStatusChanged?.call(index, isDone, instantSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (itemCompletionStatusChanged != null) {
      return itemCompletionStatusChanged(index, isDone, instantSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return itemCompletionStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return itemCompletionStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (itemCompletionStatusChanged != null) {
      return itemCompletionStatusChanged(this);
    }
    return orElse();
  }
}

abstract class ItemCompletionStatusChanged implements ChecklistEditEvent {
  const factory ItemCompletionStatusChanged(
      {required final int index,
      required final bool isDone,
      final bool instantSave}) = _$ItemCompletionStatusChangedImpl;

  int get index;
  bool get isDone;
  bool get instantSave;
  @JsonKey(ignore: true)
  _$$ItemCompletionStatusChangedImplCopyWith<_$ItemCompletionStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemsReorderedImplCopyWith<$Res> {
  factory _$$ItemsReorderedImplCopyWith(_$ItemsReorderedImpl value,
          $Res Function(_$ItemsReorderedImpl) then) =
      __$$ItemsReorderedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$ItemsReorderedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemsReorderedImpl>
    implements _$$ItemsReorderedImplCopyWith<$Res> {
  __$$ItemsReorderedImplCopyWithImpl(
      _$ItemsReorderedImpl _value, $Res Function(_$ItemsReorderedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$ItemsReorderedImpl(
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemsReorderedImpl implements ItemsReordered {
  const _$ItemsReorderedImpl({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'ChecklistEditEvent.itemsReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsReorderedImpl &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsReorderedImplCopyWith<_$ItemsReorderedImpl> get copyWith =>
      __$$ItemsReorderedImplCopyWithImpl<_$ItemsReorderedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return itemsReordered(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return itemsReordered?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (itemsReordered != null) {
      return itemsReordered(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return itemsReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return itemsReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (itemsReordered != null) {
      return itemsReordered(this);
    }
    return orElse();
  }
}

abstract class ItemsReordered implements ChecklistEditEvent {
  const factory ItemsReordered(
      {required final int oldIndex,
      required final int newIndex}) = _$ItemsReorderedImpl;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$ItemsReorderedImplCopyWith<_$ItemsReorderedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemRemovedImplCopyWith<$Res> {
  factory _$$ItemRemovedImplCopyWith(
          _$ItemRemovedImpl value, $Res Function(_$ItemRemovedImpl) then) =
      __$$ItemRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ItemRemovedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemRemovedImpl>
    implements _$$ItemRemovedImplCopyWith<$Res> {
  __$$ItemRemovedImplCopyWithImpl(
      _$ItemRemovedImpl _value, $Res Function(_$ItemRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ItemRemovedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemRemovedImpl implements ItemRemoved {
  const _$ItemRemovedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ChecklistEditEvent.itemRemoved(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemRemovedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      __$$ItemRemovedImplCopyWithImpl<_$ItemRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return itemRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return itemRemoved?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return itemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return itemRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(this);
    }
    return orElse();
  }
}

abstract class ItemRemoved implements ChecklistEditEvent {
  const factory ItemRemoved({required final int index}) = _$ItemRemovedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorChangedImplCopyWith<$Res> {
  factory _$$ColorChangedImplCopyWith(
          _$ColorChangedImpl value, $Res Function(_$ColorChangedImpl) then) =
      __$$ColorChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChecklistColor color, bool instantSave});
}

/// @nodoc
class __$$ColorChangedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ColorChangedImpl>
    implements _$$ColorChangedImplCopyWith<$Res> {
  __$$ColorChangedImplCopyWithImpl(
      _$ColorChangedImpl _value, $Res Function(_$ColorChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? instantSave = null,
  }) {
    return _then(_$ColorChangedImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ChecklistColor,
      instantSave: null == instantSave
          ? _value.instantSave
          : instantSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ColorChangedImpl implements ColorChanged {
  const _$ColorChangedImpl({required this.color, this.instantSave = false});

  @override
  final ChecklistColor color;
  @override
  @JsonKey()
  final bool instantSave;

  @override
  String toString() {
    return 'ChecklistEditEvent.colorChanged(color: $color, instantSave: $instantSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorChangedImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.instantSave, instantSave) ||
                other.instantSave == instantSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, instantSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorChangedImplCopyWith<_$ColorChangedImpl> get copyWith =>
      __$$ColorChangedImplCopyWithImpl<_$ColorChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return colorChanged(color, instantSave);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return colorChanged?.call(color, instantSave);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color, instantSave);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class ColorChanged implements ChecklistEditEvent {
  const factory ColorChanged(
      {required final ChecklistColor color,
      final bool instantSave}) = _$ColorChangedImpl;

  ChecklistColor get color;
  bool get instantSave;
  @JsonKey(ignore: true)
  _$$ColorChangedImplCopyWith<_$ColorChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'ChecklistEditEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool isDone, bool instantSave)
        completionStatusChanged,
    required TResult Function() itemAdded,
    required TResult Function(int index, String name) itemNameChanged,
    required TResult Function(int index, bool isDone, bool instantSave)
        itemCompletionStatusChanged,
    required TResult Function(int oldIndex, int newIndex) itemsReordered,
    required TResult Function(int index) itemRemoved,
    required TResult Function(ChecklistColor color, bool instantSave)
        colorChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult? Function()? itemAdded,
    TResult? Function(int index, String name)? itemNameChanged,
    TResult? Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult? Function(int oldIndex, int newIndex)? itemsReordered,
    TResult? Function(int index)? itemRemoved,
    TResult? Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(bool isDone, bool instantSave)? completionStatusChanged,
    TResult Function()? itemAdded,
    TResult Function(int index, String name)? itemNameChanged,
    TResult Function(int index, bool isDone, bool instantSave)?
        itemCompletionStatusChanged,
    TResult Function(int oldIndex, int newIndex)? itemsReordered,
    TResult Function(int index)? itemRemoved,
    TResult Function(ChecklistColor color, bool instantSave)? colorChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(CompletionStatusChanged value)
        completionStatusChanged,
    required TResult Function(ItemAdded value) itemAdded,
    required TResult Function(ItemNameChanged value) itemNameChanged,
    required TResult Function(ItemCompletionStatusChanged value)
        itemCompletionStatusChanged,
    required TResult Function(ItemsReordered value) itemsReordered,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult? Function(ItemAdded value)? itemAdded,
    TResult? Function(ItemNameChanged value)? itemNameChanged,
    TResult? Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult? Function(ItemsReordered value)? itemsReordered,
    TResult? Function(ItemRemoved value)? itemRemoved,
    TResult? Function(ColorChanged value)? colorChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(CompletionStatusChanged value)? completionStatusChanged,
    TResult Function(ItemAdded value)? itemAdded,
    TResult Function(ItemNameChanged value)? itemNameChanged,
    TResult Function(ItemCompletionStatusChanged value)?
        itemCompletionStatusChanged,
    TResult Function(ItemsReordered value)? itemsReordered,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements ChecklistEditEvent {
  const factory Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$ChecklistEditState {
  Checklist get checklist => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ChecklistFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChecklistEditStateCopyWith<ChecklistEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistEditStateCopyWith<$Res> {
  factory $ChecklistEditStateCopyWith(
          ChecklistEditState value, $Res Function(ChecklistEditState) then) =
      _$ChecklistEditStateCopyWithImpl<$Res, ChecklistEditState>;
  @useResult
  $Res call(
      {Checklist checklist,
      AutovalidateMode autovalidateMode,
      bool isEditing,
      bool isSaving,
      Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption});

  $ChecklistCopyWith<$Res> get checklist;
}

/// @nodoc
class _$ChecklistEditStateCopyWithImpl<$Res, $Val extends ChecklistEditState>
    implements $ChecklistEditStateCopyWith<$Res> {
  _$ChecklistEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = null,
    Object? autovalidateMode = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      checklist: null == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as Checklist,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChecklistFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChecklistCopyWith<$Res> get checklist {
    return $ChecklistCopyWith<$Res>(_value.checklist, (value) {
      return _then(_value.copyWith(checklist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChecklistFormStateImplCopyWith<$Res>
    implements $ChecklistEditStateCopyWith<$Res> {
  factory _$$ChecklistFormStateImplCopyWith(_$ChecklistFormStateImpl value,
          $Res Function(_$ChecklistFormStateImpl) then) =
      __$$ChecklistFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Checklist checklist,
      AutovalidateMode autovalidateMode,
      bool isEditing,
      bool isSaving,
      Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ChecklistCopyWith<$Res> get checklist;
}

/// @nodoc
class __$$ChecklistFormStateImplCopyWithImpl<$Res>
    extends _$ChecklistEditStateCopyWithImpl<$Res, _$ChecklistFormStateImpl>
    implements _$$ChecklistFormStateImplCopyWith<$Res> {
  __$$ChecklistFormStateImplCopyWithImpl(_$ChecklistFormStateImpl _value,
      $Res Function(_$ChecklistFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = null,
    Object? autovalidateMode = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$ChecklistFormStateImpl(
      checklist: null == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as Checklist,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChecklistFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ChecklistFormStateImpl implements _ChecklistFormState {
  const _$ChecklistFormStateImpl(
      {required this.checklist,
      required this.autovalidateMode,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Checklist checklist;
  @override
  final AutovalidateMode autovalidateMode;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChecklistEditState(checklist: $checklist, autovalidateMode: $autovalidateMode, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistFormStateImpl &&
            (identical(other.checklist, checklist) ||
                other.checklist == checklist) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checklist, autovalidateMode,
      isEditing, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistFormStateImplCopyWith<_$ChecklistFormStateImpl> get copyWith =>
      __$$ChecklistFormStateImplCopyWithImpl<_$ChecklistFormStateImpl>(
          this, _$identity);
}

abstract class _ChecklistFormState implements ChecklistEditState {
  const factory _ChecklistFormState(
      {required final Checklist checklist,
      required final AutovalidateMode autovalidateMode,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<ChecklistFailure, Unit>>
          saveFailureOrSuccessOption}) = _$ChecklistFormStateImpl;

  @override
  Checklist get checklist;
  @override
  AutovalidateMode get autovalidateMode;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ChecklistFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ChecklistFormStateImplCopyWith<_$ChecklistFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
