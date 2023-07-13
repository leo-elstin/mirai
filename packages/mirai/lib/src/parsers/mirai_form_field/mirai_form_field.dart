import 'package:freezed_annotation/freezed_annotation.dart';

part 'mirai_form_field.freezed.dart';
part 'mirai_form_field.g.dart';

@freezed
class MiraiFormField with _$MiraiFormField {
  const factory MiraiFormField({
    required Map<String, dynamic> child,
    String? statusKey,
  }) = _MiraiFormField;

  factory MiraiFormField.fromJson(Map<String, dynamic> json) =>
      _$MiraiFormFieldFromJson(json);
}
