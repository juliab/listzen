// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Checklist {
  UniqueId get id => throw _privateConstructorUsedError;
  ChecklistName get name => throw _privateConstructorUsedError;
  ChecklistColor get color => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChecklistCopyWith<Checklist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistCopyWith<$Res> {
  factory $ChecklistCopyWith(Checklist value, $Res Function(Checklist) then) =
      _$ChecklistCopyWithImpl<$Res, Checklist>;
  @useResult
  $Res call(
      {UniqueId id,
      ChecklistName name,
      ChecklistColor color,
      List<Item> items});
}

/// @nodoc
class _$ChecklistCopyWithImpl<$Res, $Val extends Checklist>
    implements $ChecklistCopyWith<$Res> {
  _$ChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChecklistName,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ChecklistColor,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckListImplCopyWith<$Res>
    implements $ChecklistCopyWith<$Res> {
  factory _$$CheckListImplCopyWith(
          _$CheckListImpl value, $Res Function(_$CheckListImpl) then) =
      __$$CheckListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      ChecklistName name,
      ChecklistColor color,
      List<Item> items});
}

/// @nodoc
class __$$CheckListImplCopyWithImpl<$Res>
    extends _$ChecklistCopyWithImpl<$Res, _$CheckListImpl>
    implements _$$CheckListImplCopyWith<$Res> {
  __$$CheckListImplCopyWithImpl(
      _$CheckListImpl _value, $Res Function(_$CheckListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? items = null,
  }) {
    return _then(_$CheckListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ChecklistName,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ChecklistColor,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$CheckListImpl extends _CheckList {
  const _$CheckListImpl(
      {required this.id,
      required this.name,
      required this.color,
      required final List<Item> items})
      : _items = items,
        super._();

  @override
  final UniqueId id;
  @override
  final ChecklistName name;
  @override
  final ChecklistColor color;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Checklist(id: $id, name: $name, color: $color, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, color,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckListImplCopyWith<_$CheckListImpl> get copyWith =>
      __$$CheckListImplCopyWithImpl<_$CheckListImpl>(this, _$identity);
}

abstract class _CheckList extends Checklist {
  const factory _CheckList(
      {required final UniqueId id,
      required final ChecklistName name,
      required final ChecklistColor color,
      required final List<Item> items}) = _$CheckListImpl;
  const _CheckList._() : super._();

  @override
  UniqueId get id;
  @override
  ChecklistName get name;
  @override
  ChecklistColor get color;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$CheckListImplCopyWith<_$CheckListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
