// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_presentation_classes_old.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemPrimitive {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemPrimitiveCopyWith<ItemPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemPrimitiveCopyWith<$Res> {
  factory $ItemPrimitiveCopyWith(
          ItemPrimitive value, $Res Function(ItemPrimitive) then) =
      _$ItemPrimitiveCopyWithImpl<$Res, ItemPrimitive>;
  @useResult
  $Res call({UniqueId id, String name, bool done});
}

/// @nodoc
class _$ItemPrimitiveCopyWithImpl<$Res, $Val extends ItemPrimitive>
    implements $ItemPrimitiveCopyWith<$Res> {
  _$ItemPrimitiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemPrimitiveCopyWith<$Res>
    implements $ItemPrimitiveCopyWith<$Res> {
  factory _$$_ItemPrimitiveCopyWith(
          _$_ItemPrimitive value, $Res Function(_$_ItemPrimitive) then) =
      __$$_ItemPrimitiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, String name, bool done});
}

/// @nodoc
class __$$_ItemPrimitiveCopyWithImpl<$Res>
    extends _$ItemPrimitiveCopyWithImpl<$Res, _$_ItemPrimitive>
    implements _$$_ItemPrimitiveCopyWith<$Res> {
  __$$_ItemPrimitiveCopyWithImpl(
      _$_ItemPrimitive _value, $Res Function(_$_ItemPrimitive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
  }) {
    return _then(_$_ItemPrimitive(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ItemPrimitive extends _ItemPrimitive {
  const _$_ItemPrimitive(
      {required this.id, required this.name, required this.done})
      : super._();

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'ItemPrimitive(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemPrimitive &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemPrimitiveCopyWith<_$_ItemPrimitive> get copyWith =>
      __$$_ItemPrimitiveCopyWithImpl<_$_ItemPrimitive>(this, _$identity);
}

abstract class _ItemPrimitive extends ItemPrimitive {
  const factory _ItemPrimitive(
      {required final UniqueId id,
      required final String name,
      required final bool done}) = _$_ItemPrimitive;
  const _ItemPrimitive._() : super._();

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$_ItemPrimitiveCopyWith<_$_ItemPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
