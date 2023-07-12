import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_form/mirai_form.dart';
import 'package:mirai/src/parsers/mirai_form/provider/mirai_form_provider.dart';
import 'package:mirai/src/parsers/mirai_form/provider/mirai_form_state.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiFormParser extends MiraiParser<MiraiForm> {
  const MiraiFormParser();

  @override
  MiraiForm getModel(Map<String, dynamic> json) => MiraiForm.fromJson(json);

  @override
  String get type => WidgetType.form.name;

  @override
  Widget parse(BuildContext context, MiraiForm model) {
    return MiraiFormProvider(
      formState: MiraiFormState(),
      child: _MiraiFormWidget(model: model),
    );
    // return BlocProvider(
    //   create: (_) => MiraiFormCubit().addController(controller),
    //   child: Form(
    //     onChanged: () => model.onChanged??.perform(context),
    //     autovalidateMode: model.autovalidateMode,
    //     child: Builder(
    //       builder: (ctx) {
    //         return Mirai.fromJson(model.child, ctx) ?? const SizedBox();
    //       },
    //     ),
    //   ),
    // );
  }
}

class _MiraiFormWidget extends StatelessWidget {
  const _MiraiFormWidget({
    required this.model,
  });

  final MiraiForm model;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ValueListenableBuilder<Map<String, dynamic>>(
            valueListenable: MiraiFormProvider.of(context).values,
            builder: (context, errors, child) {
              return Mirai.fromJson(model.children[index], context) ??
                  const SizedBox();
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: model.children.length);
  }
}
