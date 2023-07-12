import 'package:flutter/widgets.dart';

class MiraiFormState {
  MiraiFormState();

  ValueNotifier<Map<String, dynamic>> values = ValueNotifier({});
  ValueNotifier<bool> submitting = ValueNotifier(false);

  void setSubmitting(bool status) {
    submitting.value = status;
  }

  void register(
    String name,
    dynamic initialValue,
  ) {
    if (!values.value.containsKey(name)) {
      values.value[name] = initialValue;
    }
  }

  void unregister(String name) {
    if (values.value.containsKey(name)) {
      values.value.remove(name);
    }
  }

  void setValue(String key, dynamic value) {
    values.value[key] = value;
  }

  bool get formFilled {
    final enteries = values.value.entries.toList();
    for (var i = 0; i < enteries.length; i++) {
      if (enteries[i].value == null) {
        return false;
      }
    }
    return true;
  }
}
