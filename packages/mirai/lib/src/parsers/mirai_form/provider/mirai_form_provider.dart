import 'package:flutter/widgets.dart';
import 'package:mirai/src/parsers/mirai_form/provider/mirai_form_state.dart';

class MiraiFormProvider extends InheritedWidget {
  const MiraiFormProvider({
    Key? key,
    required MiraiFormState formState,
    required Widget child,
  })  : _state = formState,
        super(key: key, child: child);

  final MiraiFormState _state;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static MiraiFormState of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<MiraiFormProvider>();
    assert(result != null, 'No FormWidget found in context');

    return result!._state;
  }
}
