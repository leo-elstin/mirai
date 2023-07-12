// part 'base_action.freezed.dart';
// part 'base_action.g.dart';

enum ActionType { navigate, request, none, submit }

// @freezed
// @immutable
// class BaseAction {
//   const factory BaseAction({
//     @Default(ActionType.none) ActionType actionType,
//   }) = _BaseAction;

//   factory BaseAction.fromJson(Map<String, dynamic> json) =>
//       _$BaseActionFromJson(json);

//   Future<dynamic> perform(BuildContext context) {
//     throw UnimplementedError();
//   }
// }
