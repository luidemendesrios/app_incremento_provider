import 'package:flutter/material.dart';

class IncrementController extends ChangeNotifier {

  late int _number = 0;
  
  int get number => _number;

  incNumber(){
    _number = _number + 1;
    notifyListeners();
  }

  
}
