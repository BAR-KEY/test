import 'package:flutter/cupertino.dart';

class CountProvider extends ChangeNotifier {
  // ignore: unused_field
  int _count = 0;
  int get count => _count;

  add() {
    _count++;
    notifyListeners();
  }

  remove() {
    _count--;
    notifyListeners();
  }
}
