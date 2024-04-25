import 'package:flutter/foundation.dart';

class CounterModel with ChangeNotifier {
  List<int> _itemCounts = List.filled(3, 0); 

  int getCount(int index) => _itemCounts[index];

  void increment(int index) {
    _itemCounts[index]++;
    notifyListeners();
  }

  void decrement(int index) {
    if (_itemCounts[index] > 0) {
      _itemCounts[index]--;
      notifyListeners();
    }
  }
}
