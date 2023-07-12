

// class BasicAction {
//   const BasicAction();

//   BasicAction fromJson(Map<String, dynamic> props) {
//     return this;
//   }

//   Future<dynamic> perform(BuildContext context, dynamic params) {
//     throw UnimplementedError();
//   }
// }

// abstract class MiraiActionParser<T> {
//   const MiraiActionParser();

//   T getModel(Map<String, dynamic> json);
// }

// class MiraiBasicActionParser extends MiraiActionParser<MiraiAction> {
//   const MiraiBasicActionParser();

//   @override
//   MiraiAction getModel(Map<String, dynamic> json) => MiraiAction.fromJson(json);

//   static Future<dynamic> perform(
//       BuildContext context, MiraiAction model) async {
//     switch (model.actionType) {
//       case ActionType.navigate:
//         Widget? widget;
//         if (model.widgetJson != null) {
//           widget = Mirai.fromJson(model.widgetJson, context);

//           if (widget != null) {
//             return MiraiNavigator.navigate(
//               context: context,
//               navigationType: model.navigationType ?? NavigationType.screen,
//               navigationStyle: model.navigationStyle ?? NavigationStyle.push,
//               widget: widget,
//               result: model.result,
//               arguments: model.arguments,
//             );
//           }
//         } else if (model.request != null) {
//           widget = Mirai.fromNetwork(model.request!);

//           return MiraiNavigator.navigate(
//             context: context,
//             navigationType: model.navigationType ?? NavigationType.screen,
//             navigationStyle: model.navigationStyle ?? NavigationStyle.push,
//             widget: widget,
//             result: model.result,
//             arguments: model.arguments,
//           );
//         } else if (model.assetPath != null) {
//           widget = await Mirai.fromAssets(model.assetPath!, context);

//           if (context.mounted && widget != null) {
//             return MiraiNavigator.navigate(
//               context: context,
//               navigationType: model.navigationType ?? NavigationType.screen,
//               navigationStyle: model.navigationStyle ?? NavigationStyle.push,
//               widget: widget,
//               result: model.result,
//               arguments: model.arguments,
//             );
//           }
//         } else {
//           if (context.mounted) {
//             return MiraiNavigator.navigate(
//               context: context,
//               navigationType: model.navigationType ?? NavigationType.screen,
//               navigationStyle: model.navigationStyle ?? NavigationStyle.push,
//               routeName: model.routeName,
//               result: model.result,
//               arguments: model.arguments,
//             );
//           }
//         }

//         break;

//       case ActionType.request:
//         return MiraiNetwork.request(model.request!);
//       case ActionType.none:
//         break;
//       // case ActionType.formValidation:
//       // if (Form.of(context).validate()) {
//       //   try {
//       //     final controllers =
//       //         context.read<MiraiFormCubit>().state.controllers;
//       //     for (var controller in controllers.keys) {
//       //       Log.d(
//       //           "For key : $controller  Value : ${controllers[controller]?.value.text}");
//       //     }
//       //   } catch (e) {
//       //     Log.e(e);
//       //   }
//       // }

//       // break;

//       default:
//         break;
//     }

//     return null;
//   }

// }
// extension MiraiActionParser on MiraiAction? {
//   Future<dynamic>? onCall(BuildContext context) async {
//     if (this != null) {
//       switch (this?.actionType ?? ActionType.none) {
//         case ActionType.navigate:
//           Widget? widget;
//           if (this!.widgetJson != null) {
//             widget = Mirai.fromJson(this!.widgetJson, context);

//             if (widget != null) {
//               return MiraiNavigator.navigate(
//                 context: context,
//                 navigationType: this?.navigationType ?? NavigationType.screen,
//                 navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
//                 widget: widget,
//               );
//             }
//           } else if (this?.request != null) {
//             widget = Mirai.fromNetwork(this!.request!);

//             return MiraiNavigator.navigate(
//               context: context,
//               navigationType: this?.navigationType ?? NavigationType.screen,
//               navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
//               widget: widget,
//             );
//           } else if (this?.assetPath != null) {
//             widget = await Mirai.fromAssets(this!.assetPath!, context);

//             if (context.mounted && widget != null) {
//               return MiraiNavigator.navigate(
//                 context: context,
//                 navigationType: this?.navigationType ?? NavigationType.screen,
//                 navigationStyle: this?.navigationStyle ?? NavigationStyle.push,
//                 widget: widget,
//               );
//             }
//           }

//           break;

//         case ActionType.request:
//           return MiraiNetwork.request(this!.request!);
//         case ActionType.none:
//           break;
//         case ActionType.formValidation:
//           if (Form.of(context).validate()) {
//             try {
//               final controllers =
//                   context.read<MiraiFormCubit>().state.controllers;
//               for (var controller in controllers.keys) {
//                 Log.d(
//                     "For key : $controller  Value : ${controllers[controller]?.value.text}");
//               }
//             } catch (e) {
//               Log.e(e);
//             }
//           }

//           break;

//         default:
//           break;
//       }
//     }
//     return null;
//   }
// }
