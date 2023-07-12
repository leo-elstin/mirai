import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/action/base_action.dart';
import 'package:mirai/src/utils/log.dart';

part 'mirai_form_submit_action.freezed.dart';
part 'mirai_form_submit_action.g.dart';

@freezed
@immutable
class MiraiFormSubmitAction with _$MiraiFormSubmitAction {
  // ignore: unused_element
  const MiraiFormSubmitAction._();

  factory MiraiFormSubmitAction({
    @Default(ActionType.submit) ActionType actionType,
    Map<String, dynamic>? child,
  }) = _MiraiFormSubmitAction;

  factory MiraiFormSubmitAction.fromJson(Map<String, dynamic> json) =>
      _$MiraiFormSubmitActionFromJson(json);

  Future<dynamic> perform(BuildContext context) async {
    Log.d("Testing submit");
    return Future.value(null);
  }
}
