import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  Color inititialColor = Colors.yellow;
  bool favoriteTapped = false;

  //Function to change initialColor
  void changeColor() {
    if (inititialColor == Colors.yellow) {
      inititialColor = Colors.red;
    } else if (inititialColor == Colors.red) {
      inititialColor = Colors.yellow;
    }
    notifyListeners();
  }

  void tap() {
    favoriteTapped = !favoriteTapped;
    notifyListeners();
  }
}
