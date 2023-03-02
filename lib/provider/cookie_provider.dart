import 'package:flutter/material.dart';

class CookieProvider extends ChangeNotifier {
  int _cookieCounter = 5;
  int get cookieCounter => _cookieCounter;

  int _cookieCounterIncrement = 1;
  int get cookieCounterIncrement => _cookieCounterIncrement;

  void cookieUpgrade(int incrementLevel) {
    _cookieCounterIncrement += incrementLevel;
    notifyListeners();
  }

  void cookieCounterIncrementFunction(int counterIncrement) {
    _cookieCounter += counterIncrement;
    print(cookieCounter);

    notifyListeners();
  }
}
