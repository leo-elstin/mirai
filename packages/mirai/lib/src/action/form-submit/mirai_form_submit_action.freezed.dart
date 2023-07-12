// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_form_submit_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiraiFormSubmitAction _$MiraiFormSubmitActionFromJson(
    Map<String, dynamic> json) {
  return _MiraiFormSubmitAction.fromJson(json);
}

/// @nodoc
mixin _$MiraiFormSubmitAction {
  ActionType get actionType => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiraiFormSubmitActionCopyWith<MiraiFormSubmitAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiFormSubmitActionCopyWith<$Res> {
  factory $MiraiFormSubmitActionCopyWith(MiraiFormSubmitAction value,
          $Res Function(MiraiFormSubmitAction) then) =
      _$MiraiFormSubmitActionCopyWithImpl<$Res, MiraiFormSubmitAction>;
  @useResult
  $Res call({ActionType actionType, Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiFormSubmitActionCopyWithImpl<$Res,
        $Val extends MiraiFormSubmitAction>
    implements $MiraiFormSubmitActionCopyWith<$Res> {
  _$MiraiFormSubmitActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MiraiFormSubmitActionCopyWith<$Res>
    implements $MiraiFormSubmitActionCopyWith<$Res> {
  factory _$$_MiraiFormSubmitActionCopyWith(_$_MiraiFormSubmitAction value,
          $Res Function(_$_MiraiFormSubmitAction) then) =
      __$$_MiraiFormSubmitActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionType actionType, Map<String, dynamic>? child});
}

/// @nodoc
class __$$_MiraiFormSubmitActionCopyWithImpl<$Res>
    extends _$MiraiFormSubmitActionCopyWithImpl<$Res, _$_MiraiFormSubmitAction>
    implements _$$_MiraiFormSubmitActionCopyWith<$Res> {
  __$$_MiraiFormSubmitActionCopyWithImpl(_$_MiraiFormSubmitAction _value,
      $Res Function(_$_MiraiFormSubmitAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? child = freezed,
  }) {
    return _then(_$_MiraiFormSubmitAction(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MiraiFormSubmitAction extends _MiraiFormSubmitAction {
  _$_MiraiFormSubmitAction(
      {this.actionType = ActionType.submit, final Map<String, dynamic>? child})
      : _child = child,
        super._();

  factory _$_MiraiFormSubmitAction.fromJson(Map<String, dynamic> json) =>
      _$$_MiraiFormSubmitActionFromJson(json);

  @override
  @JsonKey()
  final ActionType actionType;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MiraiFormSubmitAction(actionType: $actionType, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MiraiFormSubmitAction &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, actionType, const DeepCollectionEquality().hash(_child));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MiraiFormSubmitActionCopyWith<_$_MiraiFormSubmitAction> get copyWith =>
      __$$_MiraiFormSubmitActionCopyWithImpl<_$_MiraiFormSubmitAction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MiraiFormSubmitActionToJson(
      this,
    );
  }
}

abstract class _MiraiFormSubmitAction extends MiraiFormSubmitAction {
  factory _MiraiFormSubmitAction(
      {final ActionType actionType,
      final Map<String, dynamic>? child}) = _$_MiraiFormSubmitAction;
  _MiraiFormSubmitAction._() : super._();

  factory _MiraiFormSubmitAction.fromJson(Map<String, dynamic> json) =
      _$_MiraiFormSubmitAction.fromJson;

  @override
  ActionType get actionType;
  @override
  Map<String, dynamic>? get child;
  @override
  @JsonKey(ignore: true)
  _$$_MiraiFormSubmitActionCopyWith<_$_MiraiFormSubmitAction> get copyWith =>
      throw _privateConstructorUsedError;
}
