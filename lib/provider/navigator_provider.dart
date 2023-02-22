import 'package:flutter/material.dart';

import '../components/page1.dart';
import '../components/page2.dart';

class NavigatorPriovider with ChangeNotifier {
  List<Widget> pages = [
    const Page1(),
    const Page2(),
  ];

  int _indexPage = 0;

  int get indexPage => _indexPage;

  set indexPage(int value) {
    _indexPage = value;
    notifyListeners();
  }
}
