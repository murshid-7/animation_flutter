import 'package:flutter/material.dart';

class AnimatedTextProvider extends ChangeNotifier {
  bool isRightAligned = false;
  Color textColor = Colors.black;

  void toggleAnimation() {
    isRightAligned = !isRightAligned;
    textColor = isRightAligned ? Colors.blue : Colors.red;
    notifyListeners();
  }
}
