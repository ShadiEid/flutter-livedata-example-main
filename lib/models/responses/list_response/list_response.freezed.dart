// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListResponse<T> _$ListResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ListResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ListResponse<T> {
  int? get total => throw _privateConstructorUsedError;
  List<T?>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListResponseCopyWith<T, ListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListResponseCopyWith<T, $Res> {
  factory $ListResponseCopyWith(
          ListResponse<T> value, $Res Function(ListResponse<T>) then) =
      _$ListResponseCopyWithImpl<T, $Res, ListResponse<T>>;
  @useResult
  $Res call({int? total, List<T?>? list});
}

/// @nodoc
class _$ListResponseCopyWithImpl<T, $Res, $Val extends ListResponse<T>>
    implements $ListResponseCopyWith<T, $Res> {
  _$ListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListResponseCopyWith<T, $Res>
    implements $ListResponseCopyWith<T, $Res> {
  factory _$$_ListResponseCopyWith(
          _$_ListResponse<T> value, $Res Function(_$_ListResponse<T>) then) =
      __$$_ListResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? total, List<T?>? list});
}

/// @nodoc
class __$$_ListResponseCopyWithImpl<T, $Res>
    extends _$ListResponseCopyWithImpl<T, $Res, _$_ListResponse<T>>
    implements _$$_ListResponseCopyWith<T, $Res> {
  __$$_ListResponseCopyWithImpl(
      _$_ListResponse<T> _value, $Res Function(_$_ListResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_ListResponse<T>(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_ListResponse<T> implements _ListResponse<T> {
  const _$_ListResponse({this.total, final List<T?>? list}) : _list = list;

  factory _$_ListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ListResponseFromJson(json, fromJsonT);

  @override
  final int? total;
  final List<T?>? _list;
  @override
  List<T?>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListResponse<$T>(total: $total, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListResponse<T> &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListResponseCopyWith<T, _$_ListResponse<T>> get copyWith =>
      __$$_ListResponseCopyWithImpl<T, _$_ListResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_ListResponseToJson<T>(this, toJsonT);
  }
}

abstract class _ListResponse<T> implements ListResponse<T> {
  const factory _ListResponse({final int? total, final List<T?>? list}) =
      _$_ListResponse<T>;

  factory _ListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_ListResponse<T>.fromJson;

  @override
  int? get total;
  @override
  List<T?>? get list;
  @override
  @JsonKey(ignore: true)
  _$$_ListResponseCopyWith<T, _$_ListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
