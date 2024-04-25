import 'package:flutter/material.dart';

class AvatarState with ChangeNotifier {
  int? _selectedAvatarIndex;

  int? get selectedAvatarIndex => _selectedAvatarIndex;

  void selectAvatar(int index) {
    _selectedAvatarIndex = index;
    notifyListeners();
  }
}