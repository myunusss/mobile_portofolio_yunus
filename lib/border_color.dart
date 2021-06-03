import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BorderColor with ChangeNotifier {
  Color _color = Colors.red;

  Color get borderColor => _color;

  void changeColor(Color newColor) {
    _color = newColor;
    notifyListeners();
  }
}