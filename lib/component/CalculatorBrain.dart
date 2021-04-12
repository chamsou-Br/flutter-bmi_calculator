import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {this.heightCalculator, this.widthCalculator, this.ageCalculator});
  int heightCalculator;
  int widthCalculator;
  int ageCalculator;
  double _bmi;

  String calculateTaille() {
    print(heightCalculator);
    print(widthCalculator);
    _bmi = widthCalculator / pow(heightCalculator * 0.01, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OverWight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getMark() {
    if (_bmi > 25) {
      return 'you have a heigher than normal body weight , try to exercice more';
    } else if (_bmi > 18.5) {
      return 'You have a normal  body weight , Good job';
    } else {
      return 'you have a lower than normal body weight , You can eat a bit more';
    }
  }
}
