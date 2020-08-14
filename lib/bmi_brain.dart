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
//      66+(6.23*weight)+(12.7*height)-(6.8*age)
      _bmr = 66 + (6.23 * weightLbs) + (12.7 * heightInch) - (6.8 * age);
      return _bmr.toStringAsFixed(1);
    } else {
//      655+(4.35*weight)+(4.7*height)-(4.7*age)
      _bmr = 655 + (4.35 * weightLbs) + (4.7 * heightInch) - (4.7 * age);
      return _bmr.toStringAsFixed(1);
    }
  }
}
