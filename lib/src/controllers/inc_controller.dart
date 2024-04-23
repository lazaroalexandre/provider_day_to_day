import 'package:flutter/material.dart';

class IncController extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  incrementValue() {
    _value++;
    notifyListeners();
  }
}
