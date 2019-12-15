import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AplicationColor with ChangeNotifier {
  bool _isMerah = true;
  bool get isMerah => _isMerah;
  set isMerah(bool value) {
    _isMerah = value;
    notifyListeners();
  }

  Color get color => (_isMerah) ? Colors.red : Colors.blue[900];
}
