import 'package:flutter/material.dart';

class TestProvider with ChangeNotifier {
  int _num = 0;

  int get num => _num;

  set num(int value) {
    _num = value;
    notifyListeners();
  }

  void sum() {
    _num = 50;
    notifyListeners();
  }
}
