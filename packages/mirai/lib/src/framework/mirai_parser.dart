import 'package:flutter/cupertino.dart';

abstract class MiraiParser<T> {
  MiraiParser({this.callback});

  String get type;

  T getModel(Map<String, dynamic> json);

  Widget parse(BuildContext context, T model);
  Function(dynamic data)? callback;

  //  Function( T data) onAction;
}
