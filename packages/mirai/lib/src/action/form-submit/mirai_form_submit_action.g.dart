// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_form_submit_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiraiFormSubmitAction _$$_MiraiFormSubmitActionFromJson(
        Map<String, dynamic> json) =>
    _$_MiraiFormSubmitAction(
      actionType:
          $enumDecodeNullable(_$ActionTypeEnumMap, json['actionType']) ??
              ActionType.submit,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_MiraiFormSubmitActionToJson(
        _$_MiraiFormSubmitAction instance) =>
    <String, dynamic>{
      'actionType': _$ActionTypeEnumMap[instance.actionType]!,
      'child': instance.child,
    };

const _$ActionTypeEnumMap = {
  ActionType.navigate: 'navigate',
  ActionType.request: 'request',
  ActionType.none: 'none',
  ActionType.submit: 'submit',
};
