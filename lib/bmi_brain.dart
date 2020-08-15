import 'dart:math';
import 'package:flutter/material.dart';
import 'input_page.dart';

class BmiBrain {
  BmiBrain({@required this.weight, @required this.height, @required this.age});

  final int weight;
  final int height;
  final int age;

  double _bmi;
  double _bmr;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String calculateBmr(Gender selectedGender) {
    double weightLbs = weight * 2.2;
    double heightInch = height / 100 * 39.0;
    if (selectedGender == Gender.male) {
//      13.7516*weight + 5.0033*height - 6.755*age + 66.473
      _bmr = 13.7516 * weight + 5.0033 * height - 6.755 * age + 66.473;
      return _bmr.toStringAsFixed(1);
    } else {
//      =9.5634*weight + 1.8496*height - 4.6756*age + 655.0955
      _bmr = 9.5634 * weight + 1.8496 * height - 4.6756 * age + 655.0955;
      return _bmr.toStringAsFixed(1);
    }
  }
}
