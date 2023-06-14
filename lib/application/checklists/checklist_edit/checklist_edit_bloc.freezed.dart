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
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Checklist> initialChecklistOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialChecklistOption = null,
  }) {
    return _then(_$Initialized(
      null == initialChecklistOption
          ? _value.initialChecklistOption
          : initialChecklistOption // ignore: cast_nullable_to_non_nullable
              as Option<Checklist>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialChecklistOption);

  @override
  final Option<Checklist> initialChecklistOption;

  @override
  String toString() {
    return 'ChecklistEditEvent.initialized(initialChecklistOption: $initialChecklistOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            (identical(other.initialChecklistOption, initialChecklistOption) ||
                other.initialChecklistOption == initialChecklistOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialChecklistOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

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
      _$Initialized;

  Option<Checklist> get initialChecklistOption;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ChecklistEditEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

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
  const factory NameChanged(final String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletionStatusChangedCopyWith<$Res> {
  factory _$$CompletionStatusChangedCopyWith(_$CompletionStatusChanged value,
          $Res Function(_$CompletionStatusChanged) then) =
      __$$CompletionStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDone, bool instantSave});
}

/// @nodoc
class __$$CompletionStatusChangedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$CompletionStatusChanged>
    implements _$$CompletionStatusChangedCopyWith<$Res> {
  __$$CompletionStatusChangedCopyWithImpl(_$CompletionStatusChanged _value,
      $Res Function(_$CompletionStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDone = null,
    Object? instantSave = null,
  }) {
    return _then(_$CompletionStatusChanged(
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

class _$CompletionStatusChanged implements CompletionStatusChanged {
  const _$CompletionStatusChanged(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionStatusChanged &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.instantSave, instantSave) ||
                other.instantSave == instantSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDone, instantSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionStatusChangedCopyWith<_$CompletionStatusChanged> get copyWith =>
      __$$CompletionStatusChangedCopyWithImpl<_$CompletionStatusChanged>(
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
      final bool instantSave}) = _$CompletionStatusChanged;

  bool get isDone;
  bool get instantSave;
  @JsonKey(ignore: true)
  _$$CompletionStatusChangedCopyWith<_$CompletionStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemAddedCopyWith<$Res> {
  factory _$$ItemAddedCopyWith(
          _$ItemAdded value, $Res Function(_$ItemAdded) then) =
      __$$ItemAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemAddedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemAdded>
    implements _$$ItemAddedCopyWith<$Res> {
  __$$ItemAddedCopyWithImpl(
      _$ItemAdded _value, $Res Function(_$ItemAdded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemAdded implements ItemAdded {
  const _$ItemAdded();

  @override
  String toString() {
    return 'ChecklistEditEvent.itemAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemAdded);
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
  const factory ItemAdded() = _$ItemAdded;
}

/// @nodoc
abstract class _$$ItemNameChangedCopyWith<$Res> {
  factory _$$ItemNameChangedCopyWith(
          _$ItemNameChanged value, $Res Function(_$ItemNameChanged) then) =
      __$$ItemNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String name});
}

/// @nodoc
class __$$ItemNameChangedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemNameChanged>
    implements _$$ItemNameChangedCopyWith<$Res> {
  __$$ItemNameChangedCopyWithImpl(
      _$ItemNameChanged _value, $Res Function(_$ItemNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? name = null,
  }) {
    return _then(_$ItemNameChanged(
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

class _$ItemNameChanged implements ItemNameChanged {
  const _$ItemNameChanged({required this.index, required this.name});

  @override
  final int index;
  @override
  final String name;

  @override
  String toString() {
    return 'ChecklistEditEvent.itemNameChanged(index: $index, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemNameChanged &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemNameChangedCopyWith<_$ItemNameChanged> get copyWith =>
      __$$ItemNameChangedCopyWithImpl<_$ItemNameChanged>(this, _$identity);

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
      required final String name}) = _$ItemNameChanged;

  int get index;
  String get name;
  @JsonKey(ignore: true)
  _$$ItemNameChangedCopyWith<_$ItemNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemCompletionStatusChangedCopyWith<$Res> {
  factory _$$ItemCompletionStatusChangedCopyWith(
          _$ItemCompletionStatusChanged value,
          $Res Function(_$ItemCompletionStatusChanged) then) =
      __$$ItemCompletionStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, bool isDone, bool instantSave});
}

/// @nodoc
class __$$ItemCompletionStatusChangedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res,
        _$ItemCompletionStatusChanged>
    implements _$$ItemCompletionStatusChangedCopyWith<$Res> {
  __$$ItemCompletionStatusChangedCopyWithImpl(
      _$ItemCompletionStatusChanged _value,
      $Res Function(_$ItemCompletionStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isDone = null,
    Object? instantSave = null,
  }) {
    return _then(_$ItemCompletionStatusChanged(
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

class _$ItemCompletionStatusChanged implements ItemCompletionStatusChanged {
  const _$ItemCompletionStatusChanged(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCompletionStatusChanged &&
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
  _$$ItemCompletionStatusChangedCopyWith<_$ItemCompletionStatusChanged>
      get copyWith => __$$ItemCompletionStatusChangedCopyWithImpl<
          _$ItemCompletionStatusChanged>(this, _$identity);

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
      final bool instantSave}) = _$ItemCompletionStatusChanged;

  int get index;
  bool get isDone;
  bool get instantSave;
  @JsonKey(ignore: true)
  _$$ItemCompletionStatusChangedCopyWith<_$ItemCompletionStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemsReorderedCopyWith<$Res> {
  factory _$$ItemsReorderedCopyWith(
          _$ItemsReordered value, $Res Function(_$ItemsReordered) then) =
      __$$ItemsReorderedCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$ItemsReorderedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemsReordered>
    implements _$$ItemsReorderedCopyWith<$Res> {
  __$$ItemsReorderedCopyWithImpl(
      _$ItemsReordered _value, $Res Function(_$ItemsReordered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$ItemsReordered(
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

class _$ItemsReordered implements ItemsReordered {
  const _$ItemsReordered({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'ChecklistEditEvent.itemsReordered(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsReordered &&
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
  _$$ItemsReorderedCopyWith<_$ItemsReordered> get copyWith =>
      __$$ItemsReorderedCopyWithImpl<_$ItemsReordered>(this, _$identity);

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
      required final int newIndex}) = _$ItemsReordered;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$ItemsReorderedCopyWith<_$ItemsReordered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemRemovedCopyWith<$Res> {
  factory _$$ItemRemovedCopyWith(
          _$ItemRemoved value, $Res Function(_$ItemRemoved) then) =
      __$$ItemRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ItemRemovedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ItemRemoved>
    implements _$$ItemRemovedCopyWith<$Res> {
  __$$ItemRemovedCopyWithImpl(
      _$ItemRemoved _value, $Res Function(_$ItemRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ItemRemoved(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemRemoved implements ItemRemoved {
  const _$ItemRemoved({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ChecklistEditEvent.itemRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemRemoved &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemRemovedCopyWith<_$ItemRemoved> get copyWith =>
      __$$ItemRemovedCopyWithImpl<_$ItemRemoved>(this, _$identity);

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
  const factory ItemRemoved({required final int index}) = _$ItemRemoved;

  int get index;
  @JsonKey(ignore: true)
  _$$ItemRemovedCopyWith<_$ItemRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorChangedCopyWith<$Res> {
  factory _$$ColorChangedCopyWith(
          _$ColorChanged value, $Res Function(_$ColorChanged) then) =
      __$$ColorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChecklistColor color, bool instantSave});
}

/// @nodoc
class __$$ColorChangedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$ColorChanged>
    implements _$$ColorChangedCopyWith<$Res> {
  __$$ColorChangedCopyWithImpl(
      _$ColorChanged _value, $Res Function(_$ColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? instantSave = null,
  }) {
    return _then(_$ColorChanged(
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

class _$ColorChanged implements ColorChanged {
  const _$ColorChanged({required this.color, this.instantSave = false});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorChanged &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.instantSave, instantSave) ||
                other.instantSave == instantSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, instantSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorChangedCopyWith<_$ColorChanged> get copyWith =>
      __$$ColorChangedCopyWithImpl<_$ColorChanged>(this, _$identity);

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
      final bool instantSave}) = _$ColorChanged;

  ChecklistColor get color;
  bool get instantSave;
  @JsonKey(ignore: true)
  _$$ColorChangedCopyWith<_$ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res>
    extends _$ChecklistEditEventCopyWithImpl<$Res, _$Saved>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'ChecklistEditEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
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
  const factory Saved() = _$Saved;
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
abstract class _$$_ChecklistFormStateCopyWith<$Res>
    implements $ChecklistEditStateCopyWith<$Res> {
  factory _$$_ChecklistFormStateCopyWith(_$_ChecklistFormState value,
          $Res Function(_$_ChecklistFormState) then) =
      __$$_ChecklistFormStateCopyWithImpl<$Res>;
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
class __$$_ChecklistFormStateCopyWithImpl<$Res>
    extends _$ChecklistEditStateCopyWithImpl<$Res, _$_ChecklistFormState>
    implements _$$_ChecklistFormStateCopyWith<$Res> {
  __$$_ChecklistFormStateCopyWithImpl(
      _$_ChecklistFormState _value, $Res Function(_$_ChecklistFormState) _then)
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
    return _then(_$_ChecklistFormState(
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

class _$_ChecklistFormState implements _ChecklistFormState {
  const _$_ChecklistFormState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChecklistFormState &&
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
  _$$_ChecklistFormStateCopyWith<_$_ChecklistFormState> get copyWith =>
      __$$_ChecklistFormStateCopyWithImpl<_$_ChecklistFormState>(
          this, _$identity);
}

abstract class _ChecklistFormState implements ChecklistEditState {
  const factory _ChecklistFormState(
      {required final Checklist checklist,
      required final AutovalidateMode autovalidateMode,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<ChecklistFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ChecklistFormState;

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
  _$$_ChecklistFormStateCopyWith<_$_ChecklistFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
