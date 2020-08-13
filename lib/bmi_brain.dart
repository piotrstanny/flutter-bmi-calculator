import 'dart:math';
import 'package:flutter/material.dart';

class BmiBrain {
  BmiBrain({@required this.weight, @required this.height});

  final int weight;
  final int height;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
}
