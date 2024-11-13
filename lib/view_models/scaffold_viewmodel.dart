import 'package:flutter/material.dart';

class ScaffoldViewModel extends ChangeNotifier {
  String _title = "Home";
  int _counter = 0;

  String get title => _title;
  int get counter => _counter;

  void updateTitle(String newTitle) {
    _title = newTitle;
    notifyListeners();
  }

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
