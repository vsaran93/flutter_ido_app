import 'package:flutter/material.dart';

class ServiceProvidersListProvider extends ChangeNotifier {
  String headerTitle = '';

  void setTitle(String title) {
    headerTitle = title;
    notifyListeners();
  }

}