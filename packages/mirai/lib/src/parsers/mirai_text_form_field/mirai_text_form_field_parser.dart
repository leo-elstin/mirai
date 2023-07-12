import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_edge_insets/mirai_edge_insets.dart';
import 'package:mirai/src/parsers/mirai_form/provider/mirai_form_provider.dart';
import 'package:mirai/src/parsers/mirai_form_field_validator/mirai_form_validator.dart';
import 'package:mirai/src/parsers/mirai_input_decoration/mirai_input_decoration.dart';
import 'package:mirai/src/parsers/mirai_input_formatters/mirai_input_formatter.dart';
import 'package:mirai/src/parsers/mirai_text_form_field/mirai_text_form_field.dart';
import 'package:mirai/src/parsers/mirai_text_style/mirai_text_style.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/input_validations.dart';
import 'package:mirai/src/utils/widget_type.dart';

typedef MiraiWidgetBuilder = Widget Function(
  BuildContext context,
  TextEditingController controller,
  String? error,
  Widget? child,
);

class MiraiTextFormFieldParser extends MiraiParser<MiraiTextFormField> {
  const MiraiTextFormFieldParser(
      // this.controller,
      // this.focusNode,

      );

  // final TextEditingController? controller;
  // final FocusNode? focusNode;

  @override
  MiraiTextFormField getModel(Map<String, dynamic> json) =>
      MiraiTextFormField.fromJson(json);

  @override
  String get type => WidgetType.textFormField.name;

  @override
  Widget parse(BuildContext context, MiraiTextFormField model) {
    return _TextFormFieldWidget(
      model: model,
    );
  }
}

class _TextFormFieldWidget extends StatefulWidget {
  const _TextFormFieldWidget({
    required this.model,
  });

  final MiraiTextFormField model;

  @override
  State<_TextFormFieldWidget> createState() => __TextFormFieldWidgetState();
}

class __TextFormFieldWidgetState extends State<_TextFormFieldWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    Future.microtask(() {
      final lsdFormData = MiraiFormProvider.of(context);
      lsdFormData.register(
        widget.model.key,
        null,
      );

      if (lsdFormData.values.value[widget.model.key] == null) {
        _controller.text = "";
        return;
      }

      if (lsdFormData.values.value[widget.model.key] is String) {
        _controller.text = lsdFormData.values.value[widget.model.key] as String;
      }

      if (lsdFormData.values.value[widget.model.key] is num) {
        _controller.text =
            (lsdFormData.values.value[widget.model.key] as num).toString();
      }
    });

    _controller.addListener(_onChanged);

    super.initState();
  }

  _onChanged() {
    MiraiFormProvider.of(context).setValue(widget.model.key, _controller.text);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: (value) {
        MiraiFormProvider.of(context).setValue(widget.model.key, value);
      },
      // focusNode: focusNode,
      initialValue: widget.model.initialValue,
      keyboardType: widget.model.keyboardType?.value,
      textInputAction: widget.model.textInputAction,
      textCapitalization: widget.model.textCapitalization,
      textAlign: widget.model.textAlign,
      textAlignVertical: widget.model.textAlignVertical?.value,
      textDirection: widget.model.textDirection,
      readOnly: widget.model.readOnly,
      showCursor: widget.model.showCursor,
      autofocus: widget.model.autofocus,
      autovalidateMode: widget.model.autovalidateMode,
      obscuringCharacter: widget.model.obscuringCharacter,
      maxLines: widget.model.maxLines,
      minLines: widget.model.minLines,
      maxLength: widget.model.maxLength,
      obscureText: widget.model.obscureText,
      autocorrect: widget.model.autocorrect,
      smartDashesType: widget.model.smartDashesType,
      smartQuotesType: widget.model.smartQuotesType,
      maxLengthEnforcement: widget.model.maxLengthEnforcement,
      expands: widget.model.expands,
      keyboardAppearance: widget.model.keyboardAppearance,
      scrollPadding: widget.model.scrollPadding.parse,
      restorationId: widget.model.restorationId,
      enableIMEPersonalizedLearning: widget.model.enableIMEPersonalizedLearning,
      enableSuggestions: widget.model.enableSuggestions,
      enabled: widget.model.enabled,
      cursorWidth: widget.model.cursorWidth,
      cursorHeight: widget.model.cursorHeight,
      cursorColor: widget.model.cursorColor?.toColor,
      style: widget.model.style?.parse,
      decoration: widget.model.decoration.parse(context),
      inputFormatters: widget.model.inputFormatters
          .map((MiraiInputFormatter formatter) =>
              formatter.type.format(formatter.rule ?? ""))
          .toList(),
      validator: (value) {
        if (value != null && widget.model.validatorRules.isNotEmpty) {
          for (MiraiFormFieldValidator validator
              in widget.model.validatorRules) {
            try {
              InputValidationType? validationType = InputValidationType.values
                  .firstWhere((e) => e.name == validator.rule);

              if (!validationType.validate(value, validator.rule)) {
                return validator.message;
              }
            } catch (_) {
              if (!InputValidationType.general
                  .validate(value, validator.rule)) {
                return validator.message;
              }
            }
          }
        }

        return null;
      },
    );
  }
}
