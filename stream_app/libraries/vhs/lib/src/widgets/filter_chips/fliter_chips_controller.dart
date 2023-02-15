import 'package:flutter/material.dart';

class FilterChipsController extends ValueNotifier<List<String>> {
  FilterChipsController() : super(["All"]);

  static const String all = "All";

  void add(String selectedValue) {
    if (value.contains(selectedValue)) {
      value.remove(selectedValue);
      if (value.isEmpty) {
        value.add(all);
      }
    } else {
      if (selectedValue == all) {
        value = [];
      } else {
        value.remove(all);
      }
      value.add(selectedValue);
    }
    super.notifyListeners();
  }
}
