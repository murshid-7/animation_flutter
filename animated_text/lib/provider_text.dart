import 'package:flutter/material.dart';

class ProviderText extends ChangeNotifier {
  bool isRightAligned = false;
  Color textColor = Colors.black;

  void moveText() {
    isRightAligned = !isRightAligned;
    textColor = isRightAligned ? Colors.blue : Colors.red;
    notifyListeners();
  }
}
