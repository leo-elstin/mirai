import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/action/base_action.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/navigation/mirai_navigator.dart';
import 'package:mirai/src/network/mirai_network.dart';
import 'package:mirai/src/network/mirai_request.dart';

part 'mirai_action.freezed.dart';
part 'mirai_action.g.dart';

@freezed
@immutable
class MiraiAction with _$MiraiAction {
  const MiraiAction._();

  const factory MiraiAction({
    @Default(ActionType.none) ActionType actionType,
    MiraiRequest? request,
    Map<String, dynamic>? widgetJson,
    String? assetPath,
    String? routeName,
    NavigationType? navigationType,
    NavigationStyle? navigationStyle,
    Map<String, dynamic>? result,
    Map<String, dynamic>? arguments,
  }) = _MiraiAction;

  factory MiraiAction.fromJson(Map<String, dynamic> json) =>
      _$MiraiActionFromJson(json);

  Future<dynamic> perform(BuildContext context) async {
    switch (actionType) {
      case ActionType.navigate:
        Widget? widget;
        if (widgetJson != null) {
          widget = Mirai.fromJson(widgetJson, context);

          if (widget != null) {
            return MiraiNavigator.navigate(
              context: context,
              navigationType: navigationType ?? NavigationType.screen,
              navigationStyle: navigationStyle ?? NavigationStyle.push,
              widget: widget,
            );
          }
        } else if (request != null) {
          widget = Mirai.fromNetwork(request!);

          return MiraiNavigator.navigate(
            context: context,
            navigationType: navigationType ?? NavigationType.screen,
            navigationStyle: navigationStyle ?? NavigationStyle.push,
            widget: widget,
          );
        } else if (assetPath != null) {
          widget = await Mirai.fromAssets(assetPath!, context);

          if (context.mounted && widget != null) {
            return MiraiNavigator.navigate(
              context: context,
              navigationType: navigationType ?? NavigationType.screen,
              navigationStyle: navigationStyle ?? NavigationStyle.push,
              widget: widget,
            );
          }
        }

        break;

      case ActionType.request:
        return MiraiNetwork.request(request!);
      case ActionType.none:
        break;
      // case ActionType.formValidation:
      //   if (Form.of(context).validate()) {
      //     try {
      //       final controllers =
      //           context.read<MiraiFormCubit>().state.controllers;
      //       for (var controller in controllers.keys) {
      //         Log.d(
      //             "For key : $controller  Value : ${controllers[controller]?.value.text}");
      //       }
      //     } catch (e) {
      //       Log.e(e);
      //     }
      //   }

      //   break;

      default:
        break;
    }

    return null;
  }
}
