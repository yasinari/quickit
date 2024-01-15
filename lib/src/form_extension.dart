// ignore_for_file: unnecessary_this, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

extension FormExtension on GlobalKey<FormBuilderState> {
  bool formIsNotNullOrEmpty(String? name) => _checkForm(name);
  String? getFormValue(String? name) => _getFormStringValue(name);
  void setFormValue(String? name, dynamic value) => _setFormValue(name, value);

  String? _getFormStringValue(String? name) {
    if (this != null && name != null) {
      if (this.currentState?.fields[name]?.value != null &&
          this.currentState?.fields[name]?.value != "") {
        return this.currentState?.fields[name]?.value.toString();
      } else if (this.currentState?.value[name] != null &&
          this.currentState?.value[name] != "") {
        return this.currentState?.value[name].toString();
      }
    }
    return null;
  }

  bool _checkForm(String? name) {
    if (this != null && name != null) {
      if ((this.currentState?.fields[name]?.value != null) &&
          (this.currentState?.fields[name]?.value != "")) {
        return true;
      } else if ((this.currentState?.value[name] != null) &&
          (this.currentState?.value[name] != "")) {
        return true;
      }
    } else {
      return false;
    }
    return false;
  }

  void _setFormValue(String? name, dynamic value) {
    if (this != null && name != null) {
      this.currentState?.fields[name]?.didChange(value);
    }
  }
}
