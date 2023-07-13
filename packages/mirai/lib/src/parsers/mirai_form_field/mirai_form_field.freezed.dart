// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiraiFormField _$MiraiFormFieldFromJson(Map<String, dynamic> json) {
  return _MiraiFormField.fromJson(json);
}

/// @nodoc
mixin _$MiraiFormField {
  Map<String, dynamic> get child => throw _privateConstructorUsedError;
  String? get statusKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiraiFormFieldCopyWith<MiraiFormField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiFormFieldCopyWith<$Res> {
  factory $MiraiFormFieldCopyWith(
          MiraiFormField value, $Res Function(MiraiFormField) then) =
      _$MiraiFormFieldCopyWithImpl<$Res, MiraiFormField>;
  @useResult
  $Res call({Map<String, dynamic> child, String? statusKey});
}

/// @nodoc
class _$MiraiFormFieldCopyWithImpl<$Res, $Val extends MiraiFormField>
    implements $MiraiFormFieldCopyWith<$Res> {
  _$MiraiFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? statusKey = freezed,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      statusKey: freezed == statusKey
          ? _value.statusKey
          : statusKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MiraiFormFieldCopyWith<$Res>
    implements $MiraiFormFieldCopyWith<$Res> {
  factory _$$_MiraiFormFieldCopyWith(
          _$_MiraiFormField value, $Res Function(_$_MiraiFormField) then) =
      __$$_MiraiFormFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> child, String? statusKey});
}

/// @nodoc
class __$$_MiraiFormFieldCopyWithImpl<$Res>
    extends _$MiraiFormFieldCopyWithImpl<$Res, _$_MiraiFormField>
    implements _$$_MiraiFormFieldCopyWith<$Res> {
  __$$_MiraiFormFieldCopyWithImpl(
      _$_MiraiFormField _value, $Res Function(_$_MiraiFormField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? statusKey = freezed,
  }) {
    return _then(_$_MiraiFormField(
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      statusKey: freezed == statusKey
          ? _value.statusKey
          : statusKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MiraiFormField implements _MiraiFormField {
  const _$_MiraiFormField(
      {required final Map<String, dynamic> child, this.statusKey})
      : _child = child;

  factory _$_MiraiFormField.fromJson(Map<String, dynamic> json) =>
      _$$_MiraiFormFieldFromJson(json);

  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  final String? statusKey;

  @override
  String toString() {
    return 'MiraiFormField(child: $child, statusKey: $statusKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MiraiFormField &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.statusKey, statusKey) ||
                other.statusKey == statusKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_child), statusKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MiraiFormFieldCopyWith<_$_MiraiFormField> get copyWith =>
      __$$_MiraiFormFieldCopyWithImpl<_$_MiraiFormField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MiraiFormFieldToJson(
      this,
    );
  }
}

abstract class _MiraiFormField implements MiraiFormField {
  const factory _MiraiFormField(
      {required final Map<String, dynamic> child,
      final String? statusKey}) = _$_MiraiFormField;

  factory _MiraiFormField.fromJson(Map<String, dynamic> json) =
      _$_MiraiFormField.fromJson;

  @override
  Map<String, dynamic> get child;
  @override
  String? get statusKey;
  @override
  @JsonKey(ignore: true)
  _$$_MiraiFormFieldCopyWith<_$_MiraiFormField> get copyWith =>
      throw _privateConstructorUsedError;
}
