import 'package:flutter/foundation.dart';

class AbolTabolProvider with ChangeNotifier {
  int count = 2376;

  increase() {
    count++;

    notifyListeners();
  }

  deccrease() {
    count--;

    notifyListeners();
  }
}
