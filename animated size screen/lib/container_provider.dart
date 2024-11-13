import 'package:flutter/material.dart';

class ContainerProvider extends ChangeNotifier {
  bool isExpanded = false;


  void toggleSize() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
